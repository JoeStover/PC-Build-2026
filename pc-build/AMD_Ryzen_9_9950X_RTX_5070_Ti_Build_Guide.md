# 🖥️ Comprehensive PC Build Guide
## AMD Ryzen 9 9950X | RTX 5070 Ti | Fractal Meshify 2 XL

---

# 📋 Table of Contents

1. [Build Components](#build-components)
2. [Additional Items to Purchase](#-additional-items-to-purchase)
3. [Pre-Build Preparation](#-phase-1-pre-build-preparation)
4. [Motherboard Preparation (Outside Case)](#-phase-2-motherboard-preparation-outside-case)
5. [Case Preparation and Fan Installation](#-phase-3-case-preparation-and-fan-installation)
6. [Motherboard Installation](#-phase-4-motherboard-installation)
7. [Storage Installation](#-phase-5-storage-installation)
8. [Power Supply Installation and Cable Routing](#-phase-6-power-supply-installation-and-cable-routing)
9. [GPU Installation](#-phase-7-gpu-installation)
10. [Final Cable Management and Cleanup](#-phase-8-final-cable-management-and-cleanup)
11. [First Boot and BIOS Configuration](#-phase-9-first-boot-and-bios-configuration)
12. [Operating System Installation](#-phase-10-operating-system-installation)
13. [Comprehensive Stress Testing Guide](#-phase-11-comprehensive-stress-testing-guide)
14. [Troubleshooting Common Issues](#-troubleshooting-common-issues)
15. [Optional Aesthetic Upgrades - Cable Extensions](#-optional-aesthetic-upgrades---cable-extensions)
16. [Optional Aesthetic Upgrades - RGB Lighting](#-optional-aesthetic-upgrades---rgb-lighting)

---

## Build Components

| Component | Model |
|-----------|-------|
| **CPU** | AMD Ryzen 9 9950X 4.3 GHz 16-Core Processor |
| **CPU Cooler** | Noctua NH-U12A chromax.black 60.09 CFM |
| **Motherboard** | ASUS ROG CROSSHAIR X870E HERO ATX AM5 |
| **Memory** | G.Skill Trident Z5 RGB 64 GB (2 x 32 GB) DDR5-6000 CL36 |
| **Storage** | Samsung 990 Pro 2 TB M.2-2280 PCIe 4.0 X4 NVMe |
| **GPU** | ASUS ROG STRIX GAMING OC GeForce RTX 5070 Ti 16 GB |
| **Case** | Fractal Design Meshify 2 XL ATX Full Tower |
| **PSU** | Corsair RM1000x (2024) 1000 W Fully Modular ATX |
| **Case Fans** | 7x Noctua NF-A14x25 G2 PWM chromax.black 140mm |

---

# 🛒 Additional Items to Purchase

## Required Items

| Item | Purpose | Recommended Product | Est. Price |
|------|---------|---------------------|------------|
| **PWM Fan Hub** | Control all 7 Noctua fans from single header | **Noctua NA-FH1 8-channel hub** | ~$20 |
| **GPU Support Bracket** | Prevent GPU sag (5070 Ti is heavy) | **ASUS ROG Herculx Graphics Card Holder** | ~$30-40 |
| **Anti-Static Wrist Strap** | ESD protection during build | Any reputable brand | ~$8 |
| **Magnetic Screwdriver Set** | Makes installation much easier | **iFixit Mako** or similar | ~$30 |
| **Cable Ties (Velcro)** | Reusable cable management | Velcro brand cable ties (assorted sizes) | ~$10 |
| **Isopropyl Alcohol 99%** | Cleaning thermal paste if needed | Any pharmacy brand | ~$5 |
| **Microfiber Cloths** | Lint-free cleaning | Any brand | ~$5 |
| **USB Flash Drive (16GB+)** | Windows installation media | Any USB 3.0 drive | ~$10 |

## Highly Recommended Items

| Item | Purpose | Recommended Product | Est. Price |
|------|---------|---------------------|------------|
| **Extra PWM Splitters** | Backup for fan connections | **Noctua NA-SYC1** (Y-cables) | ~$8 |
| **Thermal Paste (backup)** | NH-U12A includes paste, but backup recommended | **Noctua NT-H1** (included) or **Thermal Grizzly Kryonaut** | ~$10 |

## Optional Aesthetic Items

| Item | Purpose | Recommended Product | Est. Price |
|------|---------|---------------------|------------|
| **RGB Light Strips** | Interior accent lighting | **Phanteks NEON Digital RGB Kit (2x 400mm)** | ~$35 |
| **Sleeved Cable Extensions** | Premium visible cable aesthetics | **CableMod Pro ModMesh** (see Cable Extensions section) | ~$90 |

---

## Noctua NA-FH1 Fan Hub - Important Clarification

The NA-FH1 has **two power input methods** (use ONE, not both):

| Power Method | Connector | Recommendation |
|--------------|-----------|----------------|
| **SATA Power** | Standard SATA connector | ✅ **Use this** - connects to PSU SATA cable |
| **4-Pin Molex Adapter** | Barrel-style adapter included | Alternative if SATA unavailable (keep as backup) |

The "barrel adapter" included in the box is a Molex-to-barrel connector as an alternative power option. **For your build, use the SATA power input** since your Corsair RM1000x has SATA power cables included.

---

## ASUS ROG Herculx GPU Support Bracket

Since you're using an ASUS ROG STRIX RTX 5070 Ti and ASUS ROG Crosshair X870E Hero motherboard, the **ASUS ROG Herculx** is the perfect aesthetic match:

| Feature | Details |
|---------|---------|
| **Compatibility** | Universal - works with any GPU |
| **Adjustment** | Height-adjustable with spirit level built-in |
| **Aesthetic** | ROG branding, matches ROG STRIX components |
| **Price** | ~$30-40 |

This matches your ROG theme (motherboard + GPU) and provides the same functionality as third-party options.

---

# 🔧 Phase 1: Pre-Build Preparation

## 1.1 Workspace Setup

### Required Workspace Conditions:
- **Large, clean, flat surface** (dining table or desk, minimum 3' x 4')
- **Good lighting** (overhead + task lamp recommended)
- **Non-carpeted floor** or use anti-static mat
- **Room temperature** (65-75°F / 18-24°C ideal)
- **Low humidity** environment

### Workspace Layout:
```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│   ┌─────────┐     ┌─────────────────┐     ┌──────────┐     │
│   │ TOOLS   │     │   MOTHERBOARD   │     │  CASE    │     │
│   │ & SCREWS│     │   WORK AREA     │     │ (closed) │     │
│   └─────────┘     └─────────────────┘     └──────────┘     │
│                                                             │
│   ┌─────────────────────────────────────────────────────┐   │
│   │              COMPONENT BOXES (organized)             │   │
│   └─────────────────────────────────────────────────────┘   │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## 1.2 ESD (Electrostatic Discharge) Precautions

> ⚠️ **CRITICAL**: Modern components are ESD-sensitive. One static discharge can damage components invisibly, causing failures weeks or months later.

### ESD Best Practices:
1. **Wear anti-static wrist strap** connected to unpainted metal (PSU case works when plugged in but OFF)
2. **Touch metal object** before handling components (case frame, PSU)
3. **Never place components on carpet or fabric**
4. **Handle PCBs by edges only** - avoid touching chips, contacts, or traces
5. **Keep components in anti-static bags** until ready to install
6. **Ground yourself frequently** throughout the build

## 1.3 Inventory Check

Open all boxes and verify contents. **Do NOT remove components from anti-static bags yet.**

### Motherboard Box (ASUS ROG Crosshair X870E Hero) Should Include:
- [ ] Motherboard (in anti-static bag)
- [ ] WiFi 7 antenna (2x external antennas)
- [ ] SATA cables (2x or more)
- [ ] M.2 screws and standoffs
- [ ] Q-connector for front panel
- [ ] ROG thank you card/stickers
- [ ] Driver/software USB or download card
- [ ] User manual

### CPU Cooler Box (Noctua NH-U12A chromax.black) Should Include:
- [ ] Heatsink tower with 2x NF-A12x25 PWM fans pre-mounted
- [ ] SecuFirm2 mounting kit (Intel and AMD hardware)
- [ ] NT-H1 thermal paste (tube)
- [ ] Low-Noise Adapters (L.N.A.)
- [ ] Fan clips (extra)
- [ ] Noctua metal case badge
- [ ] Long screwdriver

### Case Box (Fractal Design Meshify 2 XL) Should Include:
- [ ] Case with pre-installed fans (2x 140mm Dynamic X2)
- [ ] Accessory box with screws (motherboard, HDD, SSD, etc.)
- [ ] Cable ties
- [ ] HDD trays
- [ ] User manual

### PSU Box (Corsair RM1000x 2024) Should Include:
- [ ] Power supply unit
- [ ] Modular cables:
  - [ ] 24-pin ATX motherboard cable
  - [ ] 2x EPS/CPU 8-pin cables (4+4 pin)
  - [ ] 12V-2x6 (12VHPWR) cable for GPU
  - [ ] SATA power cables
  - [ ] Peripheral cables
- [ ] Power cord (regional)
- [ ] Cable bag
- [ ] Mounting screws (usually 4x)

### GPU Box (ASUS ROG STRIX RTX 5070 Ti) Should Include:
- [ ] Graphics card (in anti-static bag)
- [ ] Support bracket (some models)
- [ ] Driver download card

### Noctua Fans (7x NF-A14x25 G2 PWM) Each Should Include:
- [ ] Fan
- [ ] 4-pin PWM extension cable
- [ ] Low-Noise Adapter (L.N.A.)
- [ ] Anti-vibration mounts/corners
- [ ] Fan screws

### Other Components:
- [ ] AMD Ryzen 9 9950X (CPU in clamshell)
- [ ] G.Skill Trident Z5 RGB 64GB kit (2x 32GB sticks)
- [ ] Samsung 990 Pro 2TB NVMe

## 1.4 Tools Preparation

### Essential Tools:
| Tool | Use |
|------|-----|
| Phillips #2 screwdriver | Most PC screws |
| Phillips #1 screwdriver | M.2 screws, small screws |
| Phillips #0 screwdriver | Tiny screws (rare) |
| Needle-nose pliers | Jumper manipulation, cable routing |
| Flashlight/headlamp | Seeing into dark case areas |
| Zip ties or velcro straps | Cable management |
| Scissors | Opening packaging, cutting zip ties |
| Anti-static wrist strap | ESD protection |
| Isopropyl alcohol + cloth | Thermal paste cleanup if needed |

### Pro Tip - Magnetic Screwdriver:
A magnetic screwdriver is invaluable. You'll be working in tight spaces, and dropping a screw into the case can mean 20 minutes of fishing it out.

---

# 🔌 Phase 2: Motherboard Preparation (Outside Case)

> **Why outside the case?** Installing CPU, RAM, and cooler is MUCH easier on an open surface with full access.

## 2.1 Prepare the Motherboard Work Surface

1. **Place motherboard box on work surface** (provides cushion and anti-static surface)
2. **Remove motherboard from anti-static bag**
3. **Place motherboard on TOP of the anti-static bag**, on top of the box
4. **Orient motherboard** with rear I/O panel facing you (or left, depending on preference)

## 2.2 CPU Installation (AMD Ryzen 9 9950X)

> ⚠️ **EXTREME CAUTION**: The CPU socket has 1718 delicate pins (AMD AM5 is LGA - pins are in socket). Bent pins = dead motherboard. This is non-recoverable in most cases.

### Pre-Installation Checklist:
- [ ] Ground yourself (touch metal, wear strap)
- [ ] Have good lighting
- [ ] No food/drinks nearby
- [ ] Workspace is stable (no bumping)

### Step-by-Step CPU Installation:

**Step 1: Open the CPU Socket**

1. Locate the **retention arm** on the right side of the socket
2. Push the arm **down and outward** to release from the hook
3. Lift the arm **fully vertical** (90 degrees)
4. The **load plate** (metal frame) will lift with it
5. **DO NOT touch the socket pins** - they are extremely fragile

**Step 2: Prepare the CPU**

1. Open the AMD CPU clamshell packaging
2. **Hold CPU by edges only** - never touch the gold contacts on bottom
3. Locate the **golden triangle** on one corner of the CPU

**Step 3: Align and Place CPU**

1. Find the **matching triangle** on the motherboard socket (usually bottom-left corner)
2. Align CPU triangle with socket triangle
3. **Gently lower** the CPU straight down into the socket
4. The CPU should **drop into place** with no force - if it doesn't fit, check orientation
5. **DO NOT PRESS DOWN** - gravity is sufficient

> 🔥 **GOTCHA - AM5 Specific**: The CPU may appear to sit slightly high. This is normal. The retention mechanism will seat it properly.

**Step 4: Close the Socket**

1. Lower the load plate over the CPU
2. Push the retention arm down
3. Hook the arm under the retention hook
4. You will feel **significant resistance** - this is normal (it takes 20-30 lbs of force)
5. The plastic protective cover should **pop off automatically** - keep it for potential warranty returns

> ⚠️ **CRITICAL**: If you feel resistance when closing and hear grinding, STOP. Reopen and verify CPU orientation.

### CPU Installation Verification:
- [ ] CPU golden triangle matches socket triangle
- [ ] CPU sits flat in socket
- [ ] Retention arm is fully locked
- [ ] Plastic socket cover removed and saved

---

## 2.3 RAM Installation (G.Skill Trident Z5 RGB 64GB DDR5-6000)

### Understanding DIMM Slot Configuration:

The X870E Hero has **4 DIMM slots**. For **2 DIMMs**, you must use specific slots for optimal performance.

> 📖 **Check your motherboard manual**, but typically for ASUS AM5 boards with 2 sticks: Use slots **A2 and B2** (2nd and 4th slots from CPU)

```
    CPU SOCKET
        │
        ▼
    ┌───────┐
    │       │   [A1] ← Leave empty
    │  CPU  │   [A2] ← INSTALL FIRST STICK HERE
    │       │   [B1] ← Leave empty  
    └───────┘   [B2] ← INSTALL SECOND STICK HERE
```

### Step-by-Step RAM Installation:

**Step 1: Open DIMM Slot Latches**

1. Locate slots **A2** and **B2**
2. Push the **retention clips** at both ends **outward**
3. Clips should be in the open (angled outward) position

> 🔥 **GOTCHA**: Some motherboards have clips on only ONE end. The X870E Hero has clips on both ends.

**Step 2: Align RAM Stick**

1. Remove RAM from packaging (handle by edges)
2. Locate the **notch** on the bottom edge of the RAM stick
3. Align notch with the **key** in the DIMM slot
4. RAM only fits one way - don't force it

**Step 3: Insert RAM**

1. Hold RAM stick at both ends
2. Position directly over slot at **90-degree angle**
3. Press down **firmly and evenly** on both ends
4. You'll hear a **click** as each latch engages
5. Both retention clips should snap into the **locked position** automatically

> ⚠️ **CAUTION**: Installing RAM requires firm pressure - more than most expect. But if excessive force is needed, double-check alignment.

**Step 4: Repeat for Second Stick**

Install the second RAM stick in slot B2 using the same procedure.

### RAM Installation Verification:
- [ ] RAM sticks are in slots A2 and B2 (verify with manual)
- [ ] Both latches on each stick are fully engaged
- [ ] RAM sits level (no tilting)
- [ ] Gold contacts are not visible (fully inserted)

### DDR5 Specific Notes:

> 🔥 **DDR5 GOTCHA**: DDR5 modules have an on-board PMIC (Power Management IC). Each stick negotiates voltage independently. The G.Skill Trident Z5 kit is validated together, so always install them as a pair from the same kit.

---

## 2.4 CPU Cooler Installation (Noctua NH-U12A chromax.black)

The NH-U12A uses the **SecuFirm2** mounting system. For AMD AM5, you'll use the stock AMD mounting hardware that came with the motherboard.

### Pre-Installation Decision: Cooler Orientation

For the Meshify 2 XL with your fan configuration, I recommend:

**→ Exhaust toward rear of case (traditional orientation)**

This aligns with:
- Rear exhaust fan
- Natural convection (hot air rises)
- Simplest cable routing for fan connections

```
    TOP OF CASE (exhaust)
           ↑ ↑ ↑
    ┌──────────────────┐
    │    ┌─────┐       │
    │    │COOLER│ →→→ ├─── REAR (exhaust)
    │    │ FAN │       │
    │    └─────┘       │
    │                  │
    │    GPU           │
    │                  │
    └──────────────────┘
       ↑ ↑ ↑ ↑ ↑
    FRONT (intake)    BOTTOM (intake)
```

### Step-by-Step Cooler Installation:

**Step 1: Check Pre-Applied Thermal Material**

1. The NH-U12A does **NOT** come with pre-applied thermal paste
2. You must apply **NT-H1** (included) or your preferred paste

**Step 2: Prepare AMD AM5 Mounting**

The X870E Hero comes with AMD's standard AM5 mounting backplate pre-installed. The NH-U12A SecuFirm2 system works with it.

1. Locate the **AMD mounting bars** in the Noctua box (labeled "AM4/AM5")
2. Find the **spacers** (small plastic rings)
3. Find the **NM-AMB7 mounting screws** (or equivalent in your kit)

**Step 3: Install Mounting Bars**

1. The stock AMD backplate has **4 threaded posts** around the CPU
2. If your board uses the plastic AMD clips, remove them
3. Place **spacers** on the threaded posts
4. Position the **mounting bars** across the posts (one on each side of socket)
5. Secure with **thumbscrews** - hand tight, then 1/4 turn with screwdriver

**Step 4: Apply Thermal Paste**

> 🔥 **GOTCHA**: Less is more with thermal paste. A pea-sized amount is sufficient for the 9950X.

**Method: Pea/Dot Method (Recommended)**

1. Open NT-H1 tube
2. Apply a **pea-sized dot** (about 4mm diameter) in center of CPU
3. Do NOT spread it - the cooler mounting pressure will spread it evenly

> ⚠️ **CAUTION**: If you need to remount the cooler, **clean and reapply** thermal paste. Never reuse paste.

**Step 5: Mount the Cooler**

1. **Remove the fans** from the cooler tower temporarily (easier to mount)
2. **Orient the cooler** so the heatpipes are vertical (tower points up)
3. **Lower the cooler** onto the CPU, aligning the mounting holes
4. **Hand-tighten the screws** in a cross pattern (don't fully tighten yet)
5. **Final tighten in cross pattern**: 1/4 turn at a time, alternating

**Step 6: Reattach Fans**

1. Clip the **two NF-A12x25 fans** back onto the cooler tower
2. Ensure airflow direction arrow points toward REAR of case

**Step 7: Connect Fan Cables**

1. Locate **CPU_FAN** header on motherboard (usually top-center area)
2. Connect one fan to **CPU_FAN**
3. Connect second fan to **CPU_OPT** (optional fan header) if available

> 📍 **CABLE MANAGEMENT NOTE**: Route the fan cables behind the cooler tower, then down along the motherboard edge toward the headers.

### CPU Cooler Installation Verification:
- [ ] Cooler is firmly mounted (no wiggle)
- [ ] Fans are attached and oriented correctly (airflow to rear)
- [ ] Fan cables connected to CPU_FAN/CPU_OPT
- [ ] No thermal paste squeeze-out visible on sides

---

## 2.5 Pre-Case Installation Test (Optional but Recommended)

Before installing everything in the case, a quick test ensures components work:

### "Bench Test" Procedure:

1. Connect **24-pin ATX** cable to motherboard
2. Connect **8-pin EPS** (CPU power) cable to motherboard (top-left area)
3. Connect **monitor** to GPU
4. Plug **PSU into wall** (switch OFF)
5. Bridge the **power switch pins** with a screwdriver to power on
6. System should POST - fans spin, debug LEDs cycle

> ⚠️ If system doesn't POST, stop here and troubleshoot before case installation. Check RAM seating first (most common issue).

---

# 🏗️ Phase 3: Case Preparation and Fan Installation

## 3.1 Case Unboxing and Familiarization

### Meshify 2 XL Overview:

**Key Specifications:**
- **Motherboard Support**: E-ATX, ATX, mATX, ITX
- **Max GPU Length**: 467mm (with front fans)
- **Max CPU Cooler Height**: 185mm
- **Fan Mounts**: 
  - Top: 3x 140mm or 3x 120mm
  - Front: 3x 140mm or 3x 120mm
  - Bottom: 2x 140mm or 3x 120mm
  - Rear: 1x 140mm or 1x 120mm
- **Pre-installed Fans**: 2x 140mm Dynamic X2 GP-14 (front intake)

### First Steps:
1. **Remove case from box** - it's heavy, use both hands
2. **Remove all packaging** (foam, bags, etc.)
3. **Remove both side panels**
4. **Locate accessory box** (usually in drive bays)

## 3.2 Fan Configuration Strategy

### Recommended Fan Layout (Optimal Airflow):

| Position | Fans | Role | Fan Type |
|----------|------|------|----------|
| **Front** | 3x 140mm | Intake | Noctua NF-A14x25 G2 |
| **Bottom** | 2x 140mm | Intake (GPU feed) | Noctua NF-A14x25 G2 |
| **Top** | 2x 140mm | Exhaust | Noctua NF-A14x25 G2 |
| **Rear** | 1x 140mm | Exhaust | Stock Dynamic X2 |

**Total: 8 fans (7 Noctua + 1 stock)**

### Airflow Pattern:
```
                    EXHAUST (top fans)
                     ↑   ↑   ↑
    ┌────────────────────────────────────────────┐
    │                                            │
    │    ══════════════════════════              │
    │         TOP FANS (2x140)                   │──→ EXHAUST
    │    ══════════════════════════              │    (rear fan)
  ──│→                                           │
  ──│→    [CPU COOLER]                           │
  ──│→         ↓                                 │
    │    ┌─────────────────────────┐             │
    │    │    GPU                  │             │
    │    │                         │             │
    │    └─────────────────────────┘             │
    │              ↑               ↑             │
    │    ══════════════════════════              │
    │        BOTTOM FANS (2x140)                 │
    │    ══════════════════════════              │
    └────────────────────────────────────────────┘
                    INTAKE
```

### Why This Configuration?

1. **Positive pressure**: More intake than exhaust = less dust intrusion
2. **Direct GPU cooling**: Bottom fans feed cool air directly to GPU
3. **CPU gets fresh air**: Front fans + CPU cooler exhausts to rear/top
4. **Heat rises naturally**: Top exhaust assists natural convection

## 3.3 Install Noctua Fans

### Fan Orientation Reference:

All Noctua fans have:
- **Arrow on frame**: Indicates airflow direction
- **Sticker/logo side**: Exhaust side (air exits this side)
- **Open blade side**: Intake side (air enters this side)

```
    Intake fans: Logo/sticker faces INTO case
    Exhaust fans: Logo/sticker faces OUT of case
```

### Fan Cable Summary Table:

| Fan Position | Quantity | Cable Routing Path |
|--------------|----------|-------------------|
| Front (intake) | 3x Noctua | Through side cutout → behind MB tray → fan hub |
| Bottom (intake) | 2x Noctua | Through PSU shroud → behind MB tray → fan hub |
| Top (exhaust) | 2x Noctua | Down through rear cutout → behind MB tray → fan hub |
| Rear (exhaust) | 1x Stock | Direct to motherboard CHA_FAN or to hub |

## 3.4 Install Fan Hub (Noctua NA-FH1)

### Fan Hub Location:

Mount the fan hub **behind the motherboard tray** for clean cable management.

**Step 1: Choose Mounting Location**

1. Find a flat spot on the back of the motherboard tray
2. Look for existing SSD mount points or use double-sided tape
3. Position where all fan cables can reach

**Step 2: Mount the Hub**

1. Use included mounting tape or velcro
2. Ensure hub is accessible for future changes

**Step 3: Connect All Fan Cables**

1. Connect all 7 Noctua fans + 1 rear fan to hub channels
2. Connect hub's **PWM input cable** to motherboard's **CPU_FAN** header

**Step 4: Power the Hub**

Connect the hub's **SATA power input** to a SATA power cable from the PSU.

> 🔥 **REMINDER**: Use the SATA power connector, not the included Molex barrel adapter.

```
    Fan Hub Connection Diagram:
    
    ┌──────────────────────────────────────────┐
    │                FAN HUB                   │
    │  [1][2][3][4][5][6][7][8]               │
    │   │  │  │  │  │  │  │  │                │
    │   FR FR FR BT BT TP TP RR               │ 
    │                                          │
    │  [PWM IN]──────→ To Motherboard CPU_FAN │
    │  [SATA PWR]────→ To PSU SATA power      │
    └──────────────────────────────────────────┘
    
    FR = Front fans | BT = Bottom | TP = Top | RR = Rear
```

---

# ⚙️ Phase 4: Motherboard Installation

## 4.1 Verify Standoffs

> ⚠️ **CRITICAL**: Incorrect standoffs can short-circuit your motherboard, destroying it instantly.

1. The Meshify 2 XL comes with **standoffs pre-installed** for ATX
2. Your X870E Hero is **ATX form factor**
3. **Verify** standoffs match motherboard mounting holes (9 for ATX)
4. **Remove any extra standoffs** that don't align with motherboard holes

## 4.2 I/O Shield Installation

> 🔥 **GOTCHA - X870E Hero**: This motherboard has an **integrated I/O shield** attached to the board. You do NOT need to install a separate shield.

## 4.3 Install Motherboard in Case

**Step 1: Position Motherboard**

1. **Ground yourself**
2. Tilt motherboard at angle, rear I/O first
3. Align rear I/O panel with case opening
4. Lower motherboard onto standoffs
5. Shift until all holes align with standoffs

**Step 2: Secure Motherboard**

1. Start with the **center screw** (prevents board flexing)
2. Then **corner screws**
3. Finally remaining screws
4. **Snug only** - do not over-tighten

## 4.4 Connect Front Panel Cables

The X870E Hero includes a **Q-Connector** for easy front panel connections.

**Front Panel Cables from Meshify 2 XL:**
- Power Switch (PWR)
- Reset Switch (RESET)
- Power LED (+/-)
- HDD LED (+/-)
- USB 3.0 Header (19-pin)
- USB-C Header (20-pin)
- HD Audio

---

# 💾 Phase 5: Storage Installation

## 5.1 Samsung 990 Pro 2TB NVMe Installation

### Locate Primary M.2 Slot:

On the X870E Hero, the **primary M.2 slot** (M.2_1) is typically located under the integrated heatsink, directly below the CPU socket.

> 🔥 **GOTCHA - M.2 Heatsink**: The X870E Hero has M.2 heatsinks with thermal pads. Remove the heatsink, install the SSD, then reinstall the heatsink.

### Step-by-Step M.2 Installation:

1. Remove M.2 heatsink screws and lift heatsink
2. **Remove protective film** from thermal pad if present
3. Insert M.2 drive at **30-degree angle**
4. Press SSD flat and secure with M.2 screw
5. Reinstall heatsink

> 🔥 **GOTCHA - Double Thermal Pad**: The 990 Pro has a built-in heatsink label. Leave it on - removing voids Samsung's warranty.

---

# ⚡ Phase 6: Power Supply Installation and Cable Routing

## 6.1 Corsair RM1000x (2024) Preparation

### Modular Cable Selection:

| Cable | Required | Quantity |
|-------|----------|----------|
| 24-pin ATX | ✅ | 1 |
| 8-pin EPS (CPU) | ✅ | 2 |
| 12V-2x6 (GPU) | ✅ | 1 |
| SATA | ✅ | 1 (for fan hub) |
| Peripheral/Molex | ❌ | Not needed |

### GPU Power Cable - CRITICAL:

> 🔥 **MAJOR GOTCHA - RTX 5070 Ti Power**

The RTX 5070 Ti uses the **12V-2x6 connector** (also called 12VHPWR). The RM1000x (2024) includes a **native 12V-2x6 cable**.

> ⚠️ **12VHPWR/12V-2x6 Safety**: These connectors must be **fully inserted**. Partial insertion causes resistance, heat, and potential fire. The connector should click securely. **No visible gold contacts when properly seated.**

## 6.2 Install PSU in Case

**Fan Orientation**: Fan facing **DOWN** toward bottom filter (recommended).

## 6.3 Cable Routing Strategy

### The Golden Rules of Cable Management:

1. **Route cables behind the motherboard tray** whenever possible
2. **Plan routes before plugging in** - dry-fit cables first
3. **Use case cable channels and tie-down points**
4. **Bundle cables going the same direction**
5. **Leave service loops** - slight slack for future maintenance
6. **Don't route cables over airflow paths**

> 📍 **PRO TIP FOR FUTURE CABLE EXTENSIONS**: When routing your stock cables during the base build, **leave a little extra slack** behind the motherboard tray. This makes it much easier to add sleeved extensions later without re-routing everything.

---

# 🎮 Phase 7: GPU Installation

## 7.1 Prepare for GPU Installation

1. **Remove PCIe slot covers** (RTX 5070 Ti is likely **3-slot** card)
2. **Verify clearance** - Meshify 2 XL supports up to 467mm GPUs
3. **Have ASUS ROG Herculx support bracket ready**

## 7.2 Install the GPU

1. Locate primary PCIe x16 slot on motherboard
2. Push the **retention latch** to open position
3. Align GPU and **insert straight down** with even pressure
4. Press firmly until retention latch clicks closed
5. Secure with screws through bracket into case

## 7.3 Connect GPU Power

> ⚠️ **CRITICAL STEP - 12V-2x6 Connection**

1. **Align carefully** - the connector is keyed
2. **Insert STRAIGHT** - not at an angle
3. **Push until fully seated** - should click
4. **Verify**: NO gold contacts should be visible
5. Avoid sharp bends at connector

```
    12V-2x6 Connector - Proper Insertion:
    
    WRONG (angled):        CORRECT (straight):
    
      ╱────────             │────────│
     ╱                      │        │
    ┴────────────           └────────┘
    [GPU]                   [GPU]
```

## 7.4 Install GPU Support Bracket (ASUS ROG Herculx)

1. Follow bracket instructions
2. Adjust height to support GPU weight
3. Use built-in spirit level to ensure GPU is level
4. Should support weight, not push GPU up

---

# 🧹 Phase 8: Final Cable Management and Cleanup

## 8.1 Final Connections Verification

### Power Connections:
- [ ] 24-pin ATX fully seated (latch engaged)
- [ ] 2x 8-pin EPS fully seated
- [ ] GPU 12V-2x6 fully seated (NO visible gold)
- [ ] SATA power to fan hub

### Data/Signal Connections:
- [ ] CPU_FAN header (from fan hub)
- [ ] Front panel (Q-connector installed)
- [ ] USB 3.0 header
- [ ] USB-C header
- [ ] HD Audio header

### Component Seating:
- [ ] RAM fully clicked into slots A2 and B2
- [ ] GPU retention latch closed
- [ ] M.2 SSD secured with screw
- [ ] CPU cooler firmly mounted

## 8.2 Install Side Panels and External Connections

1. Verify no cables preventing panel closure
2. Install WiFi antennas on rear I/O
3. Connect monitor to **GPU** (not motherboard)
4. Connect peripherals and power cable

---

# 🖥️ Phase 9: First Boot and BIOS Configuration

## 9.1 First Power On

1. Flip PSU switch to ON
2. Press case power button
3. Watch Q-LED indicators:
   - **CPU** - Red: CPU issue
   - **DRAM** - Yellow: Memory issue
   - **VGA** - White: Graphics issue
   - **BOOT** - Green: Boot device issue

## 9.2 BIOS First-Time Setup

### Critical Settings:

**1. Update BIOS** (download latest from ASUS support)

**2. Enable EXPO for RAM**
- Go to **Ai Tweaker** → **Ai Overclock Tuner** → **EXPO I**
- This enables DDR5-6000 speeds

**3. Verify Component Detection**
- CPU: AMD Ryzen 9 9950X
- Memory: 64GB @ 6000MHz
- Storage: Samsung 990 Pro 2TB

**4. Set Boot Order**
- First: USB drive (for OS installation)
- Second: Samsung 990 Pro

**5. Configure Fan Profiles**

Recommended curve:
| CPU Temp | Fan Speed |
|----------|-----------|
| 40°C | 40% |
| 50°C | 50% |
| 60°C | 65% |
| 70°C | 80% |
| 80°C | 100% |

---

# 💿 Phase 10: Operating System Installation

## 10.1 Install Windows 11

1. Create installation USB with Windows 11 Media Creation Tool
2. Boot from USB (press F8 for boot menu)
3. Select **Custom: Install Windows only**
4. Select Samsung 990 Pro drive
5. Complete setup

## 10.2 Post-Installation

### Driver Installation Priority:

1. **Chipset Drivers** (AMD) - from AMD.com or ASUS support
2. **GPU Drivers** (NVIDIA) - from nvidia.com/drivers
3. **Motherboard Drivers** (ASUS) - Armoury Crate or individual drivers
4. **Samsung NVMe Driver** (Optional) - Samsung Magician

---

# 🔥 Phase 11: Comprehensive Stress Testing Guide

**Total Testing Time: 8-24 hours**

## 11.1 Monitoring Software

| Software | Purpose |
|----------|---------|
| **HWiNFO64** | Comprehensive monitoring |
| **Core Temp** | CPU temperature |
| **GPU-Z** | GPU monitoring |
| **CrystalDiskInfo** | Storage health |

## 11.2 Temperature Guidelines

| Component | Idle | Load | Max Safe |
|-----------|------|------|----------|
| CPU (9950X) | 35-50°C | 70-85°C | 95°C |
| GPU (5070 Ti) | 30-45°C | 65-80°C | 90°C |
| NVMe SSD | 35-45°C | 50-70°C | 85°C |

## 11.3 Test Sequence

| Test | Tool | Duration | Pass Criteria |
|------|------|----------|---------------|
| CPU Thermal | Prime95 Small FFTs | 30 min | Temps <90°C |
| CPU Stability | Prime95 Blend | 4-8 hrs | No errors |
| RAM | MemTest86+ | 4+ passes | 0 errors |
| GPU Thermal | FurMark | 30 min | Temps <90°C |
| GPU Stability | 3DMark Stress | 20 loops | 97%+ stability |
| Storage | CrystalDiskMark | 5 min | Within spec |
| Combined | AIDA64 Stress | 2-4 hrs | No crashes |

---

# 🔧 Troubleshooting Common Issues

## No POST / No Display

**Check Q-LEDs:**
- **DRAM (Yellow)**: Reseat RAM, try single stick in A2
- **VGA (White)**: Reseat GPU, check power cable
- **CPU (Red)**: Reseat CPU, check for bent pins
- **BOOT (Green)**: Normal if no OS installed

**Try:**
1. Power cycle (hold power button 30 sec with PSU off)
2. Clear CMOS (remove battery 5 min or use jumper)

## Random Crashes / BSODs

1. Disable EXPO, test at default RAM speed
2. Update all drivers
3. Monitor temperatures
4. Verify all power cables fully seated

## High Temperatures

**CPU:** Reseat cooler, reapply thermal paste, check fan operation
**GPU:** Check bottom intake fans, verify GPU fans spinning

---

# 🎨 Optional Aesthetic Upgrades - Cable Extensions

## Overview

Cable extensions are **purely aesthetic** - your build works perfectly with stock Corsair cables. Extensions go BETWEEN your stock cables and components:

```
PSU ══════════════════════════► EXTENSION ══════════════════► Motherboard/GPU
    Stock Corsair Cable   Sleeved Extension
    (hidden behind case)  (visible, premium look)
```

## Recommended Configuration (CableMod)

Order from **https://store.cablemod.com/configurator/**

### Extensions:

| Product | Color | Length | Quantity |
|---------|-------|--------|----------|
| **Pro ModMesh 24-pin ATX Extension** | Black | 300mm | 1 |
| **Pro ModMesh 8-pin EPS Extension** | Black | 450mm | 2 |

### Cable Combs:

| Product | Color | Quantity |
|---------|-------|----------|
| **24-pin Aluminum Comb** | Black | 1 per cable |
| **8-pin Aluminum Comb** | Black | 2 per cable |

### Why These Lengths?

- **24-pin (300mm)**: Standard length, plenty for Meshify 2 XL
- **8-pin EPS (450mm)**: Longer because EPS connectors are at top-left of motherboard, routed from bottom PSU

### What About GPU Cable?

**Use your stock Corsair 12V-2x6 cable** for the GPU. Reasons:
- The RM1000x (2024) includes a native 12V-2x6 cable
- 12V-2x6 extensions have had quality/melting issues
- Stock cable is safest for this high-power connector

## Installing Extensions Later

**Good news:** Extensions can be easily added after your base build is complete!

| Aspect | Details |
|--------|---------|
| **Difficulty** | Very Easy |
| **Time** | 15-30 minutes |
| **Risk** | Zero |
| **Disassembly needed** | None |

### Steps When Extensions Arrive:

1. Power off, switch off PSU
2. Unplug cable from motherboard (press latch, pull)
3. Plug extension into motherboard
4. Plug stock cable into extension
5. Add combs, route nicely
6. Done!

### Pro Tip:

During your initial build, **leave extra slack** on cables behind the motherboard tray. This makes adding extensions later much easier.

```
BEHIND MOTHERBOARD TRAY:

Too tight (bad):          Good slack (do this):
    │                         ╭───╮
    │                         │   │
    ════                      ════
```

---

# 🌈 Optional Aesthetic Upgrades - RGB Lighting

## Your Build's Existing RGB

Your build already includes some RGB from these components:

| Component | RGB Type | Control Software |
|-----------|----------|------------------|
| **G.Skill Trident Z5 RGB RAM** | Addressable RGB on each stick | ASUS Aura Sync / G.Skill Trident Z Lighting Control |
| **ASUS ROG STRIX RTX 5070 Ti** | ROG logo + edge lighting | ASUS Armoury Crate / Aura Sync |
| **ASUS ROG Crosshair X870E Hero** | ROG logo, I/O shroud, chipset area | ASUS Aura Sync |

All of these can be **synchronized together** using **ASUS Aura Sync** in Armoury Crate.

---

## Recommended RGB Addition: Phanteks NEON Digital RGB Strips

For subtle, premium interior lighting that complements your all-black build, I recommend:

### Phanteks NEON Digital RGB Kit

| Feature | Details |
|---------|---------|
| **Product** | Phanteks NEON Digital RGB Strip Kit |
| **Contents** | 2x 400mm diffused LED strips |
| **Connector** | 5V ARGB (3-pin) - compatible with ASUS Aura Sync |
| **Mounting** | Magnetic + adhesive backing |
| **Price** | ~$35 |

### Why This One?

| Benefit | Explanation |
|---------|-------------|
| **Diffused lighting** | Soft, even glow - not harsh individual LEDs |
| **Premium look** | Doesn't look "gamer-y" or cheap |
| **Aura Sync compatible** | Syncs with your RAM, GPU, and motherboard |
| **Easy to turn off** | One click in software if you change your mind |
| **Non-destructive** | Magnetic mounting, easy to remove |

### Placement Recommendations
```
┌─────────────────────────────────────────┐
│   ════════════════════════════          │ ← Option A: Top edge
│                                         │   (illuminates components from above)
│        [CPU COOLER]                     │
│                                         │
│   ║    [GPU]                            │
│   ║                                     │ ← Option B: Front edge
│   ║                                     │   (creates depth, side glow)
│   ════════════════════════════          │ ← Option C: PSU shroud top
└─────────────────────────────────────────┘   (underlighting effect)
```

**Recommended placement**: One strip along the **top edge** pointing down, one along the **front vertical edge** or **bottom of PSU shroud**.

### Installation

**Step 1: Connect to Motherboard**

1. Locate **ADD_GEN2** header on your X870E Hero (5V ARGB header)
2. Connect the Phanteks controller/cable to this header
3. Route cable behind motherboard tray

**Step 2: Mount Strips**

1. Plan placement before removing adhesive backing
2. Clean mounting surface with isopropyl alcohol
3. For magnetic strips: simply attach to metal case surfaces
4. For non-magnetic surfaces: use included adhesive

**Step 3: Configure in Software**

1. Open **ASUS Armoury Crate**
2. Go to **Aura Sync** section
3. Strips should appear as addressable RGB devices
4. Sync with RAM, GPU, and motherboard lighting

---

## Color Scheme Suggestions

With your all-black chromax build, consider these color options:

| Color | Vibe | Best For |
|-------|------|----------|
| **White** | Clean, modern, minimalist | Highlighting components, photography |
| **Ice Blue / Cyan** | Cool, techy, futuristic | Tech/gaming aesthetic |
| **Amber / Orange** | Warm, unique | Subtle Noctua brand color reference |
| **Deep Red** | Classic ROG gaming look | Matching ROG branding |
| **Static single color** | Classy, understated | Professional appearance |

> 💡 **Pro Tip**: Avoid rainbow/color cycling effects with an all-black premium build. A **static single color** or **slow breathing effect** looks much more refined.

---

## What NOT to Add (And Why)

| RGB Option | Recommendation | Reason |
|------------|----------------|--------|
| **RGB Fans** | ❌ Skip | Your Noctua NF-A14x25 G2s are premium performers - don't replace them |
| **RGB CPU Cooler** | ❌ Skip | NH-U12A chromax.black is excellent and matches your theme |
| **RGB AIO** | ⚠️ Only if you want LCD display | Major change, Noctua is quieter |
| **Multiple RGB strips** | ⚠️ Use restraint | Less is more - 2 strips max |
| **RGB GPU Support** | ❌ Skip | ROG Herculx matches better |

---

## RGB Shopping Summary

| Item | Price | Priority |
|------|-------|----------|
| **Phanteks NEON Digital RGB Kit (2x 400mm)** | ~$35 | Optional |

**Connection**: Plugs into **ADD_GEN2** header on X870E Hero (5V ARGB, 3-pin)

---

# 📋 Final Build Checklist

## Physical Build:
- [ ] All cables routed behind motherboard tray
- [ ] No cables blocking fans
- [ ] GPU supported with ROG Herculx (no sag)
- [ ] All panels close properly
- [ ] WiFi antennas attached

## BIOS Configuration:
- [ ] BIOS updated to latest version
- [ ] EXPO enabled for RAM (6000MHz)
- [ ] Boot order set correctly
- [ ] Fan profiles configured

## Software:
- [ ] Windows 11 installed and updated
- [ ] All drivers installed
- [ ] Monitoring software installed
- [ ] ASUS Armoury Crate installed (for Aura Sync RGB control)

## Stress Testing:
- [ ] CPU stress test passed
- [ ] RAM test passed (0 errors)
- [ ] GPU stress test passed
- [ ] Storage verified healthy

## Optional Aesthetics:
- [ ] Cable extensions installed (when they arrive)
- [ ] RGB strips installed and synced (if purchased)

---

# 🎉 Congratulations!

You've completed a high-end PC build with excellent cable management and optimized airflow. Your system features:

- **Processor**: 16-core/32-thread powerhouse
- **Graphics**: Latest generation RTX for gaming and creative work
- **Memory**: 64GB high-speed DDR5 for demanding applications
- **Storage**: Ultra-fast NVMe with room for expansion
- **Cooling**: Premium Noctua fans with optimal airflow configuration
- **Power**: Reliable 1000W supply with headroom for upgrades
- **Aesthetics**: All-black chromax theme with optional RGB accents

**Enjoy your new build!**

---

## References and Resources

- **ASUS ROG Crosshair X870E Hero**: [ASUS Support](https://rog.asus.com/)
- **Noctua NH-U12A Installation**: [Noctua Mounting Guide](https://noctua.at/en/nh-u12a/support)
- **Fractal Design Meshify 2 XL**: [Fractal Support](https://www.fractal-design.com/)
- **Corsair RM1000x (2024)**: [Corsair Support](https://www.corsair.com/)
- **CableMod Extensions**: [CableMod Store](https://store.cablemod.com/)
- **Phanteks NEON RGB**: [Phanteks](https://www.phanteks.com/)
- **ASUS Aura Sync**: [Armoury Crate](https://rog.asus.com/armoury-crate/)

---

*Guide prepared February 2026. Component availability and specifications may change.*