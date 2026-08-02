#!/bin/bash
# ==============================================================================
# Requiem Installer — Linux Live ISO Builder (Fast Caching Edition)
# Run this script on a Linux host (or WSL2/Docker Debian/Ubuntu) to compile the ISO.
# Usage:
#   sudo ./linux_live_iso/build_iso.sh          (Fast incremental build with cache)
#   sudo ./linux_live_iso/build_iso.sh --clean  (Clean cache and rebuild from scratch)
# ==============================================================================
set -e

# CLI Arguments
FORCE_CLEAN=0
if [ "$1" = "--clean" ] || [ "$1" = "-c" ]; then
    FORCE_CLEAN=1
fi

# Configuration (Use /tmp for native Linux ext4 speed and WSL DrvFS I/O error prevention)
WORKSPACE_DIR="$(pwd)"
BUILD_DIR="/tmp/requiem_installer_iso_build"
CACHE_DIR="/tmp/requiem_iso_cache"
CHROOT_DIR="$BUILD_DIR/chroot"
IMAGE_DIR="$BUILD_DIR/image"
OUTPUT_ISO="$WORKSPACE_DIR/requiem_installer.iso"
BCD_SYS_COMMIT="a2b63010835b10cb4f697d1872966d1c3c6e50ce" # v2.2

DEBOOTSTRAP_CACHE="$CACHE_DIR/debootstrap_bookworm_base.tar.xz"
XORRISO_CACHE="$CACHE_DIR/xorriso-1.5.6"
MS_SYS_CACHE="$CACHE_DIR/ms-sys"
BCD_SYS_CACHE="$CACHE_DIR/bcd-sys"
APT_CACHE="$CACHE_DIR/apt_archives"
FLUTTER_CACHE="$CACHE_DIR/flutter_build"

echo "===================================================================="
echo " Starting Requiem Linux Live ISO compilation pipeline"
echo " Workspace: $WORKSPACE_DIR"
echo " Build directory: $BUILD_DIR"
echo " Cache directory: $CACHE_DIR"
if [ "$FORCE_CLEAN" -eq 1 ]; then
    echo " Mode: CLEAN REBUILD (Cache will be wiped)"
else
    echo " Mode: FAST CACHED INCREMENTAL BUILD"
fi
echo "===================================================================="

if [ "$FORCE_CLEAN" -eq 1 ]; then
    echo "Wiping build cache..."
    sudo rm -rf "$CACHE_DIR"
fi

mkdir -p "$CACHE_DIR"
mkdir -p "$APT_CACHE"
mkdir -p "$FLUTTER_CACHE"

# 1. Install required tools on the build host (skips if already installed)
echo "Step 1: Checking/Installing builder dependencies on host..."
if ! command -v debootstrap &>/dev/null || ! command -v mksquashfs &>/dev/null; then
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
fi

# 2. Clean build directories safely
echo "Step 2: Cleaning staging mounts and directories..."
sudo umount -lf "$CHROOT_DIR/opt/flutter" 2>/dev/null || true
sudo umount -lf "$CHROOT_DIR/var/cache/apt/archives" 2>/dev/null || true
sudo umount -lf "$CHROOT_DIR/proc" 2>/dev/null || true
sudo umount -lf "$CHROOT_DIR/sys" 2>/dev/null || true
sudo umount -lf "$CHROOT_DIR/dev/pts" 2>/dev/null || true
sudo umount -lf "$CHROOT_DIR/dev" 2>/dev/null || true

# Preserve chroot if existing and valid in cached mode
if [ "$FORCE_CLEAN" -eq 1 ] || [ ! -f "$CHROOT_DIR/etc/debian_version" ]; then
    if [ -f "$DEBOOTSTRAP_CACHE" ] && [ "$FORCE_CLEAN" -eq 0 ]; then
        echo "Found cached debootstrap base. Extracting base chroot..."
        sudo rm -rf "$CHROOT_DIR"
        mkdir -p "$CHROOT_DIR"
        sudo tar -xJf "$DEBOOTSTRAP_CACHE" -C "$CHROOT_DIR"
    else
        echo "Step 3: Bootstrapping Debian Stable base system..."
        sudo rm -rf "$CHROOT_DIR"
        mkdir -p "$CHROOT_DIR"
        sudo debootstrap --arch=amd64 bookworm "$CHROOT_DIR" http://deb.debian.org/debian/
        
        echo "Creating debootstrap base cache archive for future fast builds..."
        sudo tar -cJf "$DEBOOTSTRAP_CACHE" --exclude="./dev/*" --exclude="./proc/*" --exclude="./sys/*" -C "$CHROOT_DIR" .
    fi
