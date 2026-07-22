#!/bin/bash

echo "=================================================="
echo "       Requiem Project Cleanup Script (Linux)     "
echo "=================================================="
echo

# Verify if we are in the root directory of the project
if [ ! -f pubspec.yaml ]; then
    echo "[ERROR] pubspec.yaml not found."
    echo "Please run this script from the root of the Requiem project."
    exit 1
fi

echo "[1/3] Running Flutter Clean..."
if command -v flutter &> /dev/null; then
    flutter clean
else
    echo "Flutter CLI not found in PATH. Skipping 'flutter clean'..."
fi

echo
echo "[2/3] Cleaning temporary files and folders..."

# Array of directories to remove
dirs_to_remove=(
    ".dart_tool"
    "build"
    ".pub-cache"
    ".pub"
    ".idea"
    "dism_mount"
    "winpe_base"
    "temp_assets"
    "tmp"
    "windows/flutter/ephemeral"
    "linux/flutter/ephemeral"
)

for dir in "${dirs_to_remove[@]}"; do
    if [ -d "$dir" ]; then
        echo "  Removing directory: $dir..."
        rm -rf "$dir"
    fi
done

# Files to remove
files_to_remove=(
    ".flutter-plugins"
    ".flutter-plugins-dependencies"
    "diagnose.obj"
)

for file in "${files_to_remove[@]}"; do
    if [ -f "$file" ]; then
        echo "  Removing file: $file..."
        rm -f "$file"
    fi
done

# Wildcard cleanup
echo "  Removing root .iso files..."
rm -f *.iso

echo "  Removing .iml, .ipr, .iws files..."
rm -f *.iml *.ipr *.iws

echo "  Removing compiled executables in inno/..."
if [ -d "inno" ]; then
    rm -f inno/*.exe
fi

echo "  Removing python pycache and compiled files..."
find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null
find . -type f -name "*.pyc" -delete 2>/dev/null

echo "  Removing logs..."
rm -f *.log
if [ -d "scratch" ]; then
    rm -f scratch/*.log
fi

echo
echo "[3/3] Done! Project cleaned successfully."
echo "You can now safely zip or migrate the project directory."
echo
