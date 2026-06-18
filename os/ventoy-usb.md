# Ventoy USB Toolkit

## 1. Purpose

This document tracks the contents of the Ventoy USB used for:

- PC bring-up
- BIOS recovery and firmware prep
- operating system installation
- offline driver staging
- diagnostics and recovery
- post-install validation

This USB is meant to support a **Linux-first desktop workflow** with **Windows kept as a fallback / anti-cheat appliance**. That means Linux install media and recovery tooling are first-class citizens, while Windows drivers and utilities are kept available for post-install cleanup, troubleshooting, and limited Windows use.

Section 2 reflects the contents currently present on the Ventoy USB. Section 3 tracks items still worth downloading or organizing.

## 2. Current Hierarchy

- **BIOS**
  - **Archive**
  - **Current**
- **Checksums**
- **Docs**
  - **Build-Notes**
  - **License-Keys**
  - **Manuals**
    - **Motherboard**
    - **GPU**
    - **PSU**
    - **Case**
    - **Cooler**
    - **Storage**
    - **Monitor**
  - **Network-Info**
  - NOTES:
    - Avoid storing plaintext secrets here when possible.
    - If `License-Keys` or `Network-Info` contain sensitive material, prefer encrypted files or a password manager reference instead of raw credentials.
    - `Docs/Manuals` is reserved for hardware manuals only.
    - Software, utility, or ISO-specific documentation should live with the related artifact whenever practical.
- **Drivers**
  - **GPU**
  - **Motherboard**
    - **Audio**
    - **Chipset**
    - **LAN**
    - **Wifi-Bluetooth**
  - **Storage**
  - NOTES:
    - This area is for offline driver packages needed after Windows installation or when network access is not yet available.
    - Most of these drivers are primarily for Windows support, recovery, and appliance-partition maintenance.
- **ISOS**
  - **Diagnostic**
    - *memtest86-iso-iso*
  - **Linux-Full**
    - *ubuntu-26.04-desktop-amd64.iso*
  - **Linux-Live**
    - *kali-linux-2026.1-live-amd64.iso*
    - *kali-linux-2026.1-live-everything-amd64.iso*
  - **Recovery**
    - *clonezilla-live-3.3.1-35-amd64.iso*
    - *gparted-live-1.8.1-3-amd64.iso*
    - *systemrescue-13.00-amd64.iso*
  - **Windows**
    - *Win11_25H2_English_x64_v2.iso*
  - NOTES:
    - This section reflects the current bootable media already present on the Ventoy USB.
    - Linux media is split into full/install-focused images and live-focused images for easier scanning.
    - Supporting documentation for an ISO should be nested under the related ISO entry when present.
    - If Secure Boot is enabled, some install/recovery workflows may require extra attention depending on the ISO and Ventoy behavior.
- **Utilities**
  - **Firmware-Tools**
  - **Windows**
    - **Cinebench**
    - **CrystalDiskInfo**
    - **CrystalDiskMark**
    - **GPU-Z**
    - **HWiNFO64**
    - **OCCT**
    - **Prime95**
  - NOTES:
    - These are post-boot utilities used for validation, monitoring, benchmarking, and stress testing.
    - The utility names above are folders intended to hold downloaded packages for each tool.
    - Supporting documentation for utilities or firmware tools should be nested under the related primary file when present.

## 3. Downloads Still Needed

- **BIOS**
  - **Archive**
  - **Current**
    - *latest ASUS ROG CROSSHAIR X870E HERO BIOS file* (REQUIRED)
      - Source page:
        - <https://www.asus.com/us/supportonly/rog%20crosshair%20x870e%20hero/helpdesk_download/>
      - Destination:
        - `BIOS/Current/`
      - NOTES:
        - Keep the newest intended-to-use BIOS here.
        - When replaced later, move older known-good BIOS files into `BIOS/Archive/`.
      - Supporting:
        - *ASUS BIOS flash instructions or saved guidance* (RECOMMENDED)
          - Source page:
            - <https://rog.asus.com/us/motherboards/rog-crosshair/rog-crosshair-x870e-hero/helpdesk_manual/>
          - Destination:
            - `BIOS/Current/`

- **Checksums**
  - *saved checksums or verification notes for critical downloads* (RECOMMENDED)
    - NOTES:
      - Prioritize checksums for BIOS files, major ISOs, and critical drivers when available.

- **Docs**
  - **Build-Notes**
  - **License-Keys**
  - **Manuals**
    - **Motherboard**
      - *motherboard user manual PDF* (REQUIRED)
        - Source page:
          - <https://rog.asus.com/us/motherboards/rog-crosshair/rog-crosshair-x870e-hero/helpdesk_manual/>
        - Direct PDF:
          - <https://dlcdnets.asus.com/pub/ASUS/mb/SocketAM5/ROG_CROSSHAIR_X870E_HERO/E24010_ROG_CROSSHAIR_X870E_HERO_EM_WEB.pdf>
        - Destination:
          - `Docs/Manuals/Motherboard/`
      - *motherboard BIOS manual PDF* (REQUIRED)
        - Source page:
          - <https://rog.asus.com/us/motherboards/rog-crosshair/rog-crosshair-x870e-hero/helpdesk_manual/>
        - Direct PDF:
          - <https://dlcdnets.asus.com/pub/ASUS/mb/13MANUAL/E25062_ROG_X870E_Series_BIOS_Manual_EM_WEB.pdf?model=ROG+CROSSHAIR+X870E+HERO>
        - Destination:
          - `Docs/Manuals/Motherboard/`
        - NOTES:
          - Especially useful for first boot, EXPO, fan control, boot order, Secure Boot, and troubleshooting.
    - **GPU**
      - *GPU manual PDF or official support-page export* (RECOMMENDED)
        - Source page:
          - <https://rog.asus.com/us/graphics-cards/graphics-cards/rog-strix/rog-strix-rtx5070ti-16g-gaming/helpdesk/>
        - Destination:
          - `Docs/Manuals/GPU/`
        - NOTES:
          - Save the official support/helpdesk page or any downloadable manual/resources ASUS provides for the exact installed GPU model.
    - **PSU**
      - *PSU manual PDF or quick-start guide* (RECOMMENDED)
        - Source page:
          - <https://www.corsair.com/us/en/p/psu/CP-9020271-NA/rmx-series-rm1000x-fully-modular-power-supply-cp-9020271-na>
        - Destination:
          - `Docs/Manuals/PSU/`
        - NOTES:
          - Save the official product/support page and any linked quick-start or manual content relevant to the RM1000x (2024).
    - **Case**
      - *case manual PDF* (RECOMMENDED)
        - Source page:
          - <https://support.fractal-design.com/support/solutions/articles/4000166017-meshify-2-xl-user-guide>
        - Direct PDF:
          - <https://www.fractal-design.com/app/uploads/2023/08/Meshify_2_XL_Manual-v.1.2-2023-08-21.pdf>
        - Destination:
          - `Docs/Manuals/Case/`
    - **Cooler**
      - *Noctua NH-U12A chromax.black manual PDF* (RECOMMENDED)
        - Source page:
          - <https://www.noctua.at/en/products/nh-u12a-chromax-black>
        - Direct PDF:
          - <https://cdn.noctua.at/media/noctua_nh_u12a_chromax.black_manual_en_web.pdf>
        - Destination:
          - `Docs/Manuals/Cooler/`
      - *Noctua NA-FH1 manual PDF* (RECOMMENDED)
        - Source page:
          - <https://www.noctua.at/en/products/na-fh1>
        - Direct PDF:
          - <https://cdn.noctua.at/media/noctua_na_fh1_manual_spot_en.pdf>
        - Destination:
          - `Docs/Manuals/Cooler/`
        - NOTES:
          - Worth keeping because the fan hub is a real dependency in this build, not just an accessory.
    - **Storage**
      - *SSD or NVMe manual / support PDF* (OPTIONAL)
        - Source page:
          - <https://www.samsung.com/us/memory-storage/ssd/>
        - Tools / support page:
          - <https://semiconductor.samsung.com/consumer-storage/support/tools/>
        - Destination:
          - `Docs/Manuals/Storage/`
    - **Monitor**
      - *monitor manual PDF* (OPTIONAL)
        - Source page:
          - Replace with the exact support/manual page for your display model
        - Destination:
          - `Docs/Manuals/Monitor/`
  - **Network-Info**

