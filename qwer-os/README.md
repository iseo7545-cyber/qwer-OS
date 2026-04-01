qwer OS: Beginner-Friendly Gentoo-based Linux

Overview
qwer OS is a Gentoo Linux-based distribution designed for ease of use. It features a modern GUI installer (Calamares) and a simplified package manager wrapper called ilo.

 Key Features
- Base: Gentoo Linux (OpenRC)
- Init System: OpenRC
- Package Manager: ilo (Wrapper for emerge)
- Desktop Environments: KDE Plasma (Default), GNOME, XFCE
- have install manager

Package Manager: ilo
- ilo simplifies Gentoo's complex package management into easy-to-use commands

- ilo install <pkg>: Install a package
  
- ilo remove <pkg>: Remove a package
  
- ilo update: Update the entire system

- ilo search <pkg>: Search for a package

  

Project Structure
- config/calamares/: Calamares installer configuration (5 steps)
- src/ilo.sh: Source for the ilo wrapper
- iso_root/: Root filesystem for the Live ISO
- scripts/: Build and automation scripts


YOU NEED TO TYPE SUDO WHEN YOU TYPE COMMANDS ON CMD
