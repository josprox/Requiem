#!/bin/bash
# ==============================================================================
# Requiem Installer — Linux Live ISO Builder
# Run this script on a Linux host (or WSL2/Docker Debian/Ubuntu) to compile the ISO.
# ==============================================================================
set -e

# Configuration
WORKSPACE_DIR="$(pwd)"
BUILD_DIR="/tmp/requiem_installer_iso_build"
CHROOT_DIR="$BUILD_DIR/chroot"
IMAGE_DIR="$BUILD_DIR/image"
OUTPUT_ISO="$WORKSPACE_DIR/requiem_installer.iso"
BCD_SYS_COMMIT="a2b63010835b10cb4f697d1872966d1c3c6e50ce" # v2.2

echo "===================================================================="
echo " Starting Requiem Linux Live ISO compilation pipeline"
echo " Workspace: $WORKSPACE_DIR"
echo " Build directory: $BUILD_DIR"
echo "===================================================================="

# 1. Install required tools on the build host
echo "Step 1: Installing builder dependencies on host..."
sudo apt-get update
sudo apt-get install -y \
    debootstrap \
    squashfs-tools \
    xorriso \
    grub-common \
    grub-pc-bin \
    grub-efi-amd64-bin \
    mtools \
    curl \
    git \
    tar \
    make \
    gcc \
    libc6-dev \
    gettext \
    libisofs-dev \
    libburn-dev \
    libisoburn-dev

# 2. Clean build directories
echo "Step 2: Cleaning staging directories..."
sudo umount -lf "$CHROOT_DIR/opt/flutter" 2>/dev/null || true
sudo umount -f "$CHROOT_DIR/proc" 2>/dev/null || true
sudo umount -f "$CHROOT_DIR/sys" 2>/dev/null || true
sudo umount -f "$CHROOT_DIR/dev/pts" 2>/dev/null || true
sudo umount -f "$CHROOT_DIR/dev" 2>/dev/null || true
sudo rm -rf "$BUILD_DIR"
mkdir -p "$BUILD_DIR"
mkdir -p "$CHROOT_DIR"
mkdir -p "$IMAGE_DIR/live"

# 3. Bootstrap Debian Stable (Bookworm)
echo "Step 3: Bootstrapping Debian Stable base system..."
sudo debootstrap --arch=amd64 bookworm "$CHROOT_DIR" http://deb.debian.org/debian/

# 4. Mount virtual systems to the chroot
echo "Step 4: Mounting virtual file systems for chroot..."
sudo mount --bind /dev "$CHROOT_DIR/dev"
sudo mount --bind /dev/pts "$CHROOT_DIR/dev/pts"
sudo mount -t proc proc "$CHROOT_DIR/proc"
sudo mount -t sysfs sys "$CHROOT_DIR/sys"

# 5. Compile and install ms-sys on Linux (to support Legacy BIOS MBR/VBR write)
echo "Step 5: Cloning and compiling ms-sys utility..."
cd "$BUILD_DIR"
git clone --depth 1 https://github.com/pbatard/ms-sys.git
cd ms-sys
make
sudo cp bin/ms-sys "$CHROOT_DIR/usr/bin/ms-sys"
sudo chmod +x "$CHROOT_DIR/usr/bin/ms-sys"
cd "$WORKSPACE_DIR"

# 5.5. Compile xorriso from source to bypass efi-boot-part version check bug in standard Ubuntu package
echo "Step 5.5: Downloading and compiling xorriso from source..."
cd "$BUILD_DIR"
curl -L -O https://ftp.gnu.org/gnu/xorriso/xorriso-1.5.6.tar.gz
tar -xzf xorriso-1.5.6.tar.gz
cd xorriso-1.5.6
./configure
make
cd "$WORKSPACE_DIR"

# 6. Copy sources and compile Flutter Installer inside chroot
echo "Step 6: Copying sources and compiling Flutter installer inside chroot..."
# Verify host Flutter SDK is present and not empty
if [ ! -d "/opt/flutter" ] || [ ! -d "/opt/flutter/.git" ]; then
    echo "===================================================================="
    echo " ❌ ERROR: Linux Flutter SDK not found in /opt/flutter on the host!"
    echo " Please run the environment setup script first to install it:"
    echo "   bash linux_live_iso/setup_wsl.sh"
    echo "===================================================================="
    exit 1
fi
sudo mkdir -p "$CHROOT_DIR/workspace"
sudo mkdir -p "$CHROOT_DIR/opt/flutter"
sudo mount --bind "/opt/flutter" "$CHROOT_DIR/opt/flutter"
sudo rsync -a --exclude="build" --exclude=".git" --exclude=".dart_tool" --exclude="windows" --exclude="winpe_base" "$WORKSPACE_DIR/" "$CHROOT_DIR/workspace/"

