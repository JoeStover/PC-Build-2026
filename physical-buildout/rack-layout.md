# Rack Layout — 42U

## Overview

42U open-frame or enclosed rack. Off-lease industrial racks are highly recommended — same quality as retail at 40–60% less cost. Look for APC, StarTech, or Tripp Lite used on eBay/Facebook Marketplace.

**Layout principle:** Network gear at top (cables hang down cleanly), UPS in middle (heavy, accessible), large/heavy gear at bottom.

## U Assignments

| U Position | Equipment | Notes |
|-----------|-----------|-------|
| U42–U41 | Cable management (2U horizontal) | Top cable management — patch panel cables |
| U40 | 24-port keystone patch panel | All incoming Cat6a runs terminate here |
| U39 | Pro 24 PoE Switch | Short patch cables to patch panel above |
| U38 | Cable management (1U horizontal) | Switch-level cable management |
| U37 | Dream Machine Pro | UniFi gateway/controller |
| U36 | Empty / future switch | Reserved expansion |
| U35 | Blank panel | Airflow block |
| U34 | UNAS Pro (8-bay) | 10G DAC to switch below |
| U33 | Empty / future NAS | Reserved |
| U32 | Blank panel | Airflow block |
| U31–U30 | UPS #1 — Network gear (2U) | APC or CyberPower 1500VA rackmount |
| U29–U28 | UPS #2 — Servers / NAS (2U) | APC or CyberPower 1500VA rackmount |
| U27 | Blank panel | Airflow block |
| U26–U23 | Shelf — Dell T30 TrueNAS (4U) | Or use wire shelving beside rack (see note) |
| U22–U21 | Shelf — Mini PCs (2U) | Home Assistant + AdGuard Home |
| U20–U1 | Empty — future expansion | Off-lease servers, additional storage |

## Dell T30 Note

The Dell T30 is a tower form factor server. It can go:
- **In rack:** On a 4U shelf at U23–U26 (works, takes up rack space)
- **Beside rack:** On wire shelving next to the rack (better option if space allows — frees rack Us)

Wire shelving option: 4-tier wire shelf unit beside the rack. Dell T30 on bottom shelf (floor clearance managed), mini PCs on upper shelf, top shelf for tools/supplies.

## Blank Panel Placement

Blank panels at U35, U32, U27 prevent hot air recirculation between equipment zones. Don't skip these — they matter for airflow in a mixed-depth rack.

## Cable Management

- Velcro cable ties (reusable, not zip ties — easier to modify)
- Horizontal cable managers between patch panel and switch
- Label both ends of every patch cable
- Color-code patch cables by VLAN or function (optional but helpful)

## Future Expansion

U20–U1 is 20U of available space. Potential uses:
- Off-lease 1U servers (cheap, powerful — Dell R720/R730, HPE DL380 Gen9)
- Additional NAS or storage shelf
- GPU compute server (future AI/ML workloads)
- KVM over IP for headless management