else
    echo "Reusing existing chroot directory..."
fi

mkdir -p "$BUILD_DIR"
mkdir -p "$IMAGE_DIR/live"

# 4. Mount virtual systems and apt cache to the chroot
echo "Step 4: Mounting virtual file systems for chroot..."
sudo mount --bind /dev "$CHROOT_DIR/dev"
sudo mount --bind /dev/pts "$CHROOT_DIR/dev/pts"
sudo mount -t proc proc "$CHROOT_DIR/proc"
sudo mount -t sysfs sys "$CHROOT_DIR/sys"

sudo mkdir -p "$CHROOT_DIR/var/cache/apt/archives"
sudo mount --bind "$APT_CACHE" "$CHROOT_DIR/var/cache/apt/archives"

# 5. Compile or restore ms-sys on Linux (Legacy BIOS MBR/VBR write)
echo "Step 5: Preparing ms-sys utility..."
if [ ! -f "$MS_SYS_CACHE/bin/ms-sys" ]; then
    echo "Cloning and compiling ms-sys utility..."
    mkdir -p "$MS_SYS_CACHE"
    git clone --depth 1 https://github.com/pbatard/ms-sys.git "$MS_SYS_CACHE/src"
    cd "$MS_SYS_CACHE/src"
    make
    mkdir -p "$MS_SYS_CACHE/bin"
    cp bin/ms-sys "$MS_SYS_CACHE/bin/ms-sys"
    cd "$WORKSPACE_DIR"
fi
sudo cp "$MS_SYS_CACHE/bin/ms-sys" "$CHROOT_DIR/usr/bin/ms-sys"
sudo chmod +x "$CHROOT_DIR/usr/bin/ms-sys"

# 5.5. Compile or restore xorriso from source
echo "Step 5.5: Preparing xorriso..."
if [ ! -f "$XORRISO_CACHE/xorriso/xorriso" ]; then
    echo "Downloading and compiling xorriso 1.5.6 from source..."
    mkdir -p "$CACHE_DIR/xorriso_build"
    cd "$CACHE_DIR/xorriso_build"
    curl -L -O https://ftp.gnu.org/gnu/xorriso/xorriso-1.5.6.tar.gz
    tar -xzf xorriso-1.5.6.tar.gz
    cd xorriso-1.5.6
    ./configure
    make
    mkdir -p "$XORRISO_CACHE/xorriso"
    cp xorriso/xorriso "$XORRISO_CACHE/xorriso/xorriso"
    cd "$WORKSPACE_DIR"
    rm -rf "$CACHE_DIR/xorriso_build"
fi

# 6. Copy sources and compile Flutter Installer inside chroot
echo "Step 6: Copying sources and compiling Flutter installer inside chroot..."
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

# Sync source code into chroot
sudo rsync -a --delete \
    --exclude="build" \
    --exclude=".git" \
    --exclude=".dart_tool" \
    --exclude="windows" \
    --exclude="winpe_base" \
    --exclude=".build_cache" \
    "$WORKSPACE_DIR/" "$CHROOT_DIR/workspace/"

# Restore cached build artifacts for incremental Flutter compilation if available
if [ -d "$FLUTTER_CACHE/.dart_tool" ]; then
    echo "Restoring cached Flutter .dart_tool build cache..."
    sudo cp -r "$FLUTTER_CACHE/.dart_tool" "$CHROOT_DIR/workspace/" 2>/dev/null || true
fi