- **Drivers**
  - **GPU**
    - *latest NVIDIA GeForce driver package for RTX 5070 Ti* (REQUIRED)
      - Source page:
        - <https://www.nvidia.com/en-us/drivers/>
      - Destination:
        - `Drivers/GPU/`
      - NOTES:
        - Keep an offline installer available in case Windows networking or Windows Update is not ready yet.
    - *NVIDIA App or alternate official NVIDIA download path* (OPTIONAL)
      - Source page:
        - <https://www.nvidia.com/en-us/software/nvidia-app/>
      - Destination:
        - `Drivers/GPU/`
  - **Motherboard**
    - **Audio**
      - *latest ASUS/ROG audio driver package for X870E Hero* (RECOMMENDED)
        - Source page:
          - <https://www.asus.com/us/supportonly/rog%20crosshair%20x870e%20hero/helpdesk_download/>
        - Destination:
          - `Drivers/Motherboard/Audio/`
    - **Chipset**
      - *latest AMD chipset driver package* (REQUIRED)
        - Source page:
          - <https://www.amd.com/en/support/downloads/drivers.html/chipsets/am5/x870e.html>
        - Destination:
          - `Drivers/Motherboard/Chipset/`
        - NOTES:
          - One of the first Windows drivers to install after OS setup.
    - **LAN**
      - *all relevant onboard wired network driver packages listed for X870E Hero* (REQUIRED)
        - Source page:
          - <https://www.asus.com/us/supportonly/rog%20crosshair%20x870e%20hero/helpdesk_download/>
        - Destination:
          - `Drivers/Motherboard/LAN/`
        - NOTES:
          - Keep all applicable wired network packages available offline rather than assuming only one matters.
          - Useful if Windows does not automatically bring networking up cleanly.
    - **Wifi-Bluetooth**
      - *latest ASUS/ROG Wi-Fi/Bluetooth driver package for X870E Hero* (RECOMMENDED)
        - Source page:
          - <https://www.asus.com/us/supportonly/rog%20crosshair%20x870e%20hero/helpdesk_download/>
        - Destination:
          - `Drivers/Motherboard/Wifi-Bluetooth/`
  - **Storage**
    - *Samsung Magician installer* (RECOMMENDED)
      - Source page:
        - <https://semiconductor.samsung.com/consumer-storage/support/tools/>
      - Destination:
        - `Drivers/Storage/`
      - NOTES:
        - Useful for firmware checks, health monitoring, and drive management on the Samsung 990 Pro.
    - *Samsung NVMe driver package* (OPTIONAL)
      - Source page:
        - <https://semiconductor.samsung.com/consumer-storage/support/tools/>
      - Destination:
        - `Drivers/Storage/`
      - NOTES:
        - Lower priority than chipset, GPU, and network drivers.
        - Keep this only if Samsung currently provides a driver package you actually intend to use with the 990 Pro workflow.

- **ISOS**
  - **Diagnostic**
    - *MemTest86 guide PDF* (RECOMMENDED)
      - Source page:
        - <https://www.memtest86.com/userguide.html>
      - Destination:
        - `ISOS/Diagnostic/`
      - NOTES:
        - Software/tool documentation should live with the related utility or ISO rather than in `Docs/Manuals`.
  - **Linux-Full**
    - *latest Bazzite desktop ISO* (REQUIRED)
      - Source page:
        - <https://bazzite.gg/>
      - Install/documentation page:
        - <https://docs.bazzite.gg/General/Installation_Guide/install-guide/>
      - Destination:
        - `ISOS/Linux-Full/`
      - NOTES:
        - Primary Linux target for the new desktop build.
        - Ventoy may require extra Secure Boot handling depending on workflow.
    - *latest Fedora Workstation ISO* (RECOMMENDED)
      - Source page:
        - <https://fedoraproject.org/workstation/download>
      - Destination:
        - `ISOS/Linux-Full/`
      - NOTES:
        - Useful as a fallback or comparison distro if Bazzite install or hardware behavior needs a second opinion.
  - **Linux-Live**
  - **Recovery**
    - *Clonezilla documentation PDF* (RECOMMENDED)
      - Source page:
        - <https://clonezilla.org/clonezilla-live.php>
      - Destination:
        - `ISOS/Recovery/`
    - *SystemRescue documentation PDF* (OPTIONAL)
      - Source page:
        - <https://www.system-rescue.org/>
      - Destination:
        - `ISOS/Recovery/`
  - **Windows**
    - *Windows 11 installation / media creation page* (REFERENCE)
      - Source page:
        - <https://www.microsoft.com/software-download/windows11>
      - NOTES:
        - Windows media is kept for installation, repair, and appliance-partition maintenance rather than as the primary desktop path.

