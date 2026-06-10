#!/usr/bin/env python3
import sys
import os
import uuid
import struct
import subprocess
import hivex

def uuid_to_bin(uuid_str):
    u = uuid.UUID(uuid_str)
    b = bytearray(16)
    # Pack Data1, Data2, Data3 as little-endian
    b[0:4] = u.time_low.to_bytes(4, 'little')
    b[4:6] = u.time_mid.to_bytes(2, 'little')
    b[6:8] = u.time_hi_version.to_bytes(2, 'little')
    # Pack Data4 as big-endian
    b[8:16] = u.bytes[8:16]
    return bytes(b)

def get_part_info(device):
    # Runs blkid and inspects sysfs to get GPT GUIDs or MBR signatures/offsets
    # Returns (is_gpt, disk_sig_bin, part_sig_bin, offset_bytes)
    name = os.path.basename(device)
    
    # Read start sector from sysfs
    start_sector = 0
    start_path = f"/sys/class/block/{name}/start"
    if os.path.exists(start_path):
        with open(start_path, "r") as f:
            start_sector = int(f.read().strip())
    offset_bytes = start_sector * 512

    # Get PARTUUID of the partition
    try:
        partuuid = subprocess.check_output(["blkid", "-o", "value", "-s", "PARTUUID", device]).decode().strip()
    except Exception:
        partuuid = ""

    # Check if GPT or MBR by uuid length
    if len(partuuid) == 36:
        # GPT
        # Determine disk parent name (e.g. sda1 -> sda, nvme0n1p1 -> nvme0n1)
        parent_name = name
        if os.path.exists(f"/sys/class/block/{name}/partition"):
            parent_path = os.path.realpath(f"/sys/class/block/{name}")
            parent_name = os.path.basename(os.path.dirname(parent_path))
        
        disk_device = f"/dev/{parent_name}"
        try:
            ptuuid = subprocess.check_output(["blkid", "-o", "value", "-s", "PTUUID", disk_device]).decode().strip()
        except Exception:
            ptuuid = ""
        
        return True, uuid_to_bin(ptuuid), uuid_to_bin(partuuid), 0
    else:
        # MBR: partuuid is like "12345678-01"
        if "-" in partuuid:
            disk_sig_hex = partuuid.split("-")[0]
        else:
            disk_sig_hex = "00000000"
        disk_sig_val = int(disk_sig_hex, 16)
        disk_sig_bin = struct.pack("<I", disk_sig_val)
        return False, disk_sig_bin, None, offset_bytes

def build_gpt_device_element(disk_guid_bin, part_guid_bin):
    # 76-byte BCD partition device element structure
    b = bytearray(76)
    b[0:4] = struct.pack("<I", 6)  # Partition device type = 6
    b[32:48] = disk_guid_bin       # Disk GUID
    b[48:64] = part_guid_bin       # Partition GUID
    return bytes(b)

def build_mbr_device_element(disk_sig_bin, offset_bytes):
    # 32-byte BCD partition device element structure
    b = bytearray(32)
    b[0:4] = struct.pack("<I", 6)  # Partition device type = 6
    b[16:20] = disk_sig_bin        # Disk signature (4 bytes)
    b[24:32] = struct.pack("<Q", offset_bytes)  # Start offset in bytes (8 bytes)
    return bytes(b)

def set_binary_element(hive, node, data):
    # python3-hivex expects the registry value type under the key "t".
    # Some bindings/documentation examples use "type", so keep a fallback.
    value = {"key": "Element", "t": 3, "value": data}
    try:
        hive.node_set_value(node, value)
    except KeyError as err:
        if "type" not in str(err):
            raise
        hive.node_set_value(node, {"key": "Element", "type": 3, "value": data})

def patch_bcd(bcd_path, esp_device, windows_device):
    print(f"Reading ESP device: {esp_device}")
    esp_is_gpt, esp_disk_sig, esp_part_sig, esp_offset = get_part_info(esp_device)
    print(f"Reading Windows device: {windows_device}")
    win_is_gpt, win_disk_sig, win_part_sig, win_offset = get_part_info(windows_device)

    if esp_is_gpt:
        print(f"ESP is GPT. PTUUID: {esp_disk_sig.hex()} PARTUUID: {esp_part_sig.hex()}")
        esp_element_bin = build_gpt_device_element(esp_disk_sig, esp_part_sig)
    else:
        print(f"ESP is MBR. Disk Signature: {esp_disk_sig.hex()} Offset: {esp_offset} bytes")
        esp_element_bin = build_mbr_device_element(esp_disk_sig, esp_offset)

    if win_is_gpt:
        print(f"Windows partition is GPT. PTUUID: {win_disk_sig.hex()} PARTUUID: {win_part_sig.hex()}")
        win_element_bin = build_gpt_device_element(win_disk_sig, win_part_sig)
    else:
        print(f"Windows partition is MBR. Disk Signature: {win_disk_sig.hex()} Offset: {win_offset} bytes")
        win_element_bin = build_mbr_device_element(win_disk_sig, win_offset)

    if not os.path.exists(bcd_path):
        print(f"Error: BCD file not found at {bcd_path}")
        return False

    # Open BCD hive
    h = hivex.Hivex(bcd_path, write=True)
    root = h.root()
    
    objects_node = None
    for child in h.node_children(root):
        if h.node_name(child).lower() == "objects":
            objects_node = child
            break

    if not objects_node:
        print("Error: Objects subkey not found in BCD")
        return False

    for obj in h.node_children(objects_node):
        obj_name = h.node_name(obj)
        elements_node = None
        for child in h.node_children(obj):
            if h.node_name(child).lower() == "elements":
                elements_node = child
                break
        
        if not elements_node:
            continue

        # Check if the element contains a path indicating bootmgr or winload
        is_bootmgr = False
        path_node = None
        for child in h.node_children(elements_node):
            if h.node_name(child) == "22000002":  # BCD Path Element key
                path_node = child
                break

        if path_node:
            val = h.node_get_value(path_node, "Element")
            if val:
                _, val_data = h.value_value(val)
                try:
                    path_str = val_data.decode("utf-16le").lower()
                except Exception:
                    path_str = ""
                if "bootmgfw" in path_str or "bootmgr" in path_str:
                    is_bootmgr = True

        # Check standard Bootmgr GUID
        if obj_name.lower() == "{9dea862c-5cdd-4e70-acc1-f32b344d4795}":
            is_bootmgr = True

        # Update Device (11000001) and OSDevice (21000001) values
        for el in h.node_children(elements_node):
            el_name = h.node_name(el)
            if el_name in ["11000001", "21000001"]:
                element_data = esp_element_bin if is_bootmgr else win_element_bin
                print(f"Patching {obj_name}/Elements/{el_name} -> {'ESP' if is_bootmgr else 'Windows'}")
                set_binary_element(h, el, element_data)

    h.commit(None)
    print("BCD patched successfully!")
    return True

if __name__ == "__main__":
    if len(sys.argv) < 4:
        print("Usage: patch_bcd.py <bcd_path> <esp_device> <windows_device>")
        sys.exit(1)
        
    bcd = sys.argv[1]
    esp = sys.argv[2]
    win = sys.argv[3]
    
    success = patch_bcd(bcd, esp, win)
    sys.exit(0 if success else 1)
