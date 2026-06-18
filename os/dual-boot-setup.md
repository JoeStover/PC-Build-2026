# Dual Boot Setup — Bazzite Linux + Windows

## Install Order

**Install Windows first, then install Bazzite.**

That remains the safest order for this build. Windows is more likely to assume control of boot configuration during installation, while Bazzite is designed to support dual-boot workflows afterward. Bazzite documentation also supports dual-booting with Windows, including shared-drive and separate-drive setups. ([docs.bazzite.gg](https://docs.bazzite.gg/General/Installation_Guide/install-guide/?utm_source=openai))

Recommended order:

1. Install Windows 11 first.
2. Complete initial Windows setup.
3. Apply Windows updates.
4. Disable Fast Startup in Windows.
5. If BitLocker is enabled, suspend or disable it before resizing partitions or installing Bazzite.
6. Install Bazzite.
7. After installation, verify boot order in firmware and confirm both operating systems are reachable. Bazzite’s documentation notes that if the OS Boot Manager puts Windows Boot Manager first, the system may boot directly into Windows until boot priority is corrected. ([docs.bazzite.gg](https://docs.bazzite.gg/General/Installation_Guide/install-guide/?utm_source=openai))

## Recommended Layout Strategy

For this build, keep the layout simple:

| Partition / Space | Suggested Size | Filesystem | Purpose |
|-------------------|----------------|-----------|---------|
| EFI System Partition | Existing Windows-created EFI | FAT32 | Shared boot files / boot entries |
| Windows | ~250 GB | NTFS | Windows 11 + anti-cheat-only game usage |
| Bazzite / Linux | Remainder of disk | Installer-managed | Primary OS, applications, and user data |

This keeps Windows intentionally limited while giving Linux the bulk of the NVMe capacity, which matches the Linux-first strategy documented elsewhere in this repo.

### Swap / Hibernation Note

Do **not** treat a separate fixed swap partition as mandatory.

For this build:
- a dedicated swap partition is **optional**
- only plan specifically for hibernation if you know you want it
- if you do not intend to use suspend-to-disk / hibernation, keep the setup simpler and let the installer’s default Linux storage strategy guide the result

This avoids locking in a large swap partition prematurely.

## BIOS Settings (ASUS ROG CROSSHAIR X870E HERO)

| Setting | Value | Reason |
|---------|-------|--------|
| Secure Boot | Enabled or temporarily disabled during install, depending on workflow | Windows 11 expects Secure Boot-capable hardware; Bazzite supports Secure Boot but requires Universal Blue key enrollment to boot correctly with Secure Boot enabled |
| TPM / fTPM | Enabled | Required for normal Windows 11 compliance |
| CSM | Disabled | Use UEFI-only boot; Bazzite documents that Secure Boot is incompatible with CSM / legacy mode |
| Fast Boot | Disabled during setup | Reduces confusion while validating boot entries and first dual-boot behavior |

Bazzite explicitly documents that Secure Boot is supported, but Universal Blue’s key must be enrolled or Bazzite may fail to boot when Secure Boot remains enabled. ([docs.bazzite.gg](https://docs.bazzite.gg/General/Installation_Guide/secure_boot?utm_source=openai))

## Secure Boot and Bazzite

Bazzite supports Secure Boot, but there is an important extra step:

- if Secure Boot is enabled, you must enroll Universal Blue’s signing key
- during install or first boot, Bazzite may prompt you to **Enroll MOK**
- if prompted for the password, Bazzite’s documentation says to enter:

```text
universalblue
```

Bazzite also documents a post-install method using:

```bash
ujust enroll-secure-boot-key
```

if key enrollment needs to be completed after installation. ([docs.bazzite.gg](https://docs.bazzite.gg/General/Installation_Guide/secure_boot?utm_source=openai))

### Practical recommendation

For the smoothest path, pick one of these approaches:

- **Approach A: keep Secure Boot enabled and complete Bazzite’s key-enrollment flow during or after install**
- **Approach B: temporarily disable Secure Boot for installation, then re-enable it after completing Bazzite’s documented enrollment process**

If Bazzite fails to boot under Secure Boot, the most likely cause is incomplete key enrollment rather than a bad installation. ([docs.bazzite.gg](https://docs.bazzite.gg/General/Installation_Guide/secure_boot?utm_source=openai))

## Shared Drive vs Separate Drive

### Shared drive
This is the likely plan for this build.

Bazzite’s current installation documentation says that for Windows dual boot on the **same drive**, the live ISO supports **automatic partitioning** for typical use cases. The same guide says manual partitioning on the live ISO is not the normal path for shared-drive dual boot. ([docs.bazzite.gg](https://docs.bazzite.gg/General/Installation_Guide/install-guide/?utm_source=openai))

Recommended shared-drive flow:

1. In Windows, disable Fast Startup.
2. In Windows, suspend or disable BitLocker if it is active.
3. In Windows Disk Management, shrink the Windows partition to leave space for Bazzite.
4. Boot the Bazzite installer.
5. Use the installer’s supported dual-boot flow.
6. After first boot into Bazzite, verify that Windows appears as a reachable boot option.

Bazzite’s post-install documentation says you may need to run:

```bash
ujust regenerate-grub
```

to add Windows to the GRUB menu after installation. ([docs.bazzite.gg](https://docs.bazzite.gg/General/Installation_Guide/install-guide/?utm_source=openai))

### Separate drive
If you later move to separate internal drives for Windows and Linux, Bazzite documentation says that using the motherboard’s **UEFI boot menu** may be more reliable than depending on GRUB to recognize every boot entry correctly across drives. ([docs.bazzite.gg](https://docs.bazzite.gg/General/Installation_Guide/install-guide/?utm_source=openai))

## Disable Fast Startup in Windows (Critical)

Fast Startup leaves the NTFS partition in a partially hibernated state. That can interfere with Linux safely accessing Windows filesystems.

Disable it in Windows:

1. Open **Control Panel**
2. Go to **Power Options**
3. Select **Choose what the power buttons do**
4. Click **Change settings that are currently unavailable**
5. Uncheck **Turn on fast startup**
6. Save changes

Bazzite’s dual-boot documentation explicitly calls out disabling fastboot/Fast Startup before installation. ([docs.bazzite.gg](https://docs.bazzite.gg/General/Installation_Guide/install-guide/?utm_source=openai))

## BitLocker Note

If Windows enables BitLocker by default, suspend or disable it before resizing partitions or installing Bazzite on the same drive.

This is a practical precaution for shared-drive dual boot and helps avoid installer or boot complications while the system layout is changing. Bazzite’s dual-boot instructions explicitly mention disabling BitLocker encryption as part of the same-drive workflow. ([docs.bazzite.gg](https://docs.bazzite.gg/General/Installation_Guide/install-guide/?utm_source=openai))

## Boot Selection After Installation

Do not assume boot behavior is “done” immediately after installation.

After both operating systems are installed:

1. Reboot into firmware / BIOS if necessary.
2. Verify the default boot entry is the one you actually want.
3. Confirm Windows is available as a selectable boot target.
4. Confirm Bazzite is available as a selectable boot target.

If the machine boots straight into Windows after Bazzite installation, check boot order first. Bazzite’s post-install docs specifically note that Windows Boot Manager may be placed first by the OS Boot Manager. ([docs.bazzite.gg](https://docs.bazzite.gg/General/Installation_Guide/post-installation/?utm_source=openai))

## UEFI Boot Menu

On ASUS boards, the one-time **UEFI boot menu** is useful for testing both operating systems without permanently changing defaults. This is especially useful during the first few boots after installation and anytime you want to verify that each boot path still works.

For separate-drive setups, Bazzite documentation specifically recommends using the motherboard’s UEFI boot menu if bootloader detection between drives is unreliable. ([docs.bazzite.gg](https://docs.bazzite.gg/General/Installation_Guide/install-guide/?utm_source=openai))

## Clock Fix (Only If You Actually See Time Drift)

Windows and Linux can disagree about how the hardware clock is stored. If you observe time drift after switching between operating systems, fix it deliberately rather than pre-emptively.

Linux-side option:

```bash
timedatectl set-local-rtc 1
```

Windows-side option:

```cmd
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\TimeZoneInformation" /v RealTimeIsUniversal /d 1 /t REG_DWORD /f
```

Only apply one strategy once you confirm you actually have a clock offset problem.

## Practical Summary

For this build, the intended dual-boot strategy is:

- Windows first
- Bazzite second
- same-drive dual boot is acceptable
- keep Windows limited to roughly 250 GB
- disable Fast Startup before installing Bazzite
- suspend or disable BitLocker before changing shared-drive partitions
- use UEFI-only boot with CSM disabled
- expect to complete Bazzite Secure Boot key enrollment if Secure Boot is enabled
- verify boot order manually after installation rather than assuming it will be perfect on first reboot
