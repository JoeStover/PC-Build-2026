# AP Placement Strategy

## Overview

Three APs cover the house at launch. A fourth outdoor AP is planned for later. Use UniFi Design Center to validate placement before running cable.

## AP Assignments

### U7 Pro #1 — 1st Floor, Central Ceiling (WiFi 7)

- **Location:** Geometric center of 1st floor, ceiling mount
- **Coverage:** 1st floor primary — living room, kitchen, dining, hallway, garage adjacent
- **Why ceiling center:** Maximizes omni-directional coverage, minimizes co-channel interference
- **Cable:** From basement server closet, straight up through ceiling (~20–40ft)

### U7 Pro #2 — 2nd Floor, Central Ceiling (WiFi 7)

- **Location:** Geometric center of 2nd floor, ceiling mount
- **Coverage:** 2nd floor primary — bedrooms, hallway, upstairs office
- **Cable:** From 2nd floor switch in closet (~10–20ft)

### UniFi 6+ — Garage (WiFi 6)

- **Location:** Garage wall or ceiling mount
- **Coverage:** Garage and potentially driveway/outside
- **Why WiFi 6, not 7:** Coverage use case, not speed. Guests, phones, IoT devices — GbE backhaul is plenty.
- **Cable:** From basement switch through garage wall (~20–50ft)

### U6 Mesh — Back Deck / Under Eave (Future)

- **Location:** Under rear eave, IP54 outdoor rated
- **Coverage:** Back deck, patio, backyard
- **When to add:** When deck outdoor use is a priority
- **Cable:** From basement switch, exterior run or through rear wall (~20–40ft)

## Placement Principles

1. **Ceiling mount over wall mount** — omnidirectional coverage, avoid wall absorption
2. **Central location** — don't put APs in corners (wastes half the signal)
3. **One AP per floor** — more APs create roaming handoff issues; fewer, better-placed APs outperform many weak APs
4. **Wired backhaul only** — wireless mesh is a compromise; every hop costs bandwidth
5. **WiFi 7 where it matters** — high-traffic areas (streaming, gaming, work from home)
6. **WiFi 6 where coverage is the goal** — garage, outdoor

## UniFi Design Center Workflow

1. Go to [design.ui.com](https://design.ui.com)
2. Create a new project, upload floor plan image (photograph from iPad works)
3. Set scale using a known dimension
4. Mark wall types (interior drywall vs. exterior, concrete, etc.)
5. Place APs on the floor plan
6. Run simulation — coverage map shows signal strength per area
7. Adjust placement, re-run simulation
8. Use the final placement to determine exact cable entry points

Run this workflow before drilling any holes. Takes 30–60 minutes and can save a wasted cable run.

## Roaming

UniFi handles roaming automatically via band steering and Fast BSS Transition (802.11r). All APs share the same SSID — devices roam transparently.

No manual configuration needed. Just ensure all APs are adopted into the same UniFi controller (UDM-Pro).
