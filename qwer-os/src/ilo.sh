#!/bin/bash

# qwer OS Package Manager Wrapper: ilo
# A beginner-friendly wrapper for Gentoo's emerge

COMMAND=$1
SHIFT_ARGS="${@:2}"

case $COMMAND in
    install|i)
        echo ">>> ilo: Installing packages..."
        sudo emerge --ask --verbose $SHIFT_ARGS
        ;;
    remove|r)
        echo ">>> ilo: Removing packages..."
        sudo emerge --ask --unmerge $SHIFT_ARGS
        ;;
    update|u)
        echo ">>> ilo: Syncing repositories and updating system..."
        sudo emerge --sync
        sudo emerge --ask --verbose --update --deep --newuse @world
        ;;
    search|s)
        echo ">>> ilo: Searching for packages..."
        emerge --search $SHIFT_ARGS
        ;;
    info)
        echo ">>> ilo: System info..."
        emerge --info
        ;;
    kernel-update)
        echo ">>> ilo: Updating Zen Kernel..."
        sudo emerge --ask sys-kernel/zen-sources
        sudo genkernel all
        sudo grub-mkconfig -o /boot/grub/grub.cfg
        echo ">>> ilo: Kernel update complete. Please reboot."
        ;;
    clean)
        echo ">>> ilo: Cleaning up dependencies..."
        sudo emerge --ask --depclean
        ;;
    *)
        echo "Usage: ilo [install|remove|update|search|info|clean] [packages]"
        echo "  install (i) : Install packages"
        echo "  remove (r)  : Remove packages"
        echo "  update (u)  : Sync and update system"
        echo "  search (s)  : Search for packages"
        echo "  info        : Show system information"
        echo "  clean       : Remove unused dependencies"
        ;;
esac
