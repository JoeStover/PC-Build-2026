# Home Devices

## Overview

All devices in the home ecosystem and their planned OS/roles.

## Device Table

| Device | Current OS | Planned OS | Role |
|--------|-----------|------------|------|
| **Desktop (new build)** | N/A | Bazzite Linux + Windows 250GB | Primary machine — gaming, dev, daily use |
| **Surface Pro (ARM)** | Windows 11 | Windows 11 (keep) | Thin client — Moonlight streaming to desktop |
| **ThinkPad P1 Gen 1** | Windows (presumably) | Fedora / Bazzite Linux | Mobile workstation, Linux learning platform |
| **ASUS Handheld** | Windows 11 | Bazzite | Portable gaming — SteamOS-like experience |
| **Wife's laptop** | Windows 11 | Windows 11 (keep) | Don't touch — her workflow |
| **Mini PC 1** | TBD | Home Assistant OS | Smart home hub (dedicated hardware) |
| **Mini PC 2** | TBD | Debian / Ubuntu Server | AdGuard Home (network DNS, dedicated) |
| **Other mini PCs** | Various | Evaluate later | No role assigned yet |
| **TrueNAS (Dell T30)** | TrueNAS SCALE | TrueNAS SCALE (fresh install) | Services + primary NAS storage |
| **UNAS Pro** | UniFi OS | UniFi OS | Backup vault — nightly rsync from TrueNAS |
| **iPhones (2)** | iOS | iOS (keep) | Mobile, photos sync to cloud then NAS |
| **iPads (2)** | iPadOS | iPadOS (keep) | Media consumption, light productivity, SMB access |

## Network Devices (Managed by UniFi)

| Device | Role |
|--------|------|
| UDM-Pro | Gateway, router, UniFi controller |
| Pro 24 PoE | Core switch (basement) |
| USW-Lite-16-PoE | 2nd floor distribution switch |
| U7 Pro × 2 | WiFi 7 APs (1st and 2nd floor) |
| UniFi 6+ | WiFi 6 AP (garage) |
| U6 Mesh (future) | Outdoor AP (back deck) |

## Files in This Folder

| File | Description |
|------|-------------|
| [rollout-plan.md](./rollout-plan.md) | Phased rollout timeline: Phase 0 through Phase 6 |
