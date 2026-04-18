# Storage Organization — Server Closet

## The Two Rules

1. **Everything has a labeled home.** If it doesn't have a home, it doesn't belong in the server closet.
2. **The rack is sacred.** Nothing loose sits on, in, or around the rack. Every item in the rack is mounted, labeled, and cabled.

## Three Zones

```
┌─────────────────────────────────────────────────────┐
│                  SERVER CLOSET                      │
│                                                     │
│  [ZONE 1: RACK]        [ZONE 2: WORK SURFACE]      │
│  ┌──────────────┐      ┌──────────────────┐         │
│  │  42U Rack    │      │ Folding Workbench │         │
│  │  (active     │      │ (staging, testing,│         │
│  │   production │      │  wiring work)     │         │
│  │   equipment) │      └──────────────────┘         │
│  └──────────────┘                                   │
│                   [ZONE 3: STORAGE]                 │
│  ┌────────────────────────────────────────────────┐ │
│  │  Wall-mounted shelving with labeled bins       │ │
│  └────────────────────────────────────────────────┘ │
└─────────────────────────────────────────────────────┘
```

## Zone 1: Rack

Production equipment only. See [rack-layout.md](./rack-layout.md).

- No loose items on top of rack
- No items hanging off the sides
- All cables velcroed and routed
- Cable map up to date

## Zone 2: Work Surface

Folding wall-mount workbench (Murphy bench style — folds flat when not in use, reclaims ~3ft of floor space).

Use for:
- Staging new equipment before racking
- Testing cables and gear
- Wiring work (crimping, punching down jacks)
- Laptop for configuration work

Pegboard above workbench for frequently-used tools:
- Cable tester
- Punch-down tool
- Crimping tool
- Screwdrivers
- Flashlight

## Zone 3: Storage (Wall-Mounted Shelving)

Wall-mounted wire shelving with labeled clear bins.

### Bin Categories

| Bin Size | Contents |
|---------|---------|
| **Large** | Cables by type: Cat6a, HDMI, USB, power — one bin per type |
| **Medium** | Spare parts: SFP modules, patch cables, PDUs, spare fans |
| **Medium** | Connectors and adapters: RJ45 connectors, keystones, wall plates |
| **Small** | Consumables: zip ties, velcro ties, label tape |
| **Small** | Adapters: USB-C, DP, HDMI dongle collection |

### Labeling

- **Label maker:** Brother P-Touch (PT-D230 or similar) — makes proper adhesive labels
- **Bin labels:** Category name + contents listed on front face of bin
- **Cable labels:** Both ends of every cable, cable ID format (see [cable-runs.md](./cable-runs.md))
- **Rack labels:** Labeled in UniFi controller AND physical label on patch panel

## Packaging Policy

**Keep:** Warranty boxes for active rack equipment until warranty expires. Store in garage attic or basement storage, not the server closet.

**Flatten:** Cardboard boxes for consumer items (switches, APs) — flatten and store in garage.

**Toss:** All packaging once warranty period ends. Packaging for consumables and cables: toss immediately.

**Why:** Server closets fill with boxes faster than any other room. A box takes 10 seconds to flatten. The closet has better uses for that cubic foot of space.

## Dell T30 and Mini PC Shelving

If placing Dell T30 beside the rack on wire shelving:
- Wire shelving unit with 4 tiers (24"×48" or 18"×36")
- Bottom shelf: empty — nothing below 12" off floor
- Tier 2 (24" height): Dell T30 TrueNAS
- Tier 3 (36" height): Mini PCs (Home Assistant, AdGuard)
- Top tier: Tools, loose equipment

Label every shelf. Label every device. Write the IP address and hostname on a label stuck to the device.
