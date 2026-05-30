# Ventoy USB Toolkit

## 1. Purpose

This document tracks the contents of the Ventoy USB used for PC bring-up, operating system installation, recovery, diagnostics, firmware prep, offline drivers, and post-install validation.

Section 2 reflects the contents currently present on the Ventoy USB. Items not yet downloaded are tracked separately in Section 3.

## 2. Current Hierarchy

- **BIOS**
  - **Archive**
  - **Current**
- **Checksums**
- **Docs**
  - **Build-Notes**
  - **License-Keys**
  - **Manuals**
  - **Network-Info**
  - NOTES:
    - Avoid storing plaintext secrets here when possible.
    - If `License-Keys` or `Network-Info` contain sensitive material, prefer encrypted files or a password manager reference instead of raw credentials.
- **Drivers**
  - **GPU**
  - **Motherboard**
    - **Audio**
    - **Chipset**
    - **LAN**
    - **Wifi-Bluetoth**
  - **Storage**
  - NOTES:
    - This area is for offline driver packages needed after Windows installation or when network access is not yet available.
- **ISOS**
  - **Diagnostic**
    - *memtest86-iso-iso*
  - **Linux**
    - *kali-linux-2026.1-live-amd64.iso*
    - *kali-linux-2026.1-live-everything-amd64.iso*
    - *ubuntu-26.04-desktop-amd64.iso*
  - **Recovery**
    - *clonezilla-live-3.3.1-35-amd64.iso*
    - *gparted-live-1.8.1-3-amd64.iso*
    - *systemrescue-13.00-amd64.iso*
  - **Windows**
    - *Win11_25H2_English_x64_v2.iso*
  - NOTES:
    - This section reflects the current bootable media already present on the Ventoy USB.
    - Linux entries currently include live and install-style media together because that is how the USB is currently organized.
- **Utilities**
  - **Firmware-Tools**
  - **Windows**
    - *Cinebench*
    - *CrystalDiskInfo*
    - *CrystalDiskMark*
    - *GPU-Z*
    - *HWiNFO64*
    - *OCCT*
    - *Prime95*
  - NOTES:
    - These are post-boot utilities used for validation, monitoring, benchmarking, and stress testing.

## 3. Downloads Still Needed

- **BIOS**
  - **Current**
    - *latest ASUS ROG CROSSHAIR X870E HERO BIOS file* (REQUIRED)
      - Source:
        - ASUS support page for the ROG Crosshair X870E Hero motherboard.
      - Destination:
        - `BIOS/Current/`
      - NOTES:
        - Keep the newest intended-to-use BIOS here.
        - When replaced later, move older known-good BIOS files into `BIOS/Archive/`.
- **Drivers**
  - **GPU**
    - *latest NVIDIA GeForce driver package for RTX 5070 Ti* (REQUIRED)
      - Source:
        - NVIDIA driver download page.
      - Destination:
        - `Drivers/GPU/`
      - NOTES:
        - Keep an offline installer available in case Windows networking or Windows Update is not ready yet.
  - **Motherboard**
    - **Audio**
      - *latest ASUS/ROG audio driver package for X870E Hero* (RECOMMENDED)
        - Source:
          - ASUS support page for the ROG Crosshair X870E Hero motherboard.
        - Destination:
          - `Drivers/Motherboard/Audio/`
    - **Chipset**
      - *latest AMD chipset driver package* (REQUIRED)
        - Source:
          - AMD chipset driver download page.
        - Destination:
          - `Drivers/Motherboard/Chipset/`
        - NOTES:
          - One of the first Windows drivers to install after OS setup.
    - **LAN**
      - *latest ASUS/ROG LAN driver package for X870E Hero* (RECOMMENDED)
        - Source:
          - ASUS support page for the ROG Crosshair X870E Hero motherboard.
        - Destination:
          - `Drivers/Motherboard/LAN/`
        - NOTES:
          - Useful if Windows does not automatically bring networking up cleanly.
    - **Wifi-Bluetoth**
      - *latest ASUS/ROG Wi-Fi/Bluetooth driver package for X870E Hero* (RECOMMENDED)
        - Source:
          - ASUS support page for the ROG Crosshair X870E Hero motherboard.
        - Destination:
          - `Drivers/Motherboard/Wifi-Bluetoth/`
        - NOTES:
          - Matches current folder spelling; rename folder later if you standardize it to `Wifi-Bluetooth`.
  - **Storage**
    - *Samsung Magician installer* (RECOMMENDED)
      - Source:
        - Samsung support/download page.
      - Destination:
        - `Drivers/Storage/`
      - NOTES:
        - Useful for firmware checks, health monitoring, and drive management on the Samsung 990 Pro.
    - *Samsung NVMe driver package* (OPTIONAL)
      - Source:
        - Samsung support/download page.
      - Destination:
        - `Drivers/Storage/`
- **ISOS**
  - **Linux**
    - *latest Bazzite desktop ISO* (REQUIRED)
      - Source:
        - Bazzite official download page.
      - Destination:
        - `ISOS/Linux/`
      - NOTES:
        - Primary Linux target for the new desktop build.
    - *latest Fedora Workstation ISO* (RECOMMENDED)
      - Source:
        - Fedora Workstation official download page.
      - Destination:
        - `ISOS/Linux/`
      - NOTES:
        - Useful as a fallback or comparison distro if you later move on from Bazzite.
- **Utilities**
  - **Firmware-Tools**
    - *ASUS BIOS renaming or flash-prep utility, if needed* (OPTIONAL)
      - Source:
        - ASUS support resources for the ROG Crosshair X870E Hero motherboard.
      - Destination:
        - `Utilities/Firmware-Tools/`
      - NOTES:
        - Only keep this if it is actually useful for your BIOS Flashback workflow.

## 4. Maintenance Notes

- Verify checksums for newly downloaded ISOs, firmware files, drivers, and utilities whenever possible.
- Keep the latest known-good BIOS files in **BIOS** → **Current** and move superseded versions to **BIOS** → **Archive**.
- Review the USB contents periodically and remove stale or duplicate files that are no longer useful.
- Prefer stable, known-good install and recovery media over collecting too many overlapping tools.
- After major changes to the USB, test that Ventoy still boots and that newly added ISOs appear correctly in the menu.
- Keep sensitive information off the USB when possible, or store it in encrypted form.
