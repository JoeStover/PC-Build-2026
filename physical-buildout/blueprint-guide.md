# Blueprint Guide

## Why Blueprints Matter

Blueprints tell you where you cannot drill (plumbing, HVAC ducts, structural members) and where you should drill (interior wall cavities, clear paths to attic). An hour with blueprints saves a day of discovery-by-drilling.

## What Blueprint Sheets to Find

| Sheet | Contents | Why You Need It |
|-------|---------|----------------|
| Foundation / Basement | Basement layout, footings, load-bearing walls | Server closet location, cable routing in basement |
| 1st Floor Plan | Room layout, wall locations, stairwell | 1st floor drops, AP location planning |
| 2nd Floor Plan | Bedroom layout, closet locations | 2nd floor switch location, bedroom drops |
| Framing / Sections | Wall framing details, floor/ceiling structure | Fire blocking locations, drilling feasibility |
| Electrical Plan | Panel location, existing circuit routing | New circuit path, distance estimates |
| Mechanical / Plumbing | HVAC ducts, plumbing chase locations | What walls to avoid drilling |
| Elevations | Exterior wall sections | Exterior camera mounting, eave locations |
| Site Plan | Property layout, distances | Outdoor camera cable lengths |

## Server Closet Placement Criteria

Use the blueprint to evaluate potential closet locations:

| Criterion | Requirement |
|-----------|------------|
| Central location | Minimizes cable run lengths — compare distances to every room |
| Under continuous interior wall | Structural wall above = no plumbing, good framing |
| Not under bathroom | Plumbing risk |
| Away from water heater / washer | Flood risk |
| Near electrical panel | New circuit wire run cost |
| No HVAC ducts in the way | Ceiling penetrations for trunk |

## What to Annotate on Blueprints

### Basement Plan
- [ ] Mark proposed server closet location and dimensions
- [ ] Mark electrical panel location
- [ ] Mark all plumbing (water heater, drain lines, supply lines)
- [ ] Mark HVAC equipment and duct locations
- [ ] Mark proposed trunk cable path (basement → 2nd floor)
- [ ] Mark proposed new circuit paths (panel → server closet)

### 1st Floor Plan
- [ ] Mark proposed AP location (ceiling center)
- [ ] Mark all proposed room drops (office, living room, kitchen)
- [ ] Mark cable path from trunk entry to each drop location
- [ ] Note exterior walls (cable fishing is harder)

### 2nd Floor Plan
- [ ] Mark 2nd floor switch location (closet)
- [ ] Mark trunk arrival point
- [ ] Mark all bedroom drops
- [ ] Mark 2nd floor AP location (ceiling center)
- [ ] Mark eave camera locations

## Saltbox House Specifics

The saltbox form has a two-story front and single-story rear. The central trunk **must run in the two-story portion** — that's where you have continuous wall cavities from basement to 2nd floor.

- Front rooms have full 2-story walls
- Rear rooms may only have basement-to-1st-floor wall access
- The 2nd floor closet (switch location) should be in the two-story section

## Cable Length Calculation Method

```
Total run = horizontal distance (blueprint) 
          + vertical rise (floor-to-floor, ~10ft)
          + routing overhead (~10ft for routing around obstacles, bends)
          + slack (~10ft at each end — always leave enough to re-terminate)
```

**Blueprint measurement:**
1. Measure the route on the blueprint using a ruler
2. Note the blueprint scale (e.g., 1/4" = 1ft)
3. Convert to feet
4. Add vertical and overhead factors

**Example:**
- Desktop to patch panel: 30ft horizontal + 10ft vertical (up from basement) = 40ft raw + 20ft overhead/slack = **60ft budgeted**

Always round up. You can coil extra; you can't extend a short run.

## Digitizing Blueprints

1. Photograph each sheet with iPad (use document scan mode in Notes or Scanner Pro)
2. Import into an annotation app (Notability, GoodNotes, or PDF Expert)
3. Annotate digitally — cable routes, closet location, AP placements
4. Store annotated PDFs in this repository (`physical-buildout/blueprints/` folder — add when available)

## UniFi Design Center Workflow

1. Go to [design.ui.com](https://design.ui.com)
2. Create project → Upload floor plan (iPad photo or PDF export)
3. Set scale: draw a line over a known dimension, enter the actual length
4. Mark wall types: interior drywall, exterior wall, concrete — affects simulation accuracy
5. Place APs on the floor plan
6. Run signal simulation: adjust AP placement until coverage map is solid throughout the floor
7. Note exact ceiling locations for each AP — use this for cable fishing

Spend 30–60 minutes in Design Center before drilling anything. Discovering a wall placement is suboptimal after the cable is run is avoidable.
