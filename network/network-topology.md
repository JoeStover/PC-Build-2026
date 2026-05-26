# Network Topology

## Two-Switch Design

```
[ISP Modem]
     |
[UDM-Pro] (basement rack, 1U)
     |
[Pro 24 PoE Switch] (basement rack, 1U)
  |    |    |    |    |    |
  |    |    |    |    |    └─ [UNAS Pro] (10G DAC, SFP+)
  |    |    |    |    └───── [Desktop PC] (GbE)
  |    |    |    └────────── [U7 Pro AP — 1st floor] (PoE)
  |    |    └─────────────── [UniFi 6+ — Garage] (PoE)
  |    └──────────────────── [TrueNAS Dell T30] (GbE)
  └───────────────────────── [2nd Floor Switch] (Cat6a trunk uplink)
                                    |    |    |
                                    |    |    └─ [Bedroom 3 / Office] (GbE)
                                    |    └───── [Bedroom 2] (GbE)
                                    └────────── [U7 Pro AP — 2nd floor] (PoE)
                                                [Bedroom 1] (GbE)
```

## Central Trunk Design

The saltbox house has two stories in the front. The central trunk runs through an interior wall from basement to 2nd floor closet.

- **Trunk contents:** 2–4 Cat6a cables
- **Purpose:** Uplinks only — not individual room runs
- **Cable count:** 2 minimum (uplink + spare), 4 for future expansion / camera pre-runs from eaves
- **Entry point:** Basement ceiling → interior wall cavity → 2nd floor closet floor

**Why trunk to a 2nd floor switch?**
Without a 2nd floor switch, every bedroom, bathroom hall, and 2nd floor AP would require individual cables all the way to the basement — potentially 75–100ft each. The trunk approach runs 4 cables to the closet, then short runs branch out from there.

## AP Placement

| AP | Location | Coverage Target |
|----|----------|----------------|
| U7 Pro #1 | 1st floor, central ceiling | 1st floor primary WiFi 7 coverage |
| U7 Pro #2 | 2nd floor, central ceiling | 2nd floor primary WiFi 7 coverage |
| UniFi 6+ | Garage | Garage WiFi 6 coverage |
| U6 Mesh (future) | Back deck, under eave, IP54 rated | Outdoor deck coverage |

## VLAN Plan

| VLAN | Name | Purpose | Status |
|------|------|---------|--------|
| 1 | Default | All devices initially | Active |
| 20 | IoT | Smart home devices, cameras | Future |
| 30 | Guest | Guest WiFi (isolated) | Future |
| 40 | Management | Network gear management | Future |

VLANs are trivial to add in UniFi — create a new network, assign SSID or port profiles. Start with default VLAN, add segmentation when useful.

## 10G Connection: UNAS Pro ↔ Pro 24 PoE

```
[UNAS Pro SFP+ port] ←──── 10G DAC cable ────→ [Pro 24 PoE SFP+ port 1]
```

DAC (Direct Attach Copper) cable — passive, no transceivers needed, ~$15–20 for 1m. Provides full 10G bandwidth between NAS and switch.

## Saltbox-Specific Notes

- Two-story portion is at the front of the house — trunk must run through front interior walls
- Single-story rear section: cable runs from basement only (no 2nd floor to reach)
- Attic accessible in two-story portion for cable fishing