- **Utilities**
  - **Firmware-Tools**
    - *ASUS BIOS renaming or flash-prep utility, if needed* (OPTIONAL)
      - Source page:
        - <https://www.asus.com/us/supportonly/rog%20crosshair%20x870e%20hero/helpdesk_download/>
      - Destination:
        - `Utilities/Firmware-Tools/`
      - NOTES:
        - Only keep this if it is actually useful for the BIOS Flashback workflow.
    - *Ventoy quick reference or documentation PDF* (RECOMMENDED)
      - Source page:
        - <https://www.ventoy.net/en/doc_start.html>
      - Destination:
        - `Utilities/Firmware-Tools/`
  - **Windows**
    - **Cinebench**
      - *latest Cinebench package* (RECOMMENDED)
        - Source page:
          - <https://www.maxon.net/en/downloads>
        - Destination:
          - `Utilities/Windows/Cinebench/`
    - **CrystalDiskInfo**
      - *latest CrystalDiskInfo package* (REQUIRED)
        - Source page:
          - <https://crystalmark.info/en/software/crystaldiskinfo/>
        - Destination:
          - `Utilities/Windows/CrystalDiskInfo/`
    - **CrystalDiskMark**
      - *latest CrystalDiskMark package* (RECOMMENDED)
        - Source page:
          - <https://crystalmark.info/en/software/crystaldiskmark/>
        - Destination:
          - `Utilities/Windows/CrystalDiskMark/`
    - **GPU-Z**
      - *latest GPU-Z package* (RECOMMENDED)
        - Source page:
          - <https://www.techpowerup.com/gpuz/>
        - Destination:
          - `Utilities/Windows/GPU-Z/`
    - **HWiNFO64**
      - *latest HWiNFO64 package* (REQUIRED)
        - Source page:
          - <https://www.hwinfo.com/download/>
        - Destination:
          - `Utilities/Windows/HWiNFO64/`
    - **OCCT**
      - *latest OCCT package* (RECOMMENDED)
        - Source page:
          - <https://www.ocbase.com/download>
        - Destination:
          - `Utilities/Windows/OCCT/`
    - **Prime95**
      - *latest Prime95 package* (RECOMMENDED)
        - Source page:
          - <https://www.mersenne.org/download/>
        - Destination:
          - `Utilities/Windows/Prime95/`

## 4. Practical Priority Order

If time is limited, download and organize items in roughly this order:

1. latest motherboard BIOS
2. motherboard user manual
3. motherboard BIOS manual
4. AMD chipset driver
5. NVIDIA GPU driver
6. wired LAN driver packages
7. Bazzite ISO
8. Windows ISO
9. Wi-Fi / Bluetooth driver
10. case manual
11. cooler manual
12. NA-FH1 manual
13. HWiNFO64
14. CrystalDiskInfo
15. Fedora fallback ISO

This order reflects the likely first-boot and early troubleshooting needs for this specific build.

## 5. Maintenance Notes

- Verify checksums for newly downloaded ISOs, firmware files, drivers, utilities, and manuals whenever possible.
- Prioritize checksum verification for BIOS files, major OS images, and critical driver packages.
- Keep the latest known-good BIOS files in **BIOS** → **Current** and move superseded versions to **BIOS** → **Archive**.
- Review the USB contents periodically and remove stale or duplicate files that are no longer useful.
- Prefer stable, known-good install and recovery media over collecting too many overlapping tools.
- Keep hardware manuals in **Docs** → **Manuals** and store software/tool documentation with the related artifact.
- After major changes to the USB, test that Ventoy still boots and that newly added ISOs appear correctly in the menu.
- Keep sensitive information off the USB when possible, or store it in encrypted form.
