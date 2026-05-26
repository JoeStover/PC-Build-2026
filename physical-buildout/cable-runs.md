# Cable Runs

## Overview

Every Cat6a cable run mapped: source, destination, estimated length, and purpose. Plan before fishing — mistakes are expensive.

**Total estimated cable:** ~850ft + 20% waste factor → **buy 1000ft box**

## From Basement Server Closet

| Run ID | Destination | Est. Length | Purpose | Status |
|--------|------------|------------|---------|--------|
| TRK-01 | Trunk to 2nd floor closet (cable 1) | 30–50ft | 2nd floor switch uplink | Plan |
| TRK-02 | Trunk to 2nd floor closet (cable 2) | 30–50ft | Spare uplink | Plan |
| TRK-03 | Trunk to 2nd floor closet (cable 3) | 30–50ft | Future expansion | Plan |
| TRK-04 | Trunk to 2nd floor closet (cable 4) | 30–50ft | Camera pre-run or future | Plan |
| AP1-01 | 1st floor AP U7 Pro (ceiling) | 20–40ft | WiFi 7 AP — 1st floor | Plan |
| OF-01 | 1st floor office / desktop | 15–40ft | Desktop gaming rig — critical | Plan |
| LR-01 | 1st floor living room | 15–40ft | TV, streaming | Plan |
| KD-01 | 1st floor kitchen/dining | 15–40ft | Optional — run if accessible | Plan |
| GR-01 | Garage — UniFi 6+ AP | 20–50ft | WiFi 6 garage AP (PoE) | Plan |
| OUT-01 | Outdoor AP — back deck | 20–40ft | U6 Mesh future | Plan |
| CAM-01 | Front door camera | 20–60ft | UniFi G5 Pro (PoE) | Plan |
| CAM-02 | Back door / deck camera | 20–60ft | UniFi G5 Pro (PoE) | Plan |
| CAM-03 | Garage exterior camera | 20–60ft | UniFi G4 Bullet (PoE) | Plan |
| CAM-04 | Driveway camera | 20–60ft | UniFi G5 Turret (PoE) | Plan |
| CAM-05 | Side of house camera | 20–60ft | UniFi G4 Bullet (PoE) | Plan |
| CAM-06 | Backyard camera (optional) | 20–60ft | Future (PoE) | Plan |

## From 2nd Floor Closet (via Attic)

| Run ID | Destination | Est. Length | Purpose | Status |
|--------|------------|------------|---------|--------|
| AP2-01 | 2nd floor AP U7 Pro (ceiling) | 10–20ft | WiFi 7 AP — 2nd floor | Plan |
| BR1-01 | Bedroom 1 | 10–30ft | Room drop | Plan |
| BR2-01 | Bedroom 2 | 10–30ft | Room drop | Plan |
| BR3-01 | Bedroom 3 / upstairs office | 10–30ft | Room drop | Plan |
| CAM-07 | 2nd floor eave camera #1 | 15–30ft | Future exterior camera | Plan |
| CAM-08 | 2nd floor eave camera #2 | 15–30ft | Future exterior camera | Plan |

## Length Calculation Method

```
Total cable length = horizontal run (from blueprint) 
                   + vertical run (floor-to-floor, ~10ft per floor)
                   + routing overhead (~10ft for bends, boxing around obstacles)
                   + slack (~10ft — always leave slack at both ends)
```

Always round up. You can coil extra cable; you can't extend a short run.

## Fishing Approach

### No Conduit in Walls

Running conduit in finished walls requires opening drywall at every bend, every box, and every transition. For a 1998 house with standard drywall, fish tape and a flex drill bit does the same job with zero visible damage.

### Tools Required

| Tool | Purpose |
|------|---------|
| 72" flex drill bit | Drill through top/bottom plates without opening walls |
| Fish tape or fish sticks | Guide cable through wall cavities |
| Glow rods | Rigid fish sticks for longer runs |
| Borescope / inspection camera | See what's in the wall before drilling |
| Low-voltage old-work brackets | Secures wall plate cutout in drywall |
| Stud finder | Map stud locations before drilling |

### Access Points

| Access | Used For |
|--------|---------|
| Attic (above 2nd floor) | Drill down into 2nd floor walls; run lateral cable in attic |
| Basement (below 1st floor) | Drill up into 1st floor walls; access bottom plates |
| 2nd floor closet | Access junction point for trunk + 2nd floor runs |
| Interior wall top plates | Route horizontally in attic to reach distant walls |

### 1998 Construction Advantages

- **Drywall** (not plaster) — easier to cut, easier to patch
- **Likely no fire blocking** in most wall cavities — cable drops straight down
- **Accessible attic and basement** — access from both ends of most runs

### Conduit in Basement Only

Run flexible ENT conduit along basement ceiling for all outgoing cable runs — keeps them organized, protects from physical damage, easy to add cables later. Stop conduit at the wall penetration point.

## Labeling Scheme

**Format:** `LOCATION-PORT` — e.g., `OF-01`, `BR1-01`, `AP1-01`, `CAM-01`, `TRK-01`

**Rules:**
- Label BOTH ends of every cable before fishing
- Use Brady or Brother heat-shrink labels or label flags
- Maintain a cable map spreadsheet:

| Cable ID | Patch Panel Port | Switch Port | Purpose | Status |
|----------|-----------------|------------|---------|--------|
| OF-01 | PP-A05 | Pro24-Port5 | Desktop — office | Active |
| AP1-01 | PP-A02 | Pro24-Port2 | U7 Pro 1st floor | Active |
| TRK-01 | PP-A01 | Pro24-Port1 | 2nd floor switch uplink | Active |

## Pre-Wire Checklist

Before closing any drywall:

- [ ] All planned cable runs fished and terminated at basement patch panel
- [ ] Camera pre-runs coiled in attic / eave with labeled ends
- [ ] Trunk cables in conduit from basement to 2nd floor closet
- [ ] All cables labeled at both ends
- [ ] Cable map spreadsheet updated
- [ ] Cable tester used to verify every run passes
