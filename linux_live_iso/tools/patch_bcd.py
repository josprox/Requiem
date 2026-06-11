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

def read_u32(data, offset):
    if len(data) < offset + 4:
        raise ValueError("BCD device packet is truncated")
    return struct.unpack("<I", data[offset:offset + 4])[0]

def write_partition_payload(data, offset, is_gpt, disk_sig, part_sig, offset_bytes):
    if len(data) < offset + 0x38:
        raise ValueError("BCD partition payload is truncated")

    if is_gpt:
        data[offset:offset + 0x10] = part_sig
        data[offset + 0x10:offset + 0x14] = b"\x00" * 4
        data[offset + 0x14:offset + 0x18] = struct.pack("<I", 0)
        data[offset + 0x18:offset + 0x28] = disk_sig
    else:
        data[offset:offset + 0x10] = struct.pack("<Q", offset_bytes) + (b"\x00" * 8)
        data[offset + 0x10:offset + 0x14] = b"\x00" * 4
        data[offset + 0x14:offset + 0x18] = struct.pack("<I", 1)
        data[offset + 0x18:offset + 0x28] = disk_sig + (b"\x00" * 12)

    data[offset + 0x28:offset + 0x38] = b"\x00" * 0x10

def patch_partition_packet(raw, is_gpt, disk_sig, part_sig, offset_bytes):
    data = bytearray(raw)
    if len(data) < 0x20:
        return None, "device element is too short"

    packet_offset = 0x10
    packet_type = read_u32(data, packet_offset)
    packet_flags = read_u32(data, packet_offset + 4)
    packet_size = read_u32(data, packet_offset + 8)

    if packet_type == 5:
        return data, "left as [boot] device"

    if packet_type == 6:
        write_partition_payload(
            data,
            packet_offset + 0x10,
            is_gpt,
            disk_sig,
            part_sig,
            offset_bytes,
        )
        return data, "patched partition device"

    if packet_type == 0 and packet_flags != 0:
        return data, "skipped ramdisk device"

    if packet_type == 0 and packet_size <= len(data) - packet_offset:
        # File devices can wrap another device. Only patch the nested partition
        # when it is present and leave paths intact.
        nested_offset = packet_offset + 0x10
        nested_type = read_u32(data, nested_offset)
        if nested_type == 6:
            write_partition_payload(
                data,
                nested_offset + 0x10,
                is_gpt,
                disk_sig,
                part_sig,
                offset_bytes,
            )
            return data, "patched nested partition device"

    return None, f"unsupported device packet type {packet_type}"

def get_element_data(hive, elements_node, element_name):
    for child in hive.node_children(elements_node):
        if hive.node_name(child) == element_name:
            val = hive.node_get_value(child, "Element")
            if val:
                _, val_data = hive.value_value(val)
                return child, val_data
    return None, None

def has_element(hive, elements_node, element_name):
    node, _ = get_element_data(hive, elements_node, element_name)
    return node is not None

def read_utf16le_text(raw):
    try:
        return raw.decode("utf-16le", errors="ignore").replace("\x00", "").lower()
    except Exception:
        return ""

def should_patch_object(hive, obj_name, elements_node):
    if obj_name.lower() == "{9dea862c-5cdd-4e70-acc1-f32b344d4795}":
        return True, "boot manager"

    _, description = get_element_data(hive, elements_node, "12000004")
    description_text = read_utf16le_text(description or b"")

    # 12000002 is the boot application path, e.g. \Windows\system32\winload.exe.
    # 22000002 is usually systemroot, e.g. \Windows.
    _, path = get_element_data(hive, elements_node, "12000002")
    path_text = read_utf16le_text(path or b"")
    _, systemroot = get_element_data(hive, elements_node, "22000002")
    systemroot_text = read_utf16le_text(systemroot or b"")

    combined_text = " ".join([description_text, path_text, systemroot_text])
    if (
        "recovery" in combined_text
        or "recuper" in combined_text
        or "winre" in combined_text
    ):
        return False, "recovery entry"

    if "winresume" in path_text:
        return False, "resume entry"
    if "memtest" in path_text:
        return False, "memory diagnostics entry"
    if "winload" in path_text:
        return True, "windows loader"

    has_device = has_element(hive, elements_node, "11000001")
    has_osdevice = has_element(hive, elements_node, "21000001")
    if has_device and has_osdevice:
        if "windows" in combined_text:
            return True, "windows loader candidate"
        return True, "loader candidate with device/osdevice"

    return False, "non-boot entry"

def patch_bcd(bcd_path, esp_device, windows_device):
    print(f"Reading ESP device: {esp_device}")
    esp_is_gpt, esp_disk_sig, esp_part_sig, esp_offset = get_part_info(esp_device)
    print(f"Reading Windows device: {windows_device}")
    win_is_gpt, win_disk_sig, win_part_sig, win_offset = get_part_info(windows_device)

    if esp_is_gpt:
        print(f"ESP is GPT. PTUUID: {esp_disk_sig.hex()} PARTUUID: {esp_part_sig.hex()}")
    else:
        print(f"ESP is MBR. Disk Signature: {esp_disk_sig.hex()} Offset: {esp_offset} bytes")

    if win_is_gpt:
        print(f"Windows partition is GPT. PTUUID: {win_disk_sig.hex()} PARTUUID: {win_part_sig.hex()}")
    else:
        print(f"Windows partition is MBR. Disk Signature: {win_disk_sig.hex()} Offset: {win_offset} bytes")

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

    patched_windows_values = 0

    for obj in h.node_children(objects_node):
        obj_name = h.node_name(obj)
        elements_node = None
        for child in h.node_children(obj):
            if h.node_name(child).lower() == "elements":
                elements_node = child
                break
        
        if not elements_node:
            continue

        patch_object, reason = should_patch_object(h, obj_name, elements_node)
        if not patch_object:
            print(f"Skipping {obj_name}: {reason}")
            continue

        is_bootmgr = obj_name.lower() == "{9dea862c-5cdd-4e70-acc1-f32b344d4795}"
        print(f"Patching object {obj_name}: {reason}")

        for el in h.node_children(elements_node):
            el_name = h.node_name(el)
            if el_name in ["11000001", "21000001"]:
                val = h.node_get_value(el, "Element")
                if not val:
                    print(f"Skipping {obj_name}/Elements/{el_name}: missing Element value")
                    continue

                _, current_data = h.value_value(val)
                if is_bootmgr:
                    patched_data, status = patch_partition_packet(
                        current_data,
                        esp_is_gpt,
                        esp_disk_sig,
                        esp_part_sig,
                        esp_offset,
                    )
                    target = "ESP"
                else:
                    patched_data, status = patch_partition_packet(
                        current_data,
                        win_is_gpt,
                        win_disk_sig,
                        win_part_sig,
                        win_offset,
                    )
                    target = "Windows"

                if patched_data is None:
                    print(f"Skipping {obj_name}/Elements/{el_name}: {status}")
                    continue

                if not is_bootmgr:
                    patched_windows_values += 1

                if bytes(patched_data) == current_data:
                    print(f"Keeping {obj_name}/Elements/{el_name}: {status}")
                    continue

                print(f"Patching {obj_name}/Elements/{el_name} -> {target}: {status}")
                set_binary_element(h, el, bytes(patched_data))

    if patched_windows_values == 0:
        print("Error: no Windows loader device entries were patched")
        return False

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