# Run Flutter compiler inside chroot
sudo chroot "$CHROOT_DIR" bash -c "
    set -e
    export DEBIAN_FRONTEND=noninteractive
    export PATH=/opt/flutter/bin:\$PATH
    export HOME=/root

    echo 'Installing Flutter compiler dependencies inside chroot...'
    apt-get update
    apt-get install -y --no-install-recommends \
        clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev git unzip curl ca-certificates

    echo 'Configuring git safe directory...'
    git config --global --add safe.directory /opt/flutter
    git config --global --add safe.directory /workspace

    echo 'Configuring Flutter desktop...'
    flutter config --enable-linux-desktop
    flutter config --no-analytics

    cd /workspace
    echo 'Cleaning and fetching dependencies...'
    flutter clean
    flutter pub get

    echo 'Building Flutter Linux release...'
    flutter build linux --release

    echo 'Uninstalling Flutter compiler dependencies...'
    apt-get purge -y clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev git unzip curl ca-certificates
    apt-get autoremove -y
    apt-get clean
    rm -rf /var/lib/apt/lists/*
"

# Copy newly compiled bundle to /opt/requiem_installer
sudo mkdir -p "$CHROOT_DIR/opt/requiem_installer"
sudo cp -r "$CHROOT_DIR/workspace/build/linux/x64/release/bundle/"* "$CHROOT_DIR/opt/requiem_installer/"
sudo chmod +x "$CHROOT_DIR/opt/requiem_installer/requiem_installer"

# Unmount host Flutter SDK and clean temporary workspace
sudo umount -lf "$CHROOT_DIR/opt/flutter" || true
sudo rm -rf "$CHROOT_DIR/workspace"

# 7. Copy system files and scripts into chroot
echo "Step 7: Copying configurations and scripts..."
# systemd service
sudo cp "$WORKSPACE_DIR/linux_live_iso/configs/requiem-installer.service" "$CHROOT_DIR/etc/systemd/system/requiem-installer.service"
sudo chmod 644 "$CHROOT_DIR/etc/systemd/system/requiem-installer.service"
# xinitrc
sudo cp "$WORKSPACE_DIR/linux_live_iso/configs/xinitrc" "$CHROOT_DIR/root/.xinitrc"
sudo chmod +x "$CHROOT_DIR/root/.xinitrc"
# BCD patch tool
sudo mkdir -p "$CHROOT_DIR/opt/requiem_installer/tools"
sudo cp "$WORKSPACE_DIR/linux_live_iso/tools/patch_bcd.py" "$CHROOT_DIR/opt/requiem_installer/tools/patch_bcd.py"
sudo chmod +x "$CHROOT_DIR/opt/requiem_installer/tools/patch_bcd.py"

# bcd-sys: Linux equivalent of bcdboot for generating Windows Boot Manager files.
echo "Fetching pinned BCD-SYS boot configuration utility..."
cd "$BUILD_DIR"
git clone https://github.com/jpz4085/BCD-SYS.git bcd-sys
git -C bcd-sys checkout --detach "$BCD_SYS_COMMIT"
test "$(git -C bcd-sys rev-parse HEAD)" = "$BCD_SYS_COMMIT"
sudo mkdir -p "$CHROOT_DIR/opt/requiem_installer/bcd-sys"
sudo cp -r "$BUILD_DIR/bcd-sys/Linux" "$CHROOT_DIR/opt/requiem_installer/bcd-sys/"
sudo cp -r "$BUILD_DIR/bcd-sys/Resources" "$CHROOT_DIR/opt/requiem_installer/bcd-sys/"
sudo cp -r "$BUILD_DIR/bcd-sys/Templates" "$CHROOT_DIR/opt/requiem_installer/bcd-sys/"
sudo chmod +x "$CHROOT_DIR/opt/requiem_installer/bcd-sys/Linux/"*.sh
cd "$WORKSPACE_DIR"

# Enable systemd graphical autostart service inside chroot
sudo chroot "$CHROOT_DIR" systemctl enable requiem-installer.service
sudo chroot "$CHROOT_DIR" systemctl set-default graphical.target

# 8. Execute setup_chroot.sh inside the chroot
echo "Step 8: Executing chroot internal package and driver setup..."
sudo cp "$WORKSPACE_DIR/linux_live_iso/setup_chroot.sh" "$CHROOT_DIR/tmp/setup_chroot.sh"
sudo chmod +x "$CHROOT_DIR/tmp/setup_chroot.sh"
sudo chroot "$CHROOT_DIR" /tmp/setup_chroot.sh
sudo rm -f "$CHROOT_DIR/tmp/setup_chroot.sh"

echo "Step 8.5: Verifying installer runtime dependencies..."
sudo chroot "$CHROOT_DIR" bash -c '
    set -e
    ldd /opt/requiem_installer/requiem_installer | tee /tmp/requiem_installer_ldd.txt
    if grep -q "not found" /tmp/requiem_installer_ldd.txt; then
        echo "ERROR: Missing runtime libraries for /opt/requiem_installer/requiem_installer"
        exit 1
    fi
'

echo "Step 8.6: Verifying Windows boot toolchain..."
sudo chroot "$CHROOT_DIR" bash -c '
    set -e

    # Verificar que patch_bcd.py está instalado y es ejecutable
    if [ ! -f /opt/requiem_installer/tools/patch_bcd.py ]; then
        echo "ERROR: patch_bcd.py not found at /opt/requiem_installer/tools/patch_bcd.py"
        exit 1
    fi
    echo "✓ patch_bcd.py found"

    # Verificar que python3 está disponible
    if ! command -v python3 &>/dev/null; then
        echo "ERROR: python3 is not installed in the chroot"
        exit 1
    fi
    echo "✓ python3: $(python3 --version)"

    # Verificar que python3-hivex está instalado e importable
    if ! python3 -c "import hivex; print(\"✓ python3-hivex importable\")" 2>&1; then
        echo "ERROR: python3-hivex is not importable. BCD patching will fail."
        exit 1
    fi

    # Verificar sintaxis de patch_bcd.py
    if ! python3 -m py_compile /opt/requiem_installer/tools/patch_bcd.py; then
        echo "ERROR: patch_bcd.py has syntax errors"
        exit 1
    fi
    echo "✓ patch_bcd.py syntax OK"

    # Verificar herramientas de boot críticas
    for tool in efibootmgr sgdisk mkfs.vfat mkfs.ntfs partprobe udevadm blkid; do
        if ! command -v "$tool" &>/dev/null; then
            echo "ERROR: Missing critical boot tool: $tool"
            exit 1
        fi
        echo "✓ $tool found"
    done

    echo ""
    echo "All Windows boot toolchain components verified successfully."
'

# 9. Copy Linux Kernel and Initrd outside squashfs for booting
echo "Step 9: Extracting live kernel and boot images..."
KERNEL_FILE=$(ls "$CHROOT_DIR/boot"/vmlinuz-* | head -n 1)
INITRD_FILE=$(ls "$CHROOT_DIR/boot"/initrd.img-* | head -n 1)
sudo cp "$KERNEL_FILE" "$IMAGE_DIR/live/vmlinuz"
sudo cp "$INITRD_FILE" "$IMAGE_DIR/live/initrd.img"

# 10. Clean up and unmount chroot filesystems
echo "Step 10: Unmounting chroot mountpoints..."
sudo umount -lf "$CHROOT_DIR/opt/flutter" || true
sudo umount -f "$CHROOT_DIR/proc" || true
sudo umount -f "$CHROOT_DIR/sys" || true
sudo umount -f "$CHROOT_DIR/dev/pts" || true
sudo umount -f "$CHROOT_DIR/dev" || true

# 11. Compile the SquashFS filesystem
echo "Step 11: Compiling SquashFS root image (this may take a moment)..."
sudo rm -f "$IMAGE_DIR/live/filesystem.squashfs"
sudo mksquashfs "$CHROOT_DIR" "$IMAGE_DIR/live/filesystem.squashfs" \
    -comp xz \
    -e boot \
    -e root/build \
    -e tmp/*

# 12. Create GRUB configuration
echo "Step 12: Installing GRUB configuration in ISO staging..."
mkdir -p "$IMAGE_DIR/boot/grub"
cp "$WORKSPACE_DIR/linux_live_iso/configs/grub.cfg" "$IMAGE_DIR/boot/grub/grub.cfg"

# 13. Compile hybrid bootable ISO using grub-mkrescue
echo "Step 13: Compiling hybrid UEFI+BIOS bootable ISO..."
grub-mkrescue --xorriso="$BUILD_DIR/xorriso-1.5.6/xorriso/xorriso" -o "$OUTPUT_ISO" "$IMAGE_DIR"

echo "===================================================================="
echo " ✅ SUCCESS! Linux Live ISO compiled successfully!"
echo " ISO Path: $OUTPUT_ISO"
echo " Size: $(du -sh "$OUTPUT_ISO" | cut -f1)"
echo "===================================================================="
