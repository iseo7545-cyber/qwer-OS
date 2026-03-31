# qwer OS: Beginner-Friendly Gentoo-based Linux

## 🚀 Overview
qwer OS is a Gentoo Linux-based distribution designed for ease of use. It features a modern GUI installer (Calamares) and a simplified package manager wrapper called `ilo`.

### Key Features
- **Base:** Gentoo Linux (OpenRC)
- **Init System:** OpenRC
- **Package Manager:** `ilo` (Wrapper for `emerge`)
- **Desktop Environments:** KDE Plasma (Default), GNOME, XFCE
- **Installer:** Calamares (GUI-based, 5 steps)

## 📦 Package Manager: ilo
`ilo` simplifies Gentoo's complex package management into easy-to-use commands:
- `ilo install <pkg>`: Install a package
- `ilo remove <pkg>`: Remove a package
- `ilo update`: Update the entire system
- `ilo search <pkg>`: Search for a package

## 🛠 Project Structure
- `config/calamares/`: Calamares installer configuration (5 steps)
- `src/ilo.sh`: Source for the `ilo` wrapper
- `iso_root/`: Root filesystem for the Live ISO
- `scripts/`: Build and automation scripts

## 🏗 Installation Steps (GUI)
1. **Language:** Select your preferred language (Step 1)
2. **Mirror:** Choose the fastest Gentoo mirror (Step 2)
3. **Keyboard:** Configure your keyboard layout (Step 3)
4. **Partitioning:** Choose between "Use Entire Disk" or "Manual Partitioning" (Step 4)
5. **Installation:** Finalize settings and install (Step 5)
