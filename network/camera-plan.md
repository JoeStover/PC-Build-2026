# Camera Plan

## Philosophy: Pre-Wire Now, Buy Cameras Later

UniFi Protect cameras are PoE — one Cat6a cable per camera handles both power and data. Run the cables during the physical buildout before closing drywall. Cameras can be purchased months later.

Cost to pre-wire: essentially zero (a few hundred feet of Cat6a and wall plates already being purchased).  
Cost to add wire later: drywall work, patching, painting.

## Camera Locations

| Location | Camera Model | Mount | Priority | Notes |
|----------|-------------|-------|----------|-------|
| Front door | G5 Pro | Eave / over door | 🔴 High | Main entry |
| Back door / Deck | G5 Pro | Eave | 🔴 High | Rear entry + deck |
| Garage exterior | G4 Bullet | Eave / wall | 🔴 High | Driveway view |
| Driveway | G5 Turret | Eave | 🟡 Medium | Full driveway view |
| Side of house | G4 Bullet | Eave | 🟡 Medium | Side yard access |
| Backyard | G5 Turret | Eave | 🟢 Optional | Backyard coverage |

## Recommended Camera Models

| Model | Best For | Resolution | PoE | Notes |
|-------|---------|-----------|-----|-------|
| G5 Pro | Entry points, high detail | 4K | PoE+ | Best image quality, optical zoom |
| G5 Turret | Wide coverage | 4K | PoE | Good all-around outdoor camera |
| G4 Bullet | Side / garage | 2K | PoE | Lower cost, still solid quality |

## PoE Budget Calculation

All cameras connect to Pro 24 PoE (400W budget).

| Device | Power Draw | Count | Total |
|--------|-----------|-------|-------|
| U7 Pro APs | ~13W | 2 | 26W |
| UniFi 6+ AP | ~12W | 1 | 12W |
| USW-Lite-16-PoE (via uplink) | ~30W | 1 | 30W |
| G5 Pro cameras | ~15W | 2 | 30W |
| G4 Bullet cameras | ~9W | 2 | 18W |
| **Current total** | | | **~116W** |
| **Remaining budget** | | | **~284W** |

At 116W used of 400W, we're under 30% of budget — plenty of headroom for adding more cameras.

## Pre-Wiring Approach

1. During cable fishing, run a Cat6a cable to each planned camera location
2. Terminate at the basement patch panel
3. Leave the exterior end coiled in the attic / eave with a keystone or just a tagged end
4. When cameras are purchased: terminate the exterior end, mount camera, punch down patch panel port, connect to Pro 24 PoE

## NVR Storage

UniFi Protect stores recordings on the UDM-Pro's internal drive (or an attached drive). For extended retention, UniFi recommends:
- UDM-Pro with 3.5" drive (install a 4–8TB HDD)
- Or UNVR (dedicated NVR) for larger camera counts

With 6 cameras at standard quality, expect roughly 1–2TB per month of continuous recording.
