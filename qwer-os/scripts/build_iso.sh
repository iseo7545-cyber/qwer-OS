#!/bin/bash
# qwer OS ISO Build Script (Mock)

echo ">>> Building qwer OS ISO..."
echo ">>> Using Gentoo base with OpenRC"

# Copy ilo to iso_root
mkdir -p qwer-os/iso_root/usr/bin
cp qwer-os/src/ilo.sh qwer-os/iso_root/usr/bin/ilo
chmod +x qwer-os/iso_root/usr/bin/ilo

# Set up Calamares configs
mkdir -p qwer-os/iso_root/etc/calamares
cp -r qwer-os/config/calamares/* qwer-os/iso_root/etc/calamares/

echo ">>> Setting default DE to KDE..."
# (Logic to ensure KDE is pre-installed in stage3/overlay)

echo ">>> ISO generation process initiated (Placeholder)..."
# In a real scenario, this would call 'catalyst' or a similar tool.
echo ">>> Done! Check build/ directory for the .iso file."
