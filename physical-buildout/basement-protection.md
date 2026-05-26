# Basement Protection

## Water Risk Assessment

Basements flood. Even basements that have "never flooded" in 20 years flood eventually. Design as if water will appear — equipment placement and sensors are cheap insurance.

## Floor Clearance

### Rack Equipment

A properly framed server closet with sealed concrete floor is acceptable for a full-height rack sitting on the floor. The rack itself sits on adjustable leveling feet (standard on most racks), providing 1–3" of clearance.

For additional protection:
- Rack feet can be extended or shimmed to raise the rack 4–6"
- Anti-vibration pads add clearance and reduce vibration transmission

### Dell T30 and Mini PCs (Wire Shelving)

If using wire shelving beside the rack:
- **Bottom shelf:** Empty — nothing below 12" from floor
- **Equipment starts at 24" minimum** off the floor
- Wire shelving allows airflow and quick visual inspection

### UPS Units

Rackmount UPS units sit in the rack — inherently elevated. If floor-mounted UPS: minimum 24" elevation on shelving.

## Water Sensors

Place water sensors at every high-risk point. A sensor that fires once pays for the entire sensor investment.

| Location | Sensor | Notes |
|----------|--------|-------|
| Under rack (floor of closet) | Govee WiFi Water Sensor | Lowest point, first water warning |
| Under Dell T30 shelf | Govee WiFi Water Sensor | NAS protection |
| Near water heater | Govee WiFi Water Sensor | Common flood source |
| Near washer/dryer (if nearby) | Govee WiFi Water Sensor | Hose failure risk |
| At lowest floor point in basement | Govee WiFi Water Sensor | Catches any intrusion |

**Recommended sensor:** Govee WiFi Water Sensor (~$10–15 each) — sends phone alerts immediately. No hub required.

**Future:** Zigbee sensors (Aqara, Samsung SmartThings) integrate with Home Assistant for automation (auto-shutoff, logging).

## Humidity Monitoring

| Location | Target | Action if Exceeded |
|----------|--------|-------------------|
| Near rack | 40–55% RH | Run dehumidifier |
| Near dehumidifier | — | Monitor dehumidifier effectiveness |

High humidity accelerates corrosion on PCBs and connectors. Keep a dehumidifier running in the basement during summer months.

**Sensor:** Any WiFi or Zigbee temperature/humidity sensor. Govee makes combo units.

## UPS Strategy

| UPS | Powers | Location |
|-----|--------|---------|
| UPS #1 (1500VA rack) | Network gear: UDM-Pro, Pro 24 PoE, UNAS Pro | U31–U30 in rack |
| UPS #2 (1500VA rack) | Servers: Dell T30 TrueNAS, mini PCs | U29–U28 in rack |

**TrueNAS USB shutdown integration:**
- Connect UPS #2 USB cable to TrueNAS Dell T30
- TrueNAS monitors UPS battery level via NUT (Network UPS Tools)
- TrueNAS initiates graceful shutdown when battery reaches 20%
- Prevents ZFS pool corruption from sudden power loss

## Cable Drip Loops

All cables entering rack equipment should make a drip loop — cable descends below the entry point before entering the equipment. If water travels down a cable, the drip loop causes it to drip to the floor rather than flow into the equipment.

Standard practice for any server room. Takes 5 seconds per cable.

## Sealed Concrete Floor

The server closet floor should be sealed with DryLok or concrete floor paint before installing any equipment. This:
- Reduces concrete vapor and dust
- Creates a moisture barrier
- Makes water detection (and cleanup) easier — you see it immediately on sealed concrete

See [server-closet-spec.md](./server-closet-spec.md) for full framing and finishing spec.
