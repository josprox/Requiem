#!/usr/bin/env python3
import sys
import os
import uuid
import struct
import subprocess
from collections import Counter
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

def set_string_element(hive, node, text):
    data = text.encode("utf-16le") + b"\x00\x00"
    value = {"key": "Element", "t": 1, "value": data}
    try:
        hive.node_set_value(node, value)
    except KeyError as err:
        if "type" not in str(err):
            raise
        hive.node_set_value(node, {"key": "Element", "type": 1, "value": data})

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
        # Raw BCD device elements use 0 for GPT and 1 for MBR here. This is
        # different from the WMI BcdDeviceQualifiedPartitionData enum names.
        data[offset + 0x14:offset + 0x18] = struct.pack("<I", 0)
        data[offset + 0x18:offset + 0x28] = disk_sig
    else:
        data[offset:offset + 0x10] = struct.pack("<Q", offset_bytes) + (b"\x00" * 8)
        data[offset + 0x10:offset + 0x14] = b"\x00" * 4
        data[offset + 0x14:offset + 0x18] = struct.pack("<I", 1)
        data[offset + 0x18:offset + 0x28] = disk_sig + (b"\x00" * 12)

    data[offset + 0x28:offset + 0x38] = b"\x00" * 0x10

def write_partition_packet(data, packet_offset, is_gpt, disk_sig, part_sig, offset_bytes):
    packet_size = 0x48
    needed_size = packet_offset + packet_size
    if len(data) < needed_size:
        data.extend(b"\x00" * (needed_size - len(data)))

    data[packet_offset:packet_offset + 0x04] = struct.pack("<I", 6)
    data[packet_offset + 0x04:packet_offset + 0x08] = b"\x00" * 4
    data[packet_offset + 0x08:packet_offset + 0x0c] = struct.pack("<I", packet_size)
    data[packet_offset + 0x0c:packet_offset + 0x10] = b"\x00" * 4
    write_partition_payload(
        data,
        packet_offset + 0x10,
        is_gpt,
        disk_sig,
        part_sig,
        offset_bytes,
    )

def patch_partition_packet(
    raw,
    is_gpt,
    disk_sig,
    part_sig,
    offset_bytes,
    keep_boot_device=False,
):
    data = bytearray(raw)
    if len(data) < 0x20:
        return None, "device element is too short"

    packet_offset = 0x10
    packet_type = read_u32(data, packet_offset)
    packet_flags = read_u32(data, packet_offset + 4)
    packet_size = read_u32(data, packet_offset + 8)

    if packet_type == 5:
        if keep_boot_device:
            return data, "left as [boot] device"
        write_partition_packet(
            data,
            packet_offset,
            is_gpt,
            disk_sig,
            part_sig,
            offset_bytes,
        )
        return data, "converted [boot] to partition device"

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

def extract_mbr_partition_payload(raw):
    data = bytearray(raw)
    if len(data) < 0x20:
        return None

    packet_offsets = [0x10]
    try:
        if read_u32(data, 0x10) == 0:
            packet_offsets.append(0x20)
    except ValueError:
        pass

    for packet_offset in packet_offsets:
        try:
            packet_type = read_u32(data, packet_offset)
        except ValueError:
            continue

        if packet_type != 6:
            continue

        payload = packet_offset + 0x10
        if len(data) < payload + 0x28:
            continue

        partition_style = read_u32(data, payload + 0x14)
        if partition_style != 1:
            continue

        offset_bytes = struct.unpack("<Q", data[payload:payload + 8])[0]
        disk_sig = bytes(data[payload + 0x18:payload + 0x1c])
        if disk_sig == b"\x00\x00\x00\x00":
            continue

        return disk_sig, offset_bytes

    return None

def get_element_data(hive, elements_node, element_name):
    for child in hive.node_children(elements_node):
        if hive.node_name(child) == element_name:
            try:
                val = hive.node_get_value(child, "Element")
                if val:
                    _, val_data = hive.value_value(val)
                    return child, val_data
            except RuntimeError:
                pass
    return None, None

def has_element(hive, elements_node, element_name):
    node, _ = get_element_data(hive, elements_node, element_name)
    return node is not None

def read_utf16le_text(raw):
    try:
        return raw.decode("utf-16le", errors="ignore").replace("\x00", "")
    except Exception:
        return ""

def read_utf16le_lower(raw):
    return read_utf16le_text(raw).lower()

def should_patch_object(hive, obj_name, elements_node):
    if obj_name.lower() == "{9dea862c-5cdd-4e70-acc1-f32b344d4795}":
        return True, "boot manager"

    _, description = get_element_data(hive, elements_node, "12000004")
    description_text = read_utf16le_lower(description or b"")

    # 12000002 is the boot application path, e.g. \Windows\system32\winload.exe.
    # 22000002 is usually systemroot, e.g. \Windows.
    _, path = get_element_data(hive, elements_node, "12000002")
    path_text = read_utf16le_lower(path or b"")
    _, systemroot = get_element_data(hive, elements_node, "22000002")
    systemroot_text = read_utf16le_lower(systemroot or b"")

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

