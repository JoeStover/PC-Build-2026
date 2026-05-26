# Home Infrastructure 2026

A comprehensive home infrastructure project documenting everything from a new PC build to a full network overhaul, NAS setup, server closet buildout, OS strategy, and multi-device rollout.

## Hardware Involved

- **Desktop PC** — AMD Ryzen 9 9950X / RTX 5070 Ti (new build)
- **Surface Pro (ARM)** — Windows 11, used as thin client via Moonlight
- **Lenovo ThinkPad P1 Gen 1** — Mobile workstation, Linux experiment candidate
- **ASUS Handheld Gaming PC** — Portable gaming, Bazzite target
- **UniFi Network Gear** — UDM-Pro, Pro 24 PoE, UNAS Pro, 2x U7 Pro, UniFi 6+
- **TrueNAS (Dell T30)** — 4x4TB ZFS pool, Plex + Syncthing
- **Mini PCs** — Home Assistant, AdGuard Home
- **Wife's laptop** — Windows 11 (leave it alone)
- **2x iPhones, 2x iPads** — iOS/iPadOS, photos sync to NAS

## Folders

| Folder | Description |
|--------|-------------|
| [`pc-build/`](./pc-build/) | Hardware component list and full assembly guide for the new desktop |
| [`os/`](./os/) | OS strategy: Bazzite Linux primary, Windows minimized, dual-boot setup, gaming, remote access |
| [`network/`](./network/) | UniFi gear inventory, topology, switch port assignments, camera plan, AP placement, shopping list |
| [`physical-buildout/`](./physical-buildout/) | Server closet spec, rack layout, cable runs, basement protection, electrical plan, blueprint guide |
| [`storage/`](./storage/) | TrueNAS setup, UNAS Pro backup vault, 3-2-1 backup strategy, device storage map, scripts |
| [`home-devices/`](./home-devices/) | All home devices, planned OS/roles, and phased rollout timeline |
