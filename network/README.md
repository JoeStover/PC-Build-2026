# Network Architecture

## Overview

Full UniFi ecosystem covering routing, switching, wireless, NAS connectivity, and future camera infrastructure. Designed for a saltbox house with central trunk cabling.

## Core Gear

| Device | Role |
|--------|------|
| **UDM-Pro** | Gateway / router / UniFi controller — all-in-one, 1U rack |
| **Pro 24 PoE** | Core switch — basement, 24 GbE PoE+ ports, 2x 10G SFP+ |
| **UNAS Pro** | Backup vault — 8-bay, 10GbE, connected to Pro 24 PoE via DAC |
| **USW-Lite-16-PoE** | 2nd floor closet switch — 16 ports, PoE for 2nd floor AP |
| **2x U7 Pro** | WiFi 7 APs — 1st floor ceiling, 2nd floor ceiling |
| **UniFi 6+** | WiFi 6 AP — garage coverage |
| **U6 Mesh** (future) | Outdoor AP — back deck, under eave |

## Topology

```
[ISP] → [UDM-Pro] → [Pro 24 PoE] → [Devices, APs, cameras]
                          |
                    [UNAS Pro] (10G DAC)
                          |
                    [2nd Floor Switch] (Cat6a trunk)
                          |
                    [2nd floor APs, bedrooms]
```

## Key Design Decisions

- **Two-switch topology:** Pro 24 PoE in basement + USW-Lite-16-PoE on 2nd floor. Eliminates long individual cable runs from basement to every 2nd floor room.
- **Central trunk:** 2–4 Cat6a cables from basement to 2nd floor closet through interior wall. Trunk carries uplinks only.
- **Cat6a throughout:** Future-proof for 10G to the desktop. Minimal cost difference over Cat6.
- **10G SFP+ DAC:** UNAS Pro connects to Pro 24 PoE via short DAC cable for fast NAS access.
- **Pre-wire cameras:** Run camera cables now, even if cameras are purchased later.

## Wireless Strategy

- U7 Pro (WiFi 7) in high-traffic areas (1st and 2nd floor ceilings)
- UniFi 6+ (WiFi 6) in coverage-only areas (garage)
- Outdoor AP for deck (future)

## VLAN Plan

- Default VLAN for now
- IoT VLAN: add later (cheap in UniFi — just a new network + SSID)
- Guest WiFi: easy to add at any time in UniFi controller

## Files in This Folder

| File | Description |
|------|-------------|
| [unifi-gear-inventory.md](./unifi-gear-inventory.md) | Full hardware inventory with specs |
| [network-topology.md](./network-topology.md) | Two-switch design, trunk, AP placement, VLAN plans |
| [switch-port-assignments.md](./switch-port-assignments.md) | Port maps for Pro 24 PoE and 2nd floor switch |
| [camera-plan.md](./camera-plan.md) | Camera locations, PoE budget, pre-wiring plan |
| [ap-placement.md](./ap-placement.md) | WiFi 7 / WiFi 6 placement strategy per floor |
| [shopping-list-network.md](./shopping-list-network.md) | Complete supplies shopping list with estimated costs |
