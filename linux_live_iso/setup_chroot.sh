#!/bin/bash
set -e
export DEBIAN_FRONTEND=noninteractive

echo "==============================================="
echo "   Running setup_chroot.sh inside chroot"
echo "==============================================="

# 1. Update package lists
apt-get update

# 2. Install base utilities, kernel, live-boot, and graphical environment
apt-get install -y --no-install-recommends \
    linux-image-amd64 \
    live-boot \
    xserver-xorg-core \
    xserver-xorg-video-all \
    xserver-xorg-input-all \
    xserver-xorg-legacy \
    xinit \
    openbox \
    x11-utils \
    xterm \
    dbus-x11 \
    x11-xserver-utils \
    libgl1-mesa-dri

# 3. Install installation-specific backends
apt-get install -y --no-install-recommends \
    wimtools \
    ntfs-3g \
    parted \
    fdisk \
    udev \
    efibootmgr \
    grub2-common \
    grub-pc-bin \
    libhivex-bin \
    python3-hivex \
    dosfstools \
    uuid-runtime \
    attr \
    fatattr \
    pev \
    sudo \
    xxd

# 4. Install additional tools (like ms-sys if available, or we can compile it if not in repositories)
# Note: ms-sys might not be in standard Debian repositories, so we download its deb package or compile it.
# We will write a fallback in case ms-sys is not in Debian apt:
apt-get install -y --no-install-recommends ms-sys || {
    echo "ms-sys not found in repositories. Downloading precompiled deb..."
    # We will let the builder script deploy a precompiled ms-sys binary or compile it in build_iso.sh
    # For now, we proceed. We can copy the ms-sys binary to /usr/bin/ms-sys from host during build_iso.sh.
    true
}

# 5. Install Flutter dependencies
apt-get install -y --no-install-recommends \
    libgtk-3-0 \
    libblkid1 \
    liblzma5 \
    libgcrypt20 \
    libsystemd0 \
    libdbus-1-3 \
    libgles2 \
    libegl1 \
    libglu1-mesa

# 6. Configure Locales
apt-get install -y --no-install-recommends locales
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
echo "es_ES.UTF-8 UTF-8" >> /etc/locale.gen
locale-gen
update-locale LANG=es_ES.UTF-8

# 7. Configure Openbox for borderless fullscreen
mkdir -p /root/.config/openbox
cat <<EOF > /root/.config/openbox/rc.xml
<?xml version="1.0" encoding="UTF-8"?>
<openbox_config xmlns="http://openbox.org/3.4/rc" xmlns:xi="http://www.w3.org/2001/XInclude">
  <applications>
    <application class="*">
      <decor>no</decor>
      <fullscreen>yes</fullscreen>
      <maximized>true</maximized>
    </application>
  </applications>
</openbox_config>
EOF

# 8. Setup autostart permissions for Xorg
# In Debian, starting Xorg as root from non-interactive terminal is allowed,
# but we write to Xwrapper to be absolutely safe:
mkdir -p /etc/X11
echo "allowed_users=anybody" > /etc/X11/Xwrapper.config
echo "needs_root_rights=yes" >> /etc/X11/Xwrapper.config

# Mask getty@tty1 to prevent it from locking vt1
systemctl mask getty@tty1.service

# 9. Clean up to minimize squashfs size
apt-get autoremove -y
apt-get clean
rm -rf /var/lib/apt/lists/*
rm -rf /tmp/* /var/tmp/*

echo "==============================================="
echo "   setup_chroot.sh completed successfully!"
echo "==============================================="
