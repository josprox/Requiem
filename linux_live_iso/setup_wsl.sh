#!/bin/bash
# ==============================================================================
# Requiem Installer — WSL Environment Setup & Linux Compilation Script
# Run this inside WSL (Ubuntu) to install Flutter and compile the Linux binary.
# ==============================================================================
set -e

PROJECT_DIR="/mnt/c/Users/joss/Documents/proyectos/JossZilla"
FLUTTER_VERSION="3.44.1"
FLUTTER_SDK_URL="https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_${FLUTTER_VERSION}-stable.tar.xz"
FLUTTER_INSTALL_DIR="/opt/flutter"

echo "===================================================================="
echo " Preparing WSL Ubuntu Environment for Flutter Linux Desktop Compilation"
echo " Project Directory: $PROJECT_DIR"
echo "===================================================================="

# 1. Update and install packages
echo "Step 1: Installing compiler and library dependencies..."
sudo apt-get update
sudo apt-get install -y \
    clang \
    cmake \
    ninja-build \
    pkg-config \
    libgtk-3-dev \
    liblzma-dev \
    libstdc++-12-dev \
    curl \
    xz-utils \
    git \
    unzip

# 2. Download and install Flutter SDK (if not already installed or version mismatch)
CURRENT_VERSION=""
if [ -d "$FLUTTER_INSTALL_DIR/.git" ]; then
    cd "$FLUTTER_INSTALL_DIR"
    CURRENT_VERSION=$(git describe --tags --exact-match 2>/dev/null || git rev-parse --short HEAD || echo "")
    cd "$PROJECT_DIR"
fi

if [ ! -d "$FLUTTER_INSTALL_DIR" ] || [ ! -d "$FLUTTER_INSTALL_DIR/.git" ] || [ "$CURRENT_VERSION" != "$FLUTTER_VERSION" ]; then
    echo "Step 2: Downloading and extracting Flutter SDK via Git clone ($FLUTTER_VERSION)..."
    sudo rm -rf "$FLUTTER_INSTALL_DIR"
    sudo mkdir -p "$FLUTTER_INSTALL_DIR"
    sudo chown -R $(whoami):$(whoami) "$FLUTTER_INSTALL_DIR"
    
    # Clone the specific version tag
    git clone --depth 1 --branch "$FLUTTER_VERSION" https://github.com/flutter/flutter.git "$FLUTTER_INSTALL_DIR"
else
    echo "Step 2: Flutter SDK is already installed at $FLUTTER_INSTALL_DIR and matches version $FLUTTER_VERSION."
fi

# Make sure Flutter can update its own cache without interactive overwrite prompts.
sudo chown -R "$(whoami):$(whoami)" "$FLUTTER_INSTALL_DIR"
git -C "$FLUTTER_INSTALL_DIR" config --global --add safe.directory "$FLUTTER_INSTALL_DIR" || true

# 3. Add Flutter to path
export PATH="$FLUTTER_INSTALL_DIR/bin:$PATH"
# Write to user's bashrc for persistence
if ! grep -q "flutter/bin" ~/.bashrc; then
    echo "Adding Flutter to ~/.bashrc PATH..."
    echo 'export PATH="'"$FLUTTER_INSTALL_DIR/bin"':$PATH"' >> ~/.bashrc
fi

echo "Step 3: Verifying Flutter installation..."
flutter doctor -v

# 4. Compile Linux Desktop App
echo "Step 4: Compiling native Linux Flutter app in release mode..."
cd "$PROJECT_DIR"
# Disable analytics
flutter config --no-analytics
# Clean and resolve dependencies
flutter config --enable-linux-desktop
flutter create --platforms=linux .
flutter clean
flutter pub get

# Build Release
flutter build linux --release

echo "===================================================================="
echo " ✅ SUCCESS! Flutter Linux Desktop application compiled!"
echo " Output path: $PROJECT_DIR/build/linux/x64/release/bundle"
echo " You can now run the ISO build script: "
echo "   sudo ./linux_live_iso/build_iso.sh"
echo "===================================================================="
