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

- NOTES:
  - No pending downloads have been added to this section yet.
  - Add missing files here only after identifying a specific need.
  - Keep items in this section organized under the folder where they should ultimately live.
  - Once obtained, move the entry from this section into Section 2 so the current hierarchy remains truthful.

## 4. Maintenance Notes

- Verify checksums for newly downloaded ISOs, firmware files, drivers, and utilities whenever possible.
- Keep the latest known-good BIOS files in **BIOS** → **Current** and move superseded versions to **BIOS** → **Archive**.
- Review the USB contents periodically and remove stale or duplicate files that are no longer useful.
- Prefer stable, known-good install and recovery media over collecting too many overlapping tools.
- After major changes to the USB, test that Ventoy still boots and that newly added ISOs appear correctly in the menu.
- Keep sensitive information off the USB when possible, or store it in encrypted form.