# Run Flutter compiler inside chroot
sudo chroot "$CHROOT_DIR" bash -c "
    set -e
    export DEBIAN_FRONTEND=noninteractive
    export PATH=/opt/flutter/bin:\$PATH
    export HOME=/root

    if ! command -v clang &>/dev/null || ! command -v cmake &>/dev/null; then
        echo 'Installing Flutter compiler dependencies inside chroot...'
        apt-get update
        apt-get install -y --no-install-recommends \
            clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev git unzip curl ca-certificates
    fi

    echo 'Configuring git safe directory...'
    git config --global --add safe.directory /opt/flutter
    git config --global --add safe.directory /workspace

    echo 'Configuring Flutter desktop...'
    flutter config --enable-linux-desktop
    flutter config --no-analytics

    cd /workspace
    echo 'Fetching dependencies...'
    flutter pub get

    echo 'Preparing build directory structure for CMake...'
    mkdir -p build/native_assets/linux

    echo 'Building Flutter Linux release (Incremental mode)...'
    flutter build linux --release
"

# Preserve build cache for next run
sudo mkdir -p "$FLUTTER_CACHE/.dart_tool"
sudo cp -r "$CHROOT_DIR/workspace/.dart_tool/"* "$FLUTTER_CACHE/.dart_tool/" 2>/dev/null || true

# Copy newly compiled bundle to /opt/requiem_installer
sudo mkdir -p "$CHROOT_DIR/opt/requiem_installer"
sudo cp -r "$CHROOT_DIR/workspace/build/linux/x64/release/bundle/"* "$CHROOT_DIR/opt/requiem_installer/"
sudo chmod +x "$CHROOT_DIR/opt/requiem_installer/requiem_installer"

# Unmount host Flutter SDK and clean workspace
sudo umount -lf "$CHROOT_DIR/opt/flutter" || true
sudo rm -rf "$CHROOT_DIR/workspace"

# 7. Copy system files and scripts into chroot
echo "Step 7: Copying configurations and scripts..."
sudo cp "$WORKSPACE_DIR/linux_live_iso/configs/requiem-installer.service" "$CHROOT_DIR/etc/systemd/system/requiem-installer.service"
sudo chmod 644 "$CHROOT_DIR/etc/systemd/system/requiem-installer.service"

sudo cp "$WORKSPACE_DIR/linux_live_iso/configs/xinitrc" "$CHROOT_DIR/root/.xinitrc"
sudo chmod +x "$CHROOT_DIR/root/.xinitrc"

sudo mkdir -p "$CHROOT_DIR/opt/requiem_installer/tools"
sudo cp "$WORKSPACE_DIR/linux_live_iso/tools/patch_bcd.py" "$CHROOT_DIR/opt/requiem_installer/tools/patch_bcd.py"
sudo chmod +x "$CHROOT_DIR/opt/requiem_installer/tools/patch_bcd.py"

# BCD-SYS boot configuration utility
echo "Preparing BCD-SYS boot configuration utility..."
if [ ! -d "$BCD_SYS_CACHE/.git" ]; then
    echo "Cloning BCD-SYS repository..."
    mkdir -p "$BCD_SYS_CACHE"
    git clone https://github.com/jpz4085/BCD-SYS.git "$BCD_SYS_CACHE"
    git -C "$BCD_SYS_CACHE" checkout --detach "$BCD_SYS_COMMIT"
fi

sudo mkdir -p "$CHROOT_DIR/opt/requiem_installer/bcd-sys"
sudo cp -r "$BCD_SYS_CACHE/Linux" "$CHROOT_DIR/opt/requiem_installer/bcd-sys/"
sudo cp -r "$BCD_SYS_CACHE/Resources" "$CHROOT_DIR/opt/requiem_installer/bcd-sys/"
sudo cp -r "$BCD_SYS_CACHE/Templates" "$CHROOT_DIR/opt/requiem_installer/bcd-sys/"
sudo chmod +x "$CHROOT_DIR/opt/requiem_installer/bcd-sys/Linux/"*.sh

# Enable systemd autostart service
sudo chroot "$CHROOT_DIR" systemctl enable requiem-installer.service 2>/dev/null || true
sudo chroot "$CHROOT_DIR" systemctl set-default graphical.target 2>/dev/null || true

# 8. Execute setup_chroot.sh inside the chroot
echo "Step 8: Executing chroot package setup..."
sudo cp "$WORKSPACE_DIR/linux_live_iso/setup_chroot.sh" "$CHROOT_DIR/tmp/setup_chroot.sh"
sudo chmod +x "$CHROOT_DIR/tmp/setup_chroot.sh"
sudo chroot "$CHROOT_DIR" /tmp/setup_chroot.sh
sudo rm -f "$CHROOT_DIR/tmp/setup_chroot.sh"

