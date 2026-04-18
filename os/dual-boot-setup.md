# Dual Boot Setup — Bazzite Linux + Windows

## Install Order

**Always install Windows first, then Linux.**

Windows assumes it owns the entire disk and will overwrite the bootloader. Installing Linux second lets GRUB take over the boot menu cleanly.

1. Install Windows 11 — limit to 250GB partition during setup
2. Boot Windows, complete initial setup, apply updates
3. Disable Fast Startup (critical — see below)
4. Install Bazzite (or chosen Linux distro)
5. GRUB takes over the EFI partition and presents a boot menu

## Partition Layout

| Partition | Size | Filesystem | Purpose |
|-----------|------|-----------|---------|
| EFI System | 512 MB | FAT32 | Shared bootloader (EFI) |
| Windows | 250 GB | NTFS | Windows OS + anti-cheat games |
| Linux | ~1.45 TB | Btrfs | Bazzite OS, apps, home directory |
| Swap | 32 GB | swap | Linux swap / suspend-to-disk |

Total: ~1.73 TB on a 2 TB NVMe drive (leaving ~270 GB spare for alignment/overhead).

## BIOS Settings (ASUS ROG CROSSHAIR X870E HERO)

| Setting | Value | Reason |
|---------|-------|--------|
| Secure Boot | **Enabled** | Required for Windows 11; Bazzite supports it |
| TPM | **Enabled** | Required for Windows 11 |
| CSM | **Disabled** | UEFI mode only — required for modern dual boot |
| Fast Boot | **Disabled** | Can cause issues with GRUB detecting drives |

## Disable Fast Startup in Windows (Critical)

Fast Startup leaves the NTFS partition in a "hibernated" state. Linux cannot safely mount a hibernated NTFS partition, causing filesystem errors or data loss.

1. Open Control Panel → Power Options → Choose what the power buttons do
2. Click "Change settings that are currently unavailable"
3. Uncheck **Turn on fast startup**
4. Save changes

## GRUB Boot Menu

After Linux installation, GRUB manages the boot menu:

- Bazzite/Linux entry (default, boots after timeout)
- Windows Boot Manager entry

GRUB timeout is typically 5-10 seconds. To change default or timeout, edit `/etc/default/grub` and run `sudo grub2-mkconfig -o /boot/grub2/grub.cfg`.

## UEFI Boot Menu

On ASUS boards, press **F8** at POST to access the UEFI boot device menu. Useful for one-time boot into Windows without changing GRUB default.

## Clock Fix

Windows stores hardware clock as local time; Linux stores it as UTC. This causes the displayed time to shift when switching between OSes.

Fix in Linux:

```bash
timedatectl set-local-rtc 1
```

Or fix in Windows (preferred if leaving Linux as UTC):

```
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\TimeZoneInformation" /v RealTimeIsUniversal /d 1 /t REG_DWORD /f
```