def parent_disk_from_partition(device):
    name = os.path.basename(device)
    if name.startswith("nvme") or name.startswith("mmcblk"):
        parent = name.rsplit("p", 1)[0]
    else:
        parent = name.rstrip("0123456789")
    return f"/dev/{parent}"

def iter_element_values(hive, node):
    for child in hive.node_children(node):
        try:
            val = hive.node_get_value(child, "Element")
            if val:
                _, val_data = hive.value_value(val)
                yield val_data
        except RuntimeError:
            pass
        yield from iter_element_values(hive, child)

def sync_mbr_disk_signature(bcd_path, windows_device):
    if not os.path.exists(bcd_path):
        print(f"Error: BCD file not found at {bcd_path}")
        return False

    win_is_gpt, _win_disk_sig, _win_part_sig, win_offset = get_part_info(windows_device)
    if win_is_gpt:
        print("Error: disk signature sync is only valid for MBR targets")
        return False

    h = hivex.Hivex(bcd_path, write=False)
    candidates = []
    for value in iter_element_values(h, h.root()):
        payload = extract_mbr_partition_payload(value)
        if payload is not None:
            candidates.append(payload)

    if not candidates:
        print("Error: no MBR partition devices found in BCD")
        return False

    matching_offset = [item for item in candidates if item[1] == win_offset]
    selected = Counter(matching_offset or candidates).most_common(1)[0][0]
    disk_sig, bcd_offset = selected
    disk_sig_hex = disk_sig[::-1].hex()
    disk = parent_disk_from_partition(windows_device)

    print(f"BCD expects MBR disk signature: {disk_sig_hex}")
    print(f"BCD partition offset: {bcd_offset} bytes")
    print(f"Target partition offset: {win_offset} bytes")
    if bcd_offset != win_offset:
        print("Error: BCD partition offset does not match target partition offset")
        return False

    result = subprocess.run(
        ["sfdisk", "--disk-id", disk, f"0x{disk_sig_hex}"],
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
    )
    if result.stdout.strip():
        print(result.stdout.strip())
    if result.stderr.strip():
        print(result.stderr.strip())
    if result.returncode != 0:
        print(f"Error: could not set disk signature on {disk}")
        return False

    subprocess.run(["partprobe", disk], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    subprocess.run(["udevadm", "settle"], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    print(f"Disk signature synced on {disk}")
    return True

def normalize_windows_loader_path(hive, obj_name, elements_node, firmware_mode):
    if firmware_mode is None:
        return False

    path_node, path_data = get_element_data(hive, elements_node, "12000002")
    if path_node is None:
        return False

    current_path = read_utf16le_text(path_data or b"")
    current_lower = current_path.lower()
    if "winload" not in current_lower:
        return False

    wanted_path = (
        r"\Windows\system32\winload.exe"
        if firmware_mode == "legacy-bios"
        else r"\Windows\system32\winload.efi"
    )

    if current_lower == wanted_path.lower():
        print(f"Keeping {obj_name}/Elements/12000002: {current_path}")
        return False

    print(
        f"Patching {obj_name}/Elements/12000002: "
        f"{current_path} -> {wanted_path}"
    )
    set_string_element(hive, path_node, wanted_path)
    return True

def patch_bcd(bcd_path, esp_device, windows_device, firmware_mode=None):
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
        if not is_bootmgr:
            normalize_windows_loader_path(h, obj_name, elements_node, firmware_mode)

        for el in h.node_children(elements_node):
            el_name = h.node_name(el)
            if el_name in ["11000001", "21000001"]:
                try:
                    val = h.node_get_value(el, "Element")
                except RuntimeError:
                    val = None
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
                        keep_boot_device=True,
                    )
                    target = "ESP"
                else:
                    patched_data, status = patch_partition_packet(
                        current_data,
                        win_is_gpt,
                        win_disk_sig,
                        win_part_sig,
                        win_offset,
                        keep_boot_device=False,
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
    if len(sys.argv) >= 4 and sys.argv[1] == "--sync-mbr-signature":
        success = sync_mbr_disk_signature(sys.argv[2], sys.argv[3])
        sys.exit(0 if success else 1)

    args = sys.argv[1:]
    firmware_mode = None
    if args and args[0] in ["--legacy-bios", "--uefi"]:
        firmware_mode = args.pop(0).lstrip("-")

    if len(args) < 3:
        print("Usage: patch_bcd.py [--legacy-bios|--uefi] <bcd_path> <esp_device> <windows_device>")
        print("       patch_bcd.py --sync-mbr-signature <bcd_path> <windows_device>")
        sys.exit(1)
        
    bcd = args[0]
    esp = args[1]
    win = args[2]
    
    success = patch_bcd(bcd, esp, win, firmware_mode=firmware_mode)
    sys.exit(0 if success else 1)