echo "Step 8.5: Verifying runtime dependencies..."
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
    if [ ! -f /opt/requiem_installer/tools/patch_bcd.py ]; then
        echo "ERROR: patch_bcd.py not found at /opt/requiem_installer/tools/patch_bcd.py"
        exit 1
    fi
    if ! command -v python3 &>/dev/null; then
        echo "ERROR: python3 is not installed in the chroot"
        exit 1
    fi
    if ! python3 -c "import hivex; print(\"✓ python3-hivex importable\")" 2>&1; then
        echo "ERROR: python3-hivex is not importable. BCD patching will fail."
        exit 1
    fi
    if ! python3 -m py_compile /opt/requiem_installer/tools/patch_bcd.py; then
        echo "ERROR: patch_bcd.py has syntax errors"
        exit 1
    fi
    for tool in efibootmgr sgdisk mkfs.vfat mkfs.ntfs partprobe udevadm blkid; do
        if ! command -v "$tool" &>/dev/null; then
            echo "ERROR: Missing critical boot tool: $tool"
            exit 1
        fi
    done
    echo "✓ All Windows boot toolchain components verified successfully."
'

# 9. Copy Linux Kernel and Initrd outside squashfs
echo "Step 9: Extracting live kernel and boot images..."
KERNEL_FILE=$(ls "$CHROOT_DIR/boot"/vmlinuz-* | head -n 1)
INITRD_FILE=$(ls "$CHROOT_DIR/boot"/initrd.img-* | head -n 1)
sudo cp "$KERNEL_FILE" "$IMAGE_DIR/live/vmlinuz"
sudo cp "$INITRD_FILE" "$IMAGE_DIR/live/initrd.img"

# 10. Clean up and unmount chroot filesystems
echo "Step 10: Unmounting chroot mountpoints..."
sudo umount -lf "$CHROOT_DIR/opt/flutter" 2>/dev/null || true
sudo umount -lf "$CHROOT_DIR/var/cache/apt/archives" 2>/dev/null || true
sudo umount -lf "$CHROOT_DIR/proc" 2>/dev/null || true
sudo umount -lf "$CHROOT_DIR/sys" 2>/dev/null || true
sudo umount -lf "$CHROOT_DIR/dev/pts" 2>/dev/null || true
sudo umount -lf "$CHROOT_DIR/dev" 2>/dev/null || true
sync
sleep 1

# Ensure essential empty mount point directories exist in rootfs for live-boot
sudo mkdir -p "$CHROOT_DIR/dev" "$CHROOT_DIR/proc" "$CHROOT_DIR/sys" "$CHROOT_DIR/tmp" "$CHROOT_DIR/run" "$CHROOT_DIR/mnt" "$CHROOT_DIR/media" "$CHROOT_DIR/mnt/windows" "$CHROOT_DIR/mnt/efi" "$CHROOT_DIR/mnt/boot"
sudo chmod 1777 "$CHROOT_DIR/tmp"

# 11. Compile the SquashFS filesystem
echo "Step 11: Compiling SquashFS root image..."
sudo rm -f "$IMAGE_DIR/live/filesystem.squashfs"
sudo mksquashfs "$CHROOT_DIR" "$IMAGE_DIR/live/filesystem.squashfs" \
    -comp xz \
    -e boot \
    -e root/build \
    -e "var/cache/apt/archives/*" \
    -e "tmp/*"

# 12. Create GRUB configuration
echo "Step 12: Installing GRUB configuration in ISO staging..."
mkdir -p "$IMAGE_DIR/boot/grub"
cp "$WORKSPACE_DIR/linux_live_iso/configs/grub.cfg" "$IMAGE_DIR/boot/grub/grub.cfg"

# 13. Compile hybrid bootable ISO using grub-mkrescue
echo "Step 13: Compiling hybrid UEFI+BIOS bootable ISO..."
grub-mkrescue --xorriso="$XORRISO_CACHE/xorriso/xorriso" -o "$OUTPUT_ISO" "$IMAGE_DIR"

echo "===================================================================="
echo " ✅ SUCCESS! Linux Live ISO compiled successfully!"
echo " ISO Path: $OUTPUT_ISO"
echo " Size: $(du -sh "$OUTPUT_ISO" | cut -f1)"
echo "===================================================================="
