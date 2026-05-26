# Switch Port Assignments

## Pro 24 PoE — Basement

| Port | Device | Speed | PoE | Notes |
|------|--------|-------|-----|-------|
| **SFP+ 1** | UNAS Pro | 10G | No | DAC cable |
| **SFP+ 2** | Available | 10G | No | Future server or uplink |
| **Port 1** | Uplink to 2nd floor switch | 1G | Yes | PoE to power USW-Lite-16-PoE |
| **Port 2** | U7 Pro AP — 1st floor | 1G | Yes | Ceiling mount, central 1st floor |
| **Port 3** | UniFi 6+ — Garage | 1G | Yes | PoE |
| **Port 4** | Outdoor AP — Deck (future) | 1G | Yes | U6 Mesh, IP54 |
| **Port 5** | Desktop PC — Office | 1G | No | Critical — gaming, dev |
| **Port 6** | Living room | 1G | No | TV, streaming device, etc. |
| **Port 7** | Kitchen / Dining (optional) | 1G | No | Run if convenient |
| **Port 8** | TrueNAS Dell T30 | 1G | No | Primary storage server |
| **Port 9** | Mini PC — Home Assistant | 1G | No | Smart home hub |
| **Port 10** | Mini PC — AdGuard Home | 1G | No | Network DNS |
| **Port 11** | Camera — Front door | 1G | Yes | Pre-run cable, camera later |
| **Port 12** | Camera — Back door / Deck | 1G | Yes | Pre-run cable |
| **Port 13** | Camera — Garage exterior | 1G | Yes | Pre-run cable |
| **Port 14** | Camera — Driveway | 1G | Yes | Pre-run cable |
| **Port 15** | Camera — Side of house | 1G | Yes | Pre-run cable |
| **Port 16** | Camera — Backyard (optional) | 1G | Yes | Pre-run cable |
| **Ports 17–24** | Future expansion | 1G | Yes | Available |

## USW-Lite-16-PoE — 2nd Floor Closet

| Port | Device | Speed | PoE | Notes |
|------|--------|-------|-----|-------|
| **Port 1** | Uplink from basement Pro 24 PoE | 1G | — | Uplink port (PoE powered by Pro 24) |
| **Port 2** | U7 Pro AP — 2nd floor | 1G | Yes | Ceiling mount, central 2nd floor |
| **Port 3** | Bedroom 1 | 1G | No | Wall plate drop |
| **Port 4** | Bedroom 2 | 1G | No | Wall plate drop |
| **Port 5** | Bedroom 3 / Upstairs office | 1G | No | Wall plate drop |
| **Port 6** | Future (camera, device) | 1G | Yes | Available |
| **Port 7** | Future (camera, device) | 1G | Yes | Available |
| **Port 8** | Future expansion | 1G | Yes | Available |
| **Ports 9–16** | Future expansion | 1G | — | Available |

## Notes

- All camera ports on Pro 24 PoE can be left unplugged and covered with a blank keystone until cameras are purchased
- 2nd floor switch is PoE-powered by the uplink from Pro 24 PoE — no separate power cable needed in the 2nd floor closet
- SFP+ ports on Pro 24 PoE are reserved: one for UNAS Pro DAC, one for future 10G device or uplink
