#!/bin/bash
set -e

BUILD_DIR="/tmp/joss_installer_iso_build"
CHROOT_DIR="$BUILD_DIR/chroot"
IMAGE_DIR="$BUILD_DIR/image"
WORKSPACE_DIR="/mnt/c/Users/joss/Documents/proyectos/JossZilla"
OUTPUT_ISO="$WORKSPACE_DIR/joss_installer.iso"

# Clean up any previous mounts
umount -lf "$CHROOT_DIR/workspace" 2>/dev/null || true
umount -lf "$CHROOT_DIR/opt/flutter" 2>/dev/null || true
umount -lf "$CHROOT_DIR/proc" 2>/dev/null || true
umount -lf "$CHROOT_DIR/sys" 2>/dev/null || true
umount -lf "$CHROOT_DIR/dev/pts" 2>/dev/null || true
umount -lf "$CHROOT_DIR/dev" 2>/dev/null || true

echo "=== Copying project sources to chroot ==="
rm -rf "$CHROOT_DIR/workspace"
mkdir -p "$CHROOT_DIR/workspace"
# Copy necessary files only, to keep it fast
rsync -a --exclude="build" --exclude=".git" --exclude=".dart_tool" --exclude="windows" --exclude="winpe_base" "$WORKSPACE_DIR/" "$CHROOT_DIR/workspace/"

echo "=== Mounting Flutter SDK and dev/proc/sys ==="
mkdir -p "$CHROOT_DIR/opt/flutter"
mount --bind "/opt/flutter" "$CHROOT_DIR/opt/flutter"
mount --bind /dev "$CHROOT_DIR/dev" || true
mount --bind /dev/pts "$CHROOT_DIR/dev/pts" || true
mount -t proc proc "$CHROOT_DIR/proc" || true
mount -t sysfs sys "$CHROOT_DIR/sys" || true

echo "=== Compiling Flutter app inside Debian Bookworm chroot ==="
chroot "$CHROOT_DIR" bash -c "
    set -e
    export DEBIAN_FRONTEND=noninteractive
    export PATH=/opt/flutter/bin:\$PATH
    export HOME=/root
    
    echo 'Installing build dependencies inside chroot...'
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

    echo 'Uninstalling build dependencies to keep ISO small...'
    apt-get purge -y clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev git unzip curl ca-certificates
    apt-get autoremove -y
    apt-get clean
    rm -rf /var/lib/apt/lists/*
"

echo "=== Injecting native Debian-linked Flutter payload ==="
rm -rf "$CHROOT_DIR/opt/joss_red_installer"
mkdir -p "$CHROOT_DIR/opt/joss_red_installer"
cp -r "$CHROOT_DIR/workspace/build/linux/x64/release/bundle/"* "$CHROOT_DIR/opt/joss_red_installer/"

echo "=== Unmounting bind-mounts ==="
umount -lf "$CHROOT_DIR/opt/flutter" || true
umount -lf "$CHROOT_DIR/proc" || true
umount -lf "$CHROOT_DIR/sys" || true
umount -lf "$CHROOT_DIR/dev/pts" || true
umount -lf "$CHROOT_DIR/dev" || true

# Remove temporary workspace to keep SquashFS small
rm -rf "$CHROOT_DIR/workspace"

echo "=== Compiling SquashFS filesystem ==="
rm -f "$IMAGE_DIR/live/filesystem.squashfs"
mksquashfs "$CHROOT_DIR" "$IMAGE_DIR/live/filesystem.squashfs" \
    -comp xz \
    -e boot \
    -e root/build \
    -e tmp/*

echo "=== Staging GRUB configurations ==="
mkdir -p "$IMAGE_DIR/boot/grub"
cp "$WORKSPACE_DIR/linux_live_iso/configs/grub.cfg" "$IMAGE_DIR/boot/grub/grub.cfg"

echo "=== Compiling hybrid bootable ISO ==="
grub-mkrescue --xorriso="$BUILD_DIR/xorriso-1.5.6/xorriso/xorriso" -o "$OUTPUT_ISO" "$IMAGE_DIR"

echo "=== Build Complete! ==="
du -sh "$OUTPUT_ISO"
