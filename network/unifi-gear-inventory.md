# UniFi Gear Inventory

## Current Hardware

| Device | Model | Form Factor | Key Specs |
|--------|-------|------------|-----------|
| **Dream Machine Pro** | UDM-Pro | 1U rack | Gateway/router, built-in 8-port switch, UniFi controller, 1x 10G SFP+ WAN, 1x 10G SFP+ LAN |
| **Pro 24 PoE Switch** | USW-Pro-24-POE | 1U rack | 24x GbE PoE+, 2x 10G SFP+ uplink, 400W PoE budget |
| **UNAS Pro** | UNAS-Pro | 1U rack | 8-bay NAS, 2x M.2 NVMe cache, 3x 10GbE (1x SFP+, 2x RJ45), 16GB RAM |
| **U7 Pro AP #1** | U7-Pro | Ceiling mount | WiFi 7 (BE19000), 2.5GbE uplink, 4x4 MU-MIMO |
| **U7 Pro AP #2** | U7-Pro | Ceiling mount | WiFi 7 (BE19000), 2.5GbE uplink, 4x4 MU-MIMO |
| **UniFi 6+** | U6-Plus | Ceiling/wall mount | WiFi 6 (AX5400), GbE uplink |

## Planned Additions

| Device | Model | Purpose | Estimated Cost |
|--------|-------|---------|---------------|
| **2nd Floor Switch** | USW-Lite-16-PoE | 2nd floor distribution | ~$180 |
| **Outdoor AP** | U6-Mesh | Back deck coverage | ~$160 |

## PoE Budget

**Pro 24 PoE — 400W total budget:**

| Device | PoE Draw | Count | Total |
|--------|----------|-------|-------|
| U7 Pro (WiFi 7) | ~13W | 2 | 26W |
| UniFi 6+ | ~12W | 1 | 12W |
| USW-Lite-16-PoE (uplink PoE) | ~30W | 1 | 30W |
| Future cameras (G5 Pro) | ~12W each | 6 | 72W |
| **Total (cameras included)** | | | **~140W** |

Remaining budget: ~260W — well within the 400W limit.

## UNAS Pro Storage Strategy

- **Role:** Backup vault (not primary storage)
- **Starting config:** 2x 8TB drives (mirrored), ~7.3TB usable
- **Expansion:** 8 bays total — add drive pairs as needed
- **Connection:** SFP+ 10GbE DAC to Pro 24 PoE switch
- **Cache:** 2x M.2 NVMe for metadata acceleration
