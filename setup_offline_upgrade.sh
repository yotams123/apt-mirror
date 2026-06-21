#!/bin/bash
# setup_offline_upgrade.sh
# Downloads Ubuntu release upgrade meta-release files from changelogs.ubuntu.com to disk.

set -e

# Configuration: Default target directory is ./ubuntu_upgrade_mirror
TARGET_DIR="${1:-./ubuntu_upgrade_mirror}"

echo "Creating destination directory at $TARGET_DIR..."
mkdir -p "$TARGET_DIR"

# Download meta-release files (uses -N for timestamping to only download if newer)
echo "Downloading meta-release files from changelogs.ubuntu.com..."
FILES=(
    "meta-release"
    "meta-release-development"
    "meta-release-lts"
    "meta-release-development"
    "meta-release-proposed"
    "meta-release-lts-proposed"
)

for file in "${FILES[@]}"; do
    echo "  -> Downloading $file"
    wget -q -N -P "$TARGET_DIR" "http://changelogs.ubuntu.com/$file" || {
        echo "Warning: Could not download $file, skipping."
        continue
    }
done

echo "Download complete. Files saved to $TARGET_DIR"
