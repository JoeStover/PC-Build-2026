# Ventoy USB README Blocks

These blocks are intended to be copied into `README.txt` files inside the matching folders on the Ventoy USB.

Each section below:
- names the target folder explicitly
- provides plain-text content inside a `text` block
- ends with a link back to the Table of Contents

<a id="toc"></a>

## Table of Contents

1. [README.txt](#1-readmetxt)
2. [BIOS/Current/README.txt](#2-bioscurrentreadmetxt)
3. [Docs/Manuals/Motherboard/README.txt](#3-docsmanualsmotherboardreadmetxt)
4. [Docs/Manuals/Cooler/README.txt](#4-docsmanualscoolerreadmetxt)
5. [Drivers/GPU/README.txt](#5-driversgpureadmetxt)
6. [Drivers/Motherboard/README.txt](#6-driversmotherboardreadmetxt)
7. [Drivers/Storage/README.txt](#7-driversstoragereadmetxt)
8. [ISOS/Linux-Full/README.txt](#8-isoslinux-fullreadmetxt)
9. [ISOS/Recovery/README.txt](#9-isosrecoveryreadmetxt)
10. [Utilities/Firmware-Tools/README.txt](#10-utilitiesfirmware-toolsreadmetxt)
11. [Utilities/Windows/README.txt](#11-utilitieswindowsreadmetxt)

---

## 1. README.txt

```text
========================================
Ventoy USB Toolkit
Root README
========================================

Purpose:
This USB is a multi-purpose build, recovery, and installation toolkit
for the PC build and related home-infrastructure work.

Primary Uses:
- BIOS recovery and firmware prep
- operating system installation
- offline Windows driver staging
- Linux install and recovery media
- diagnostics, validation, and troubleshooting
- post-install monitoring and stress-test utilities

Important Notes:
- This USB supports a Linux-first workflow with Windows kept as a
  fallback / anti-cheat appliance.
- Most items in Drivers/ are primarily for Windows use after install
  or during Windows recovery/troubleshooting.
- Most Linux driver support comes from the distro/kernel rather than
  offline driver packages on this USB.
- Keep hardware manuals under Docs/Manuals/.
- Keep software/tool-specific notes near the related artifact when practical.
- Prefer keeping original downloaded files when checksum validation matters.

Top-Level Folder Guide:
- BIOS/
  Current and archived motherboard BIOS files and related flash notes.

- Checksums/
  Saved hashes or verification notes for important downloads such as
  BIOS files, ISOs, and critical driver packages.

- Docs/
  Build notes, manuals, reference material, network notes, and other
  non-bootable documentation.

- Drivers/
  Offline Windows driver and support packages, mainly for motherboard,
  GPU, networking, and storage.

- ISOS/
  Bootable operating system, recovery, and diagnostic media used
  through Ventoy.

- Utilities/
  Post-boot tools for firmware help, monitoring, benchmarking,
  diagnostics, and validation.

Checksum Policy:
- Published checksums usually apply to the exact original downloaded
  file (ZIP, ISO, EXE, CAP, etc.).
- Verify checksums BEFORE extracting files whenever possible.
- If long-term verification matters, keep the original downloaded
  archive/file in addition to any extracted contents.
- Do not assume extracted folders can be verified against a checksum
  that was published for the original archive.

Windows vs Linux Guidance:
- Drivers/ is mostly for Windows setup, maintenance, and recovery.
- Linux installs should rely primarily on the distro, kernel, and
  official install guidance.
- Use ISOS/Linux-Full/ for full Linux installers and ISOS/Recovery/
  for repair tools.
- Use Utilities/Windows/ only after booting into Windows.

Recommended Use Order for PC Build First Boot and OS Install:
1. If the system fails to POST, check BIOS/Current/ and motherboard
   manuals first for BIOS Flashback workflow.
2. Use Docs/Manuals/Motherboard/ during first boot, BIOS setup,
   EXPO setup, Secure Boot review, and boot-order verification.
3. Install or boot the intended operating system from ISOS/ through
   the Ventoy menu.
4. If installing Windows, use Drivers/ after boot if networking,
   chipset, GPU, Wi-Fi, or storage tooling is needed offline.
5. If installing Linux, prioritize the distro installer and official
   install guidance before assuming offline driver packages are needed.
6. After OS installation, use Utilities/Windows/ for validation,
   monitoring, health checks, and stress testing where applicable.
7. Return to Checksums/ and Docs/ if you need to verify what was
   downloaded, installed, or staged.

Quick Build-Specific Reminder:
For the PC build guide, this USB is most relevant during:
- BIOS recovery / BIOS update
- Phase 9 (First Boot and BIOS Configuration)
- Phase 10 (Operating System Installation)
- Phase 11 (Validation, monitoring, and stress testing)

Safety / Handling Notes:
- Do not store plaintext secrets here unless absolutely necessary.
- Prefer encrypted records or password-manager references for sensitive info.
- Keep only useful, current files on the USB.
- Remove stale duplicates when they no longer add value.

========================================
```

[Back to Table of Contents](#toc)

---

## 2. BIOS/Current/README.txt

```text
========================================
Ventoy USB Folder README
========================================

Folder:
BIOS/Current

Purpose:
Store the current motherboard BIOS file intended for use.

Use Type:
Reference file for BIOS update / BIOS Flashback workflow

Bootable via Ventoy:
No

Priority:
Required

Expected Contents:
- Latest ASUS ROG CROSSHAIR X870E HERO BIOS file
- Optional saved BIOS flash instructions or notes

Source / Update Pages:
- ASUS motherboard downloads:
  https://www.asus.com/us/supportonly/rog%20crosshair%20x870e%20hero/helpdesk_download/
- ASUS motherboard manuals:
  https://rog.asus.com/us/motherboards/rog-crosshair/rog-crosshair-x870e-hero/helpdesk_manual/

Notes:
- Keep only the newest intended-to-use BIOS file here.
- Move older known-good BIOS files to BIOS/Archive.
- Verify checksum or version when possible.
- Use this folder first if BIOS update or BIOS recovery is needed.

========================================
```

[Back to Table of Contents](#toc)

---

## 3. Docs/Manuals/Motherboard/README.txt

```text
========================================
Ventoy USB Folder README
========================================

Folder:
Docs/Manuals/Motherboard

Purpose:
Store the most important motherboard documentation for build,
first boot, BIOS setup, troubleshooting, and recovery.

Use Type:
Reference / documentation

Bootable via Ventoy:
No

Priority:
Required

Expected Contents:
- ASUS ROG Crosshair X870E Hero user manual PDF
- ASUS X870E BIOS manual PDF

Source / Update Pages:
- ASUS motherboard manuals:
  https://rog.asus.com/us/motherboards/rog-crosshair/rog-crosshair-x870e-hero/helpdesk_manual/
- Direct user manual PDF:
  https://dlcdnets.asus.com/pub/ASUS/mb/SocketAM5/ROG_CROSSHAIR_X870E_HERO/E24010_ROG_CROSSHAIR_X870E_HERO_EM_WEB.pdf
- Direct BIOS manual PDF:
  https://dlcdnets.asus.com/pub/ASUS/mb/13MANUAL/E25062_ROG_X870E_Series_BIOS_Manual_EM_WEB.pdf?model=ROG+CROSSHAIR+X870E+HERO

Notes:
- This is one of the most useful folders on the USB.
- Use the BIOS manual for EXPO, fan control, Secure Boot,
  boot order, and troubleshooting.
- Keep updated copies here even if you also bookmark them online.

========================================
```

[Back to Table of Contents](#toc)

---

## 4. Docs/Manuals/Cooler/README.txt

```text
========================================
Ventoy USB Folder README
========================================

Folder:
Docs/Manuals/Cooler

Purpose:
Store cooler and fan hub documentation used during assembly,
rework, cable verification, and troubleshooting.

Use Type:
Reference / documentation

Bootable via Ventoy:
No

Priority:
Recommended

Expected Contents:
- Noctua NH-U12A chromax.black manual PDF
- Noctua NA-FH1 manual PDF

Source / Update Pages:
- Noctua NH-U12A chromax.black:
  https://www.noctua.at/en/products/nh-u12a-chromax-black
- Direct NH-U12A manual PDF:
  https://cdn.noctua.at/media/noctua_nh_u12a_chromax.black_manual_en_web.pdf
- Noctua NA-FH1:
  https://www.noctua.at/en/products/na-fh1
- Direct NA-FH1 manual PDF:
  https://cdn.noctua.at/media/noctua_na_fh1_manual_spot_en.pdf

Notes:
- The NA-FH1 manual is worth keeping because the fan hub is an
  active dependency in this build, not just an accessory.
- Use this folder if cooler remount, fan hub verification, or
  header/cable review is needed later.

========================================
```

[Back to Table of Contents](#toc)

---

## 5. Drivers/GPU/README.txt

```text
========================================
Ventoy USB Folder README
========================================

Folder:
Drivers/GPU

Purpose:
Store the offline NVIDIA GPU driver package and related GPU setup files.

Use Type:
Installer / package

Bootable via Ventoy:
No

Priority:
Required

Expected Contents:
- Latest NVIDIA GeForce driver package for RTX 5070 Ti
- Optional NVIDIA App installer or related official NVIDIA tooling

Source / Update Pages:
- NVIDIA drivers:
  https://www.nvidia.com/en-us/drivers/
- NVIDIA App:
  https://www.nvidia.com/en-us/software/nvidia-app/

Notes:
- Keep an offline driver installer here in case Windows networking,
  Windows Update, or automatic driver delivery is not ready yet.
- Prefer the official NVIDIA package you actually intend to install.
- This folder is primarily for Windows setup and recovery use.

========================================
```

[Back to Table of Contents](#toc)

---

## 6. Drivers/Motherboard/README.txt

```text
========================================
Ventoy USB Folder README
========================================

Folder:
Drivers/Motherboard

Purpose:
Store offline motherboard driver packages needed after Windows
installation or during Windows troubleshooting.

Use Type:
Installer / package

Bootable via Ventoy:
No

Priority:
Required / Recommended depending on subfolder

Expected Subfolders:
- Audio
- Chipset
- LAN
- Wifi-Bluetooth

Most Important Items:
- AMD chipset driver
- Wired LAN driver packages
- Wi-Fi / Bluetooth driver package
- Audio driver package

Source / Update Page:
- ASUS motherboard downloads:
  https://www.asus.com/us/supportonly/rog%20crosshair%20x870e%20hero/helpdesk_download/
- AMD chipset downloads:
  https://www.amd.com/en/support/downloads/drivers.html/chipsets/am5/x870e.html

Notes:
- Chipset is one of the first Windows drivers to install.
- Keep all applicable wired LAN packages available offline rather
  than assuming only one matters.
- This folder is primarily for Windows setup, cleanup, and recovery.
- If subfolder-specific READMEs are ever created, this file can stay
  as the high-level overview.

========================================
```

[Back to Table of Contents](#toc)

---

## 7. Drivers/Storage/README.txt

```text
========================================
Ventoy USB Folder README
========================================

Folder:
Drivers/Storage

Purpose:
Store storage-management tools and optional storage-related driver
packages for the Samsung 990 Pro.

Use Type:
Installer / package

Bootable via Ventoy:
No

Priority:
Recommended / Optional

Expected Contents:
- Samsung Magician installer
- Optional Samsung NVMe driver package

Source / Update Pages:
- Samsung consumer storage tools:
  https://semiconductor.samsung.com/consumer-storage/support/tools/
- Samsung SSD overview:
  https://www.samsung.com/us/memory-storage/ssd/

Notes:
- Samsung Magician is more important than the optional NVMe driver.
- Use Samsung Magician for firmware checks, health monitoring,
  and drive-management tasks.
- Keep the NVMe driver only if Samsung currently provides one you
  actually intend to use for this system.

========================================
```

[Back to Table of Contents](#toc)

---

## 8. ISOS/Linux-Full/README.txt

```text
========================================
Ventoy USB Folder README
========================================

Folder:
ISOS/Linux-Full

Purpose:
Store the main Linux installation media for the desktop build.

Use Type:
Bootable image

Bootable via Ventoy:
Yes

Priority:
Required / Recommended depending on image

Expected Contents:
- Latest Bazzite desktop ISO
- Latest Fedora Workstation ISO

Source / Update Pages:
- Bazzite:
  https://bazzite.gg/
- Bazzite install guide:
  https://docs.bazzite.gg/General/Installation_Guide/install-guide/
- Fedora Workstation:
  https://fedoraproject.org/workstation/download

Notes:
- Bazzite is the primary Linux target for this build.
- Fedora Workstation is a fallback or comparison distro.
- If Secure Boot is enabled, Ventoy workflows may require extra care
  depending on the image and boot flow.
- These files should be directly bootable from the Ventoy menu.

========================================
```

[Back to Table of Contents](#toc)

---

## 9. ISOS/Recovery/README.txt

```text
========================================
Ventoy USB Folder README
========================================

Folder:
ISOS/Recovery

Purpose:
Store recovery and repair boot media for partition work,
backup/restore, and offline rescue tasks.

Use Type:
Bootable image

Bootable via Ventoy:
Yes

Priority:
Recommended

Expected Contents:
- Clonezilla Live ISO
- GParted Live ISO
- SystemRescue ISO
- Optional saved documentation related to those tools

Source / Update Pages:
- Clonezilla:
  https://clonezilla.org/clonezilla-live.php
- GParted Live:
  https://gparted.org/livecd.php
- SystemRescue:
  https://www.system-rescue.org/

Notes:
- These files should be directly bootable from the Ventoy menu.
- Use this folder for repair, imaging, partitioning, and rescue work.
- Keep only current, known-good recovery images where practical.

========================================
```

[Back to Table of Contents](#toc)

---

## 10. Utilities/Firmware-Tools/README.txt

```text
========================================
Ventoy USB Folder README
========================================

Folder:
Utilities/Firmware-Tools

Purpose:
Store firmware-related helper tools and saved reference material
used during BIOS prep, Ventoy use, or firmware troubleshooting.

Use Type:
Reference / utility

Bootable via Ventoy:
No

Priority:
Recommended / Optional depending on item

Expected Contents:
- ASUS BIOS renaming or flash-prep utility if needed
- Ventoy quick reference or saved documentation
- Optional firmware notes or saved instructions

Source / Update Pages:
- ASUS motherboard downloads:
  https://www.asus.com/us/supportonly/rog%20crosshair%20x870e%20hero/helpdesk_download/
- Ventoy documentation:
  https://www.ventoy.net/en/doc_start.html

Notes:
- Only keep ASUS flash-prep utilities here if they are actually useful
  for the BIOS Flashback workflow.
- This folder is best used for saved instructions and lightweight helper
  tools rather than large installers.

========================================
```

[Back to Table of Contents](#toc)

---

## 11. Utilities/Windows/README.txt

```text
========================================
Ventoy USB Folder README
========================================

Folder:
Utilities/Windows

Purpose:
Store post-boot Windows utilities used for monitoring, validation,
benchmarking, and stress testing.

Use Type:
Usable directly from USB after boot or installer / package,
depending on the specific tool

Bootable via Ventoy:
No

Priority:
Mixed

Expected Subfolders:
- Cinebench
- CrystalDiskInfo
- CrystalDiskMark
- GPU-Z
- HWiNFO64
- OCCT
- Prime95

Important Items:
- HWiNFO64
- CrystalDiskInfo
- GPU-Z
- CrystalDiskMark
- OCCT
- Cinebench
- Prime95

Source / Update Pages:
- Cinebench:
  https://www.maxon.net/en/downloads
- CrystalDiskInfo:
  https://crystalmark.info/en/software/crystaldiskinfo/
- CrystalDiskMark:
  https://crystalmark.info/en/software/crystaldiskmark/
- GPU-Z:
  https://www.techpowerup.com/gpuz/
- HWiNFO64:
  https://www.hwinfo.com/download/
- OCCT:
  https://www.ocbase.com/download
- Prime95:
  https://www.mersenne.org/download/

Notes:
- Prefer portable versions when that is practical and trustworthy.
- Use this folder after booting into Windows, not from the Ventoy menu.
- HWiNFO64 and CrystalDiskInfo are among the most useful early
  validation tools for this build.

========================================
```

[Back to Table of Contents](#toc)
