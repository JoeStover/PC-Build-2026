# OS Strategy

## Philosophy: Linux-First, Windows as Appliance

The goal is to run Linux as the primary operating system on the new desktop and treat Windows as a last-resort partition for games that require kernel-level anti-cheat. Boot into Windows only when forced.

## Recommended Distributions

| Distro | Target Device | Reason |
|--------|--------------|--------|
| **Bazzite** | Desktop, ASUS handheld | Immutable Fedora-based, gaming-optimized, NVIDIA-ready out of box |
| **Nobara** | Desktop (alternative) | Fedora-based, gaming patches, more traditional install |
| **Fedora** | Desktop (manual control) | Full control, no gaming-specific tweaks pre-applied |
| **Bazzite** | ASUS handheld | SteamOS-like experience on non-Steam hardware |

## Per-Device OS Plan

| Device | OS | Notes |
|--------|-----|-------|
| Desktop (new build) | Bazzite Linux + Windows 250GB | Bazzite primary, Windows for anti-cheat only |
| Surface Pro (ARM) | Windows 11 (keep) | Thin client — Moonlight into Linux desktop |
| ThinkPad P1 Gen 1 | Fedora or Bazzite | Excellent Linux hardware support, first Linux experiment candidate |
| ASUS handheld | Bazzite | SteamOS-like experience |
| Wife's laptop | Windows 11 (keep) | Don't disrupt her workflow |
| Mini PC 1 | Home Assistant OS | Dedicated smart home hub |
| Mini PC 2 | Debian/Ubuntu Server | AdGuard Home, network DNS |

## Windows Partition Strategy

- **Size:** ~250GB — anti-cheat games only
- **Philosophy:** "Windows as appliance" — boot into it only when forced
- **Long-term:** shrink or delete as anti-cheat landscape improves on Linux

## Apple Devices

iPhones and iPads stay on iOS/iPadOS. Integrate via Google services, iCloud web, or SMB via the Files app for NAS access.

## Files in This Folder

| File | Description |
|------|-------------|
| [dual-boot-setup.md](./dual-boot-setup.md) | Partition layout, install order, BIOS settings, GRUB |
| [linux-desktop-replacement.md](./linux-desktop-replacement.md) | App equivalents, pain points, adjustment timeline |
| [linux-gaming.md](./linux-gaming.md) | Steam, Proton, Proton-GE, gamemode, MangoHud, anti-cheat |
| [windows-minimization.md](./windows-minimization.md) | Windows-as-appliance setup, disabling annoyances, exit ramp |
| [remote-access.md](./remote-access.md) | Sunshine/Moonlight, Tailscale, SSH, Surface Pro as thin client |
