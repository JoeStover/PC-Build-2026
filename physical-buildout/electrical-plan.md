# Electrical Plan — Server Closet

## Overview

Three dedicated circuits + one 240V future-proof circuit. All on separate breakers. All GFCI protected (basement code requirement). Run all electrical before closing drywall.

## Circuit Layout

### Circuit A — Network Gear (Dedicated 20A/120V)

**Purpose:** UPS #1 → UDM-Pro, Pro 24 PoE, UNAS Pro

| Spec | Value |
|------|-------|
| Breaker | 20A single-pole |
| Wire | 12 AWG |
| Outlets | 2× duplex (4 receptacles total) |
| Location | Rear wall, 36–48" height |
| Protection | GFCI breaker |

### Circuit B — Servers / Compute (Dedicated 20A/120V)

**Purpose:** UPS #2 → Dell T30 TrueNAS, mini PCs, desktop (if applicable)

| Spec | Value |
|------|-------|
| Breaker | 20A single-pole |
| Wire | 12 AWG |
| Outlets | 2× duplex (4 receptacles total) |
| Location | Rear wall, 36–48" height |
| Protection | GFCI breaker |

### Circuit C — General Purpose (15–20A/120V)

**Purpose:** Dehumidifier, overhead light, power tools, general use

| Spec | Value |
|------|-------|
| Breaker | 15A or 20A single-pole (existing circuit acceptable) |
| Wire | 14 AWG (15A) or 12 AWG (20A) |
| Outlets | 1× duplex near door |
| Location | Near door, standard height |
| Protection | GFCI outlet or GFCI breaker |

### 240V / 30A Circuit (Future-Proof — Capped)

**Purpose:** Reserved for future high-draw UPS, server with redundant PSUs, or EV charging

| Spec | Value |
|------|-------|
| Breaker | 30A double-pole |
| Wire | 10 AWG |
| Outlet | NEMA L6-30R or capped junction box |
| Location | Rear wall, 24" height |
| Protection | Standard 240V (no GFCI required for this use) |

**Install as a capped junction box if unsure of final use.** Cost to rough-in now: ~$50 in wire. Cost to add later: cut drywall, fish wire, re-patch.

## Outlet Placement

```
REAR WALL:
┌────────────────────────────────────────────────────┐
│                                                    │
│  [Circuit A duplex] [Circuit A duplex]  height 48" │
│  [Circuit B duplex] [Circuit B duplex]  height 36" │
│  [240V capped JB]                       height 24" │
└────────────────────────────────────────────────────┘

SIDE WALL (near door):
┌─────────────────────┐
│  [Circuit C duplex]  height standard (18")         │
│  [Light switch]      height 48"                    │
└─────────────────────┘
```

## Lighting

- **Overhead light:** 4' LED shoplight or 2x recessed cans — bright working light
- **Switch location:** At door, on entry side
- **Color temperature:** 4000K–5000K (cool white) for accurate color rendering when checking cables and equipment

## Why Dedicated Circuits

- **Isolation:** Network gear on Circuit A means a server brownout on Circuit B can't take out the router
- **UPS efficiency:** Each UPS sized for its specific load — no oversizing, no undersizing
- **Future flexibility:** Can add a 3rd UPS or higher-draw equipment without rethinking circuits

## Important Notes

1. **Run all electrical BEFORE closing drywall** — this is obvious but bears repeating
2. **GFCI breakers (not outlets):** In a panel-dense room, GFCI breakers are easier than finding the right outlet when tripped
3. **Label every breaker** in the panel with room + circuit purpose (masking tape + marker while rough-in is ongoing)
4. **Hire a licensed electrician** for all panel work and new circuit rough-in — permits required, code compliance required
5. **Permit your work** — homeowners selling in 5 years have discovered unpermitted electrical is a deal-killer

## Load Estimates

| Equipment | Draw |
|-----------|------|
| UDM-Pro | ~33W |
| Pro 24 PoE (no PoE devices) | ~65W |
| Pro 24 PoE (full PoE load) | ~465W max |
| UNAS Pro (idle) | ~50W |
| UPS #1 (1500VA) | 1500VA capacity |
| Dell T30 TrueNAS (idle) | ~70W |
| Mini PCs (2x) | ~30W total |
| UPS #2 (1500VA) | 1500VA capacity |

Circuit A load with full PoE: ~600W (well within 1500VA UPS capacity)  
Circuit B load: ~150W typical (well within 20A/120V = 1920W capacity)
