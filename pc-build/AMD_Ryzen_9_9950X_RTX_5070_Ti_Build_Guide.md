# 🖥️ Comprehensive PC Build Guide
## AMD Ryzen 9 9950X | RTX 5070 Ti | Fractal Meshify 2 XL

---

# 📋 Table of Contents

1. [Build Components](#build-components)
2. [Additional Items to Purchase](#-additional-items-to-purchase)
3. [Build Day Fast Path](#-build-day-fast-path)
4. [Pre-Build Preparation](#-phase-1-pre-build-preparation)
5. [Motherboard Preparation (Outside Case)](#-phase-2-motherboard-preparation-outside-case)
6. [Case Preparation and Fan Installation](#-phase-3-case-preparation-and-fan-installation)
7. [Motherboard Installation](#-phase-4-motherboard-installation)
8. [Storage Verification](#-phase-5-storage-verification)
9. [Power Supply Installation and Cable Routing](#-phase-6-power-supply-installation-and-cable-routing)
10. [Cable Routing Quick Reference](#-cable-routing-quick-reference)
11. [GPU Installation](#-phase-7-gpu-installation)
12. [Final Cable Management and Cleanup](#-phase-8-final-cable-management-and-cleanup)
13. [First Boot and BIOS Configuration](#-phase-9-first-boot-and-bios-configuration)
14. [Operating System Installation](#-phase-10-operating-system-installation)
15. [Comprehensive Stress Testing Guide](#-phase-11-comprehensive-stress-testing-guide)
16. [Troubleshooting Common Issues](#-troubleshooting-common-issues)
17. [Optional Aesthetic Upgrades - Cable Extensions](#-optional-aesthetic-upgrades---cable-extensions)
18. [Optional Aesthetic Upgrades - RGB Lighting](#-optional-aesthetic-upgrades---rgb-lighting)
19. [Ongoing Maintenance](#-ongoing-maintenance)

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
| **USB Flash Drive (16GB+)** | OS installation media | ✅ Already have Ventoy multi-boot USB | — |

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

# 🚀 Build Day Fast Path

Use this as your live build flow. Detailed instructions and inline STOP checkpoints are in the phases below.

## High-Level Build Sequence

1. Prepare workspace, tools, and components
2. Prepare motherboard outside the case (CPU, RAM, NVMe, cooler, CPU_FAN/CPU_OPT fan connections, optional bench test)
3. Prepare the case (fans, cable routing, fan hub, RGB strips if used)
4. Install PSU and stage major cables
5. Install motherboard into case and connect main power + internal headers
6. Install GPU and support bracket
7. Final cable cleanup
8. First boot and BIOS
9. Install operating system
10. Stress test and validate

## Major STOP Checkpoints

- CPU installation, RAM seating, NVMe mounting, and cooler setup verified before moving into the case
- Bench test completed (if performed) before committing to full case assembly
- Fan hub + motherboard main power + front-panel/internal headers verified before GPU blocks access
- GPU seating + 12V-2x6 power seating verified before first full power-on
- Full pre-boot and first successful boot checks complete before final panel closure

> 🧠 **Build Discipline Rule**: If anything seems wrong, stop immediately and return to the most recent STOP checkpoint. Then re-verify that checkpoint checklist first, and backtrack only as far as needed to correct the issue. Verify each item with visual inspection or direct testing before proceeding.

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

## 1.5 Protective Films and Stickers — Remove These During Build

Multiple components ship with protective films that must be removed. Keep an eye out for these throughout the build:

| Component | Film Location | When to Remove |
|-----------|--------------|----------------|
| **GPU** | Backplate, fan shroud, sometimes on the display ports | Before installing in case |
| **Case side panels** | Both sides of tempered glass panel | Before final panel closure |
| **Motherboard I/O area** | Decorative shroud may have a film | During motherboard unboxing |
| **M.2 heatsink** | Thermal pad protective film (underside) | During NVMe installation |
| **CPU cooler** | Copper base plate may have a protective plastic cover | Before applying thermal paste |
| **RAM** | Light bar / RGB diffuser may have a thin film | During RAM unboxing |

> ⚠️ **CRITICAL**: The CPU cooler base plate and M.2 thermal pad films **must** be removed — leaving them on prevents proper heat transfer and will cause thermal issues. Other films are cosmetic but should still be removed.

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

> 🛑 **STOP — Verify CPU Installation Before Continuing**
> - [ ] CPU is seated flat with correct triangle alignment
> - [ ] Retention arm is fully locked under the hook
> - [ ] Socket cover popped off and is saved for warranty/service use
> - [ ] No socket pin contact or handling mistakes occurred
> 
> If any item above is not true, do not continue yet.

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
2. Push the **retention clip(s)** to the open position
3. On most modern ASUS AM5 boards (including the X870E Hero), there is a **single latch on one end** of each DIMM slot (the end farthest from the CPU). The other end is a fixed hook that the RAM slides into.

> 🔥 **GOTCHA**: Check your specific board — the X870E Hero uses **single-sided latches**. Only one end opens. The RAM's bottom edge hooks into the fixed end first, then you press down on the latched end until it clicks.

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

> 🛑 **STOP — Verify RAM Installation Before Continuing**
> - [ ] Both DIMMs are installed in A2 and B2
> - [ ] Latches are fully engaged on each DIMM slot
> - [ ] RAM sits level with no tilt
> - [ ] No gold contacts are visible
> 
> If any item above is not true, do not continue yet.

### DDR5 Specific Notes:

> 🔥 **DDR5 GOTCHA**: DDR5 modules have an on-board PMIC (Power Management IC). Each stick negotiates voltage independently. The G.Skill Trident Z5 kit is validated together, so always install them as a pair from the same kit.

---

## 2.4 NVMe Installation (Samsung 990 Pro 2TB) — Before Cooler

> 📍 **Why install NVMe now?** The primary M.2_1 slot on the X870E Hero is directly below the CPU socket, partially under the cooler area. Installing it **before** mounting the CPU cooler gives you full access and visibility. This is much easier than reaching under/around the cooler later.

### Step-by-Step M.2 Installation:

1. Locate the **M.2_1 heatsink** — the large metal plate below the CPU socket area
2. Remove M.2 heatsink screws (usually 1-2 Phillips screws) and lift the heatsink off
3. **Remove protective film** from the thermal pad on the heatsink's underside (if present)
4. Insert M.2 drive into the slot at a **30-degree angle** (gold contacts first, label side up)
5. Press the SSD flat against the standoff
6. Secure with the **M.2 screw** (small Phillips #1)
7. Reinstall the heatsink over the SSD and re-secure with its screws

> 🔥 **GOTCHA - Samsung 990 Pro Label**: The 990 Pro has a built-in heatsink label on its top side. **Leave it on** — removing it voids Samsung's warranty. The motherboard's heatsink thermal pad will still make adequate contact through the label.

> 🔥 **GOTCHA - Don't forget the thermal pad film**: The motherboard heatsink has a thin plastic film over the thermal pad. You MUST peel this off or the thermal pad won't transfer heat.

### NVMe Installation Verification:
- [ ] SSD is in the M.2_1 slot (primary, closest to CPU)
- [ ] SSD is fully flat and secured with screw
- [ ] Heatsink thermal pad film removed
- [ ] Heatsink re-installed over SSD

> 🛑 **STOP — Verify NVMe Installation Before Continuing**
> - [ ] Drive is in M.2_1 and fully flat on the standoff
> - [ ] M.2 screw is installed and snug
> - [ ] Thermal pad protective film was removed
> - [ ] Heatsink is reinstalled and secured
> 
> If any item above is not true, do not continue yet.

---

## 2.5 CPU Cooler Installation (Noctua NH-U12A chromax.black)

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

The X870E Hero comes with AMD's standard AM5 mounting backplate pre-installed on the rear of the motherboard. The NH-U12A SecuFirm2 system works with this backplate.

1. Locate the **AMD mounting bars** in the Noctua box (labeled "AM4/AM5")
2. Find the **spacers** (small plastic rings)
3. Find the **NM-AMB7 mounting screws** (or equivalent in your kit)

> 🔥 **GOTCHA - Remove Plastic Retention Clips**: The motherboard ships with **plastic retention clips** snapped onto the backplate standoffs (these are for AMD's stock cooler). You must **unclip and remove these plastic pieces** before installing the Noctua mounting bars. They snap off — pull them straight up or squeeze the tabs to release. The metal backplate itself stays in place.

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

### CPU Cooler Cable Routing Note

Before the motherboard goes into the case, do a quick cable orientation check on the cooler fans:

- Route both cooler fan cables toward the **top edge or upper-right edge** of the motherboard, whichever gives the cleanest path to **CPU_FAN** and **CPU_OPT**
- Keep the cables **tucked behind the heatsink fan frame/clips** where possible so they are not visible from the side panel window
- Leave a **small service loop** so the fan clips can be removed later without straining the headers
- Make sure no cable can drift into the fan blades

> 📍 **Routing Tip**: Treat the CPU cooler fan cables as a separate, self-contained cable run. They should stay local to the cooler and motherboard header area, not run down into the main case cable channels.

### CPU Cooler Installation Verification:
- [ ] Cooler is firmly mounted (no wiggle)
- [ ] Fans are attached and oriented correctly (airflow to rear)
- [ ] Fan cables connected to CPU_FAN/CPU_OPT
- [ ] No thermal paste squeeze-out visible on sides

> 🛑 **STOP — Verify CPU Cooler Installation Before Continuing**
> - [ ] Cooler is firmly mounted with even pressure
> - [ ] Thermal paste was applied before mounting
> - [ ] Both cooler fans are oriented to push air toward rear exhaust
> - [ ] Cooler fans are on CPU_FAN and CPU_OPT (not the hub)
> - [ ] No fan cable can contact fan blades
> 
> If any item above is not true, do not continue yet.

---

## 2.6 Pre-Case Installation Test (Optional but Recommended)

Before installing everything in the case, a quick test ensures components work:

> 💡 **NOTE**: The Ryzen 9 9950X has a basic **integrated GPU** (Radeon 610M, RDNA 2 architecture — 2 CUs, up to 2.2 GHz), suitable for display output during initial setup. You can connect a monitor to the motherboard's rear HDMI 2.1 port for this bench test without installing the discrete GPU. However, if you prefer to test the full system (including the GPU) at this stage, you can temporarily install it now.

### "Bench Test" Procedure:

**Option A — Using the iGPU (simplest for initial POST test):**

1. Connect **24-pin ATX** cable to motherboard
2. Connect **8-pin EPS** (CPU power) cable to motherboard (top-left area)
3. Connect **monitor** to the motherboard's rear **HDMI 2.1** port (uses the 9950X's integrated Radeon 610M)

**Option B — Using the discrete GPU:**

1. **Temporarily install GPU** in the primary PCIe x16 slot (press until retention latch clicks)
2. Connect **24-pin ATX** cable to motherboard
3. Connect **8-pin EPS** (CPU power) cable to motherboard (top-left area)
4. Connect **12V-2x6** GPU power cable
5. Connect **monitor** to GPU

**Then (both options):**

1. Plug **PSU into wall** (switch OFF)
2. Flip PSU switch to ON
3. Bridge the **power switch pins** with a screwdriver to power on
4. System should POST - fans spin, debug LEDs cycle, display shows BIOS splash

**After successful bench test:**
1. Power off and switch PSU off
2. Disconnect all cables
3. Remove GPU (press retention latch, pull straight up)
4. Proceed to case installation

> ⚠️ If system doesn't POST, stop here and troubleshoot before case installation. Check RAM seating first (most common issue). If no Q-LED indicators light and no fans spin, verify EPS and ATX power cables are fully seated. See the [Troubleshooting Common Issues](#-troubleshooting-common-issues) section for detailed guidance.

> 🛑 **STOP — Verify Bench Test Result Before Continuing**
> - [ ] Bench test was completed or intentionally skipped
> - [ ] If completed, system reached POST successfully
> - [ ] PSU was switched off and temporary cables were removed cleanly
> - [ ] Any POST issue was resolved before moving into the case
> 
> If any item above is not true, do not continue yet.

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

### Fan Cable Routing Strategy Before Continuing

Before mounting all fans permanently, plan the cable paths now. This will save significant time later.

#### Recommended routing paths:

- **Front fans (3x 140mm intake):**
  - Route cables through the **nearest front-side cable pass-through**
  - Pull them immediately into the **rear chamber behind the motherboard tray**
  - Bundle them together as a **front intake group**

- **Bottom fans (2x 140mm intake):**
  - Route cables through the **PSU shroud openings** or the nearest lower cutout
  - Keep excess slack in the rear chamber, not in the main compartment
  - Bundle them together as a **bottom intake group**

- **Top fans (2x 140mm exhaust):**
  - Route cables toward the **rear-top cutout**
  - Drop them into the rear chamber along the upper cable path
  - Bundle them together as a **top exhaust group**

- **Rear fan (1x exhaust):**
  - Route directly to the nearest rear cutout or motherboard header area
  - Keep this cable tight to the rear edge of the case

#### Before moving on, verify:

- [ ] No fan cable crosses the center of the motherboard area
- [ ] No fan cable hangs loose in front of future airflow paths
- [ ] Front, bottom, and top fan cables are grouped separately behind the motherboard tray
- [ ] Enough slack remains to reach the fan hub without tension

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
2. Connect hub's **PWM input cable** to a motherboard **CHA_FAN** header (not CPU_FAN — that's reserved for your CPU cooler fans)

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
    │  [PWM IN]──────→ To Motherboard CHA_FAN │
    │  [SATA PWR]────→ To PSU SATA power      │
    └──────────────────────────────────────────┘
    
    FR = Front fans | BT = Bottom | TP = Top | RR = Rear
```

### Fan Hub Routing and Header Assignment Note

For the cleanest layout and simplest BIOS behavior, use this connection strategy:

- **CPU cooler fans** → `CPU_FAN` and `CPU_OPT`
- **Case fan hub PWM control cable** → one motherboard **CHA_FAN** header
- **Fan hub power** → **SATA power** from the PSU

> ⚠️ **Important**: Avoid putting the case fan hub on `CPU_FAN` if your CPU cooler fans are already connected there. Keeping the CPU cooler on dedicated CPU headers makes troubleshooting easier and avoids CPU fan monitoring confusion during boot.

### Rear Chamber Cable Grouping Plan

As you connect fan cables to the hub, organize them into these routing zones behind the motherboard tray:

| Zone | Cables |
|------|--------|
| **Upper zone** | Top fan cables, rear fan cable |
| **Middle zone** | Front fan cables, fan hub PWM lead |
| **Lower zone** | Bottom fan cables, SATA power lead to hub |

Use velcro ties or case tie-down points to keep these bundles flat. Do **not** fully tighten everything yet — leave the bundles adjustable until the full system POSTs successfully.

> 🛑 **STOP — Verify Fan Hub Setup Before Continuing**
> - [ ] Fan hub PWM lead is connected to a CHA_FAN header
> - [ ] Fan hub receives SATA power from the PSU
> - [ ] CPU cooler fans remain on CPU_FAN/CPU_OPT (not on hub)
> - [ ] Fan cable bundles are grouped and clear of blade paths
> 
> If any item above is not true, do not continue yet.

## 3.5 Install RGB Strips (Phanteks NEON Digital RGB — If Purchased)

> 📍 **Why install RGB strips now?** Mounting the strips is significantly easier with an empty case — full access to all mounting surfaces, no motherboard or GPU to work around. The ARGB cable will be connected to the motherboard header later in Phase 4.

### Step-by-Step RGB Strip Installation:

**Step 1: Plan Placement**

Recommended placement for the Meshify 2 XL:
- **Strip 1**: Along the **top front edge** of the case, pointing downward (illuminates components from above)
- **Strip 2**: Along the **front vertical edge** (creates depth) OR along the **top of the PSU shroud** (underlighting effect)

> 💡 **Tip**: Dry-fit the strips (hold them in place without removing adhesive) to preview the lighting effect before committing.

**Step 2: Mount Strips**

1. Clean the mounting surface with isopropyl alcohol
2. For **magnetic case surfaces**: simply attach — the Phanteks NEON strips have magnetic backing
3. For **non-magnetic surfaces**: use the included adhesive backing (peel and stick)
4. Press firmly along the entire length for good adhesion

**Step 3: Route ARGB Cable**

1. Route the strip's ARGB cable toward the **nearest cable pass-through** behind the motherboard tray
2. Leave enough slack to reach the **ADD_GEN2** header on the motherboard (5V ARGB, 3-pin) — you'll connect this in Phase 4 after the motherboard is installed
3. Bundle the ARGB cable with the fan cable group in the same zone

> 📍 **Do NOT connect to motherboard yet** — the motherboard isn't installed. Just stage the cable in the rear chamber for now.

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

### Motherboard Power Routing - Do This Before Small Header Connections

Once the motherboard is mounted, route and connect the large power cables first before the smaller front-panel and USB cables.

#### Recommended order:

1. **24-pin ATX motherboard cable**
   - Route from the PSU area behind the motherboard tray
   - Bring it through the **side grommet nearest the 24-pin motherboard socket**
   - Plug it in now, then gently curve the visible section for a clean look

2. **CPU EPS cables (2x 8-pin)**
   - Route both cables through the **top-left cutout/grommet**
   - Plug these in before the top edge becomes crowded with other cables
   - These are usually the hardest cables to route cleanly, so do them early

3. **SATA power cable for fan hub**
   - Keep this in the rear chamber
   - Route only as far as needed to reach the fan hub
   - Tuck any unused SATA connectors into the rear compartment or PSU shroud area

> 📍 **Routing Tip**: The EPS/CPU power cables are often the most awkward cables in the build. If they are not already staged behind the tray before motherboard installation, route them immediately after the board is mounted and before continuing.

> 🛑 **STOP — Verify Motherboard Main Power Before Continuing**
> - [ ] 24-pin ATX is fully seated with latch engaged
> - [ ] Both 8-pin EPS cables are fully seated at the top-left connectors
> - [ ] Large power cables are routed before small headers crowd access
> - [ ] SATA power is staged for fan hub in the rear chamber
> 
> If any item above is not true, do not continue yet.

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

### Front Panel Cable Routing Order

Connect these cables **before installing the GPU**. Access is easier now, and the final result will be much cleaner.

#### Recommended connection order:

1. **Front panel switch/LED cables**
   - Connect these first using the ASUS **Q-Connector**
   - Route them from the lower case area through the nearest lower cutout
   - Keep them tight to the bottom edge of the motherboard

2. **HD Audio**
   - Route along the bottom-rear edge of the case
   - Bring it to the motherboard's bottom-left audio header
   - Keep it low and out of sight

3. **USB 3.0 (19-pin)**
   - Route through the nearest side grommet to the motherboard header
   - This cable is thick and stiff, so avoid twisting it sharply
   - Use a smooth bend and keep excess slack behind the tray

4. **USB-C front panel header**
   - Route through the nearest grommet with the straightest possible path
   - Avoid over-bending the cable near the connector

5. **ARGB strip cable** (if Phanteks NEON installed in Phase 3.5)
   - Bring the staged ARGB cable from the rear chamber through the nearest grommet
   - Connect to the **ADD_GEN2** header on the X870E Hero (5V ARGB, 3-pin)
   - This is a small 3-pin connector — align the key notch carefully

#### Before moving on, verify:

- [ ] No front-panel cable is crossing the center of the board
- [ ] HD Audio stays along the bottom edge
- [ ] USB 3.0 and USB-C cables are routed through the nearest side openings
- [ ] Extra slack is stored behind the motherboard tray, not in the main chamber

> 🛑 **STOP — Verify Front-Panel and Internal Headers Before Continuing**
> - [ ] Front-panel switch/LED connections are correct
> - [ ] USB 3.0, USB-C, and HD Audio headers are fully seated
> - [ ] ARGB strip cable (if used) is on ADD_GEN2 with correct orientation
> - [ ] Header cables are routed cleanly before GPU installation blocks access
> 
> If any item above is not true, do not continue yet.

---

# 💾 Phase 5: Storage Verification

## 5.1 Samsung 990 Pro 2TB NVMe — Already Installed

> ✅ Your NVMe SSD was installed during Phase 2.4 (motherboard preparation outside the case). No action needed here.

If you skipped the NVMe installation earlier, you can still install it now, though access is tighter with the cooler and motherboard mounted:

1. Remove M.2_1 heatsink screws and lift heatsink
2. **Remove protective film** from thermal pad if present
3. Insert M.2 drive at **30-degree angle**
4. Press SSD flat and secure with M.2 screw
5. Reinstall heatsink

### Additional Storage (Future Expansion)

The X870E Hero has additional M.2 slots available for future NVMe drives. These can be added at any time without removing existing components.

---

# ⚡ Phase 6: Power Supply Installation and Cable Routing

## 6.1 Corsair RM1000x (2024) Preparation

### Modular Cable Selection:

> ⚠️ **CRITICAL**: Modular PSU cables are **NOT interchangeable between brands or even between different models from the same brand**. The pinouts differ. Using cables from an old PSU can short-circuit and destroy components. **Only use the cables that came with your RM1000x (2024).**

| Cable | Required | Quantity |
|-------|----------|----------|
| 24-pin ATX | ✅ | 1 |
| 8-pin EPS (CPU) | ✅ | 2 |
| 12V-2x6 (GPU) | ✅ | 1 |
| SATA | ✅ | 1 (for fan hub) |
| Peripheral/Molex | ❌ | Not needed |

### PSU Cable Pre-Routing Plan

Before installing the PSU into the case, connect only the cables you actually need:

- 1x **24-pin ATX**
- 2x **8-pin EPS/CPU**
- 1x **12V-2x6 GPU cable**
- 1x **SATA power cable** for fan hub

Pre-connecting these cables to the PSU outside the case is easier than attaching them later in the rear chamber.

### Recommended cable staging plan:

| Cable | Stage To | Final Destination |
|------|----------|-------------------|
| **24-pin ATX** | Rear middle channel | Motherboard 24-pin socket |
| **EPS/CPU (2x)** | Rear upper channel | Top-left motherboard power sockets |
| **12V-2x6 GPU** | Rear lower/middle channel | GPU power connector |
| **SATA power** | Rear lower channel | Fan hub |

> 📍 **Routing Tip**: Do not fully cinch these cables down yet. Stage them loosely in their intended areas first, then do final tightening only after all components are installed and the system POSTs successfully.

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

### Cable Routing by Rear Chamber Zone

To keep the back side of the build organized, use three routing lanes behind the motherboard tray:

| Rear Chamber Zone | Recommended Cables |
|------------------|--------------------|
| **Upper lane** | EPS/CPU power, top fan cables, rear fan cable |
| **Middle lane** | 24-pin ATX, front fan cables, fan hub PWM lead, USB 3.0 / USB-C slack |
| **Lower lane** | SATA power, HD Audio, bottom fan cables, staged GPU cable slack |

### Practical routing rules:

- Keep **large power cables** on the outer edge of the bundle where possible
- Keep **small signal cables** separated enough that they can be removed later without undoing everything
- Cross cables only when necessary, and do it in the rear chamber rather than the visible side
- Leave enough slack near connectors to unplug components later without cutting all cable ties

> 🔧 **Best Practice**: Use temporary velcro straps during assembly. Replace or tighten them neatly only after the first successful boot and cable verification.

---

# 🧭 Cable Routing Quick Reference

Use this section as a fast reference during the build. The goal is to route each cable at the easiest possible stage, keep the visible chamber clean, and avoid having to redo work later.

## Recommended Connection Strategy

| Device Group | Motherboard Header / Power Source | Recommendation |
|-------------|-----------------------------------|----------------|
| **CPU cooler fans** | `CPU_FAN` + `CPU_OPT` | Keep CPU cooling on dedicated CPU headers |
| **Case fan hub PWM control** | `CHA_FAN` header | Best for case airflow control and simpler troubleshooting |
| **Fan hub power** | PSU SATA power | Use SATA, not the Molex barrel adapter |
| **Motherboard main power** | 24-pin ATX | Route through nearest side grommet |
| **CPU power** | 2x 8-pin EPS | Route through top-left cutout early |
| **GPU power** | Native 12V-2x6 cable | Route late, after GPU is installed |
| **Front panel** | Q-Connector / front-panel header | Connect before GPU install |
| **HD Audio** | Bottom-left motherboard header | Route low along case edge |
| **USB 3.0 / USB-C** | Internal USB headers | Route through nearest side cutouts |

## Cable-by-Cable Routing Map

| Cable | Route Path | Connect When | Special Notes |
|------|------------|--------------|---------------|
| **24-pin ATX** | PSU area → rear middle channel → nearest side grommet → motherboard socket | Right after motherboard installation | Use a smooth visible curve; store extra slack behind tray |
| **EPS/CPU 8-pin #1/#2** | PSU area → rear upper channel → top-left cutout → motherboard | Immediately after motherboard installation | Route early; these are usually the hardest cables |
| **CPU cooler fan cables** | Along cooler body/top edge → `CPU_FAN` / `CPU_OPT` | During cooler installation | Keep local to cooler area; hide behind heatsink where possible |
| **Front fan cables** | Front mounts → nearest side pass-through → rear middle channel → fan hub | During fan installation | Bundle as one group |
| **Bottom fan cables** | Bottom mounts → PSU shroud/lower cutout → rear lower channel → fan hub | During fan installation | Keep all slack out of main chamber |
| **Top fan cables** | Top mounts → rear-top cutout → rear upper channel → fan hub | During fan installation | Route before upper area gets crowded |
| **Rear fan cable** | Rear mount → nearest rear cutout/header path → fan hub or chassis header | During fan installation | Keep tight to rear edge |
| **Fan hub PWM lead** | Fan hub → nearest cutout → `CHA_FAN` header | Before GPU installation | Avoid using `CPU_FAN` if cooler fans already occupy CPU headers |
| **Fan hub SATA power** | PSU SATA cable → rear lower channel → fan hub | After PSU installation | Tuck unused SATA connectors behind tray or in PSU shroud |
| **Front panel switch/LED** | Lower cutout → bottom edge of motherboard | Before GPU installation | Use Q-Connector first for easier installation |
| **HD Audio** | Rear lower edge → bottom-left motherboard header | Before GPU installation | Keep low and hidden |
| **USB 3.0 (19-pin)** | Rear middle channel → nearest side grommet → motherboard header | Before GPU installation | Thick cable; avoid sharp twisting |
| **USB-C front panel** | Rear middle channel → nearest grommet → motherboard header | Before GPU installation | Avoid over-bending near connector |
| **GPU 12V-2x6** | PSU area → rear lower/middle channel → nearest side grommet to GPU connector | After GPU installation | Fully seat connector first, then form a gentle bend |

## Build Order for Cleanest Cable Routing

Follow this sequence for the least rework:

1. Install CPU, RAM, NVMe, and cooler on the motherboard outside the case (Phase 2)
2. Install case fans and route their cables into the rear chamber (Phase 3)
3. Mount RGB strips if purchased — easier with empty case (Phase 3.5)
4. Mount the fan hub and connect case fan cables (Phase 3.4)
5. Connect PSU cables to the PSU before PSU installation
6. Install PSU and loosely stage 24-pin, EPS, SATA, and GPU power cables (Phase 6)
7. Install motherboard (Phase 4)
8. Connect **24-pin** and **EPS** power cables
9. Connect front panel, HD Audio, USB 3.0, USB-C, ARGB strip cable, and fan hub PWM lead
10. Install GPU (Phase 7)
11. Connect GPU power cable carefully and verify full seating
12. Do final rear-chamber bundling and visible-side cleanup (Phase 8)
13. POST test the system before fully tightening all cable ties

## Cable Routing Final Check

Before closing the case, confirm:

- [ ] EPS cables are fully seated and routed through the top-left area cleanly
- [ ] 24-pin ATX cable has a clean curve with no unnecessary slack visible
- [ ] Front-panel and HD Audio cables are low and hidden
- [ ] USB 3.0 and USB-C cables are not sharply bent
- [ ] Fan cables are grouped by location and not loose in airflow paths
- [ ] Fan hub uses **SATA power**
- [ ] CPU cooler fans are on **CPU_FAN / CPU_OPT**
- [ ] Case fan hub PWM lead is on a **CHA_FAN** header
- [ ] GPU 12V-2x6 cable is fully seated with **no visible gold contacts**
- [ ] No cable is touching any fan blade
- [ ] Rear chamber bundles are flat enough for the side panel to close easily

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

> 💡 **X870E Hero Feature**: This motherboard has a **Q-Release button** near the PCIe x16 slot that makes it easy to release the GPU retention latch without reaching under the card. You won't need it during installation, but it's very handy for future GPU removal or upgrades.

> 🛑 **STOP — Verify GPU Seating Before Continuing**
> - [ ] GPU is fully seated in the primary PCIe x16 slot
> - [ ] PCIe retention latch is closed
> - [ ] GPU bracket screws are installed and snug
> - [ ] Card is level before adding power cable strain
> 
> If any item above is not true, do not continue yet.

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

### GPU Cable Routing Note

Route the native Corsair **12V-2x6** cable from the rear chamber through the **nearest side grommet aligned with the GPU power connector**.

#### Important routing rules:

- Bring the cable into the main chamber as close to the GPU connector as possible
- Insert the connector **fully straight** before shaping the cable
- Do **not** create a sharp bend immediately at the connector
- Use a **gentle curve** back toward the cable-routing area behind the motherboard tray
- Only secure the cable tightly after confirming the connector is fully seated and the side panel closes without pressing hard against the cable

> ⚠️ **Safety Reminder**: The most important part of GPU cable routing is not aesthetics — it is maintaining full connector seating and avoiding side-load or tight bending stress at the plug.

> 🛑 **STOP — Verify GPU Power Connection Before Continuing**
> - [ ] 12V-2x6 connector is fully seated with no visible gold contacts
> - [ ] Connector was inserted straight before cable shaping
> - [ ] No tight bend exists near the connector body
> - [ ] Cable path will not pull or side-load the connector
> 
> If any item above is not true, do not continue yet.

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
- [ ] CPU_FAN / CPU_OPT headers connected (CPU cooler fans)
- [ ] CHA_FAN header connected (fan hub PWM control)
- [ ] Front panel (Q-connector installed)
- [ ] USB 3.0 header
- [ ] USB-C header
- [ ] HD Audio header
- [ ] ADD_GEN2 ARGB header (if RGB strips installed)

### Component Seating:
- [ ] RAM fully clicked into slots A2 and B2
- [ ] GPU retention latch closed
- [ ] M.2 SSD secured with screw
- [ ] CPU cooler firmly mounted

## 8.2 Rear Chamber Final Bundling Strategy

Now that all major components are installed and connected, do the final cable cleanup behind the motherboard tray.

### Tighten cables in this order:

1. **Upper lane**
   - EPS/CPU power cables
   - Top fan cables
   - Rear fan cable

2. **Middle lane**
   - 24-pin ATX
   - Front fan bundle
   - Fan hub PWM lead
   - USB 3.0 / USB-C slack

3. **Lower lane**
   - SATA power to hub
   - Bottom fan bundle
   - HD Audio
   - GPU cable slack

### Final bundling rules:

- Flatten bundles against the tray rather than stacking them outward
- Do not over-tighten small signal cables
- Keep removable components' cables accessible for future maintenance
- If the rear side panel resists closing, redistribute thickness across multiple tie-down points instead of forcing the panel

> 🔧 **Best Practice**: After the first successful POST and BIOS check, reopen the rear panel once more and do a final cosmetic pass on cable tension and alignment.

> 🛑 **STOP — Verify Final Pre-Panel-Closure Checks Before Continuing**
> - [ ] System has successfully POSTed at least once
> - [ ] Rear-chamber cable bundles are flat and panel-safe
> - [ ] No cable is contacting fan blades or sharp edges
> - [ ] No loose screws or tools remain inside the case
> 
> If any item above is not true, do not continue yet.

## 8.3 Install Side Panels and External Connections

1. Verify no cables preventing panel closure
2. Install WiFi antennas on rear I/O
3. Connect monitor to **GPU** (recommended for full performance — your 9950X does have an iGPU, but you'll want display output through the discrete GPU for daily use)
4. Connect peripherals and power cable

---

# 🖥️ Phase 9: First Boot and BIOS Configuration

## 9.0 Pre-Boot: BIOS Flashback (If System Won't POST)

> ⚠️ **IMPORTANT**: The X870E Hero may ship with a BIOS version that doesn't fully support the Ryzen 9 9950X. If the system does not POST (CPU Q-LED stays red, no display output), you likely need a BIOS update via USB Flashback — **no working CPU required** for this process.

### Prepare BIOS Flashback USB (Do This in Advance):

1. On another computer, go to **https://rog.asus.com** → find Crosshair X870E Hero → Support → BIOS & Firmware
2. Download the **latest BIOS** file
3. Extract the ZIP file
4. Rename the BIOS file to the exact name specified in the manual (typically **X870EH.CAP** — check your manual)
5. Copy the renamed file to the **root** of a FAT32-formatted USB 2.0/3.0 flash drive
6. Keep this USB drive ready during your first boot attempt

### Performing BIOS Flashback (Only If POST Fails):

1. Power off the system completely and switch the PSU off
2. Insert the prepared USB drive into the **BIOS Flashback USB port** (labeled on rear I/O — usually a specific USB-A port marked "BIOS")
3. Switch the PSU back ON (do **not** press the power button)
4. Press and hold the **BIOS Flashback button** on the rear I/O for ~3 seconds until the LED starts blinking
5. **Wait** — the LED will blink for 3-8 minutes while flashing. **Do not interrupt power or remove the USB**
6. When the LED stops blinking and turns off, the flash is complete
7. Remove the USB drive
8. Power on the system normally — it should now POST

> 🔥 **GOTCHA**: The BIOS Flashback port is a specific USB port on the rear I/O — it's usually the one closest to the Flashback button and may be labeled. Using the wrong USB port will not work.

> 🛑 **STOP — Verify Pre-Boot Readiness Before Continuing**
> - [ ] 24-pin ATX, EPS, GPU power, and fan hub SATA power are all seated
> - [ ] CPU cooler fans and case fan control leads are connected
> - [ ] RAM, GPU, and NVMe are fully seated and secured
> - [ ] No loose screws, packing film, or cables in any fan blade path
> - [ ] Monitor is connected to GPU and keyboard is connected
> 
> If any item above is not true, do not continue yet.

## 9.1 First Power On

1. Flip PSU switch to ON
2. Press case power button
3. Watch Q-LED indicators:
   - **CPU** - Red: CPU issue (try BIOS Flashback above)
   - **DRAM** - Yellow: Memory issue
   - **VGA** - White: Graphics issue
   - **BOOT** - Green: Boot device issue (normal if no OS installed yet)

## 9.2 BIOS First-Time Setup

### Critical Settings:

**1. Update BIOS** (even if system POSTed, update to latest for best compatibility)
- Download latest from ASUS support onto USB drive
- In BIOS: go to **Tool** → **ASUS EZ Flash 3** → select the BIOS file on USB → update
- System will reboot after update

**2. Enable EXPO for RAM**
- Go to **Ai Tweaker** → **Ai Overclock Tuner** → **EXPO I**
- This enables DDR5-6000 speeds

> 🔥 **EXPO Troubleshooting**: If the system is unstable after enabling EXPO (random crashes, fails to POST, or BIOS resets), try these fallbacks in order:
> 1. Try **EXPO II** profile instead of EXPO I
> 2. Manually set RAM to **DDR5-5600** with EXPO timings
> 3. Run at JEDEC defaults (4800 MHz) and update BIOS, then retry EXPO
>
> DDR5-6000 CL36 is aggressive — it doesn't always work on the first attempt, especially with early BIOS versions.

**3. Verify Component Detection**
- CPU: AMD Ryzen 9 9950X
- Memory: 64GB @ 6000MHz
- Storage: Samsung 990 Pro 2TB

**4. Enable Security Features for Windows 11**
- Go to **Advanced** → **AMD fTPM Configuration** → Set **fTPM** to **Enabled** (usually enabled by default)
- Go to **Boot** → **Secure Boot** → Set **Secure Boot** to **Enabled**
- These are **required** for Windows 11 installation

**5. Set Boot Order**
- First: USB drive (for OS installation — your Ventoy drive will appear as a bootable USB device)
- Second: Samsung 990 Pro

**6. Set Primary Display Output**
- Go to **Advanced** → **NB Configuration** (or **Graphics Configuration**)
- Set **Primary Video Device** or **Initial Display Output** to **PCIe** (not IGFX)
- This ensures the system always uses your RTX 5070 Ti for display output rather than the integrated GPU

**7. Configure Fan Profiles**

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

## 10.1 Boot from Ventoy USB

Your Ventoy multi-boot USB drive contains multiple Windows and Linux ISOs. This makes OS installation straightforward:

1. Insert your **Ventoy USB drive**
2. Boot from USB (press **F8** during POST for boot menu, or set USB first in BIOS boot order)
3. The **Ventoy menu** will appear showing all available ISOs on the drive
4. Select the desired OS ISO (e.g., Windows 11, your preferred Linux distro)

### Installing Windows 11:

1. Select the Windows 11 ISO from the Ventoy menu
2. Proceed through Windows Setup
3. Select **Custom: Install Windows only (advanced)**
4. Select the Samsung 990 Pro drive (should show as ~1.86 TB unallocated space)
5. Let Windows create its partitions automatically (GPT/UEFI is handled automatically when booting in UEFI mode)
6. Complete the setup wizard

> 💡 **Local Account Tip**: If you want a local account instead of a Microsoft account during Windows 11 setup, disconnect from the internet (unplug Ethernet / don't connect WiFi) during the OOBE. Alternatively, use the `OOBE\BYPASSNRO` command at the network screen (press Shift+F10 to open a command prompt, type `OOBE\BYPASSNRO`, then the system reboots with an "I don't have internet" option).

### Installing Linux (Dual-Boot or Standalone):

1. Select your preferred Linux ISO from the Ventoy menu
2. Follow the distro's installer
3. If dual-booting with Windows, **install Windows first**, then Linux — Linux installers handle dual-boot GRUB/bootloader configuration better than doing it the other way around

> 📍 **Partition Note**: If dual-booting, you can either split the Samsung 990 Pro into partitions or add a second NVMe drive later for the second OS (the X870E Hero has additional M.2 slots).

## 10.2 Post-Installation

### Driver Installation Priority:

> 💡 **Note**: Windows Update will automatically install basic functional drivers for most components. The manual installs below are for **optimal/latest** versions with full feature support.

1. **Chipset Drivers** (AMD) - from AMD.com or ASUS support
2. **GPU Drivers** (NVIDIA) - from nvidia.com/drivers or via the **NVIDIA App** (replaces GeForce Experience for driver management and optimization)
3. **Motherboard Drivers** (ASUS) - Armoury Crate or individual drivers from ASUS support page
4. **Samsung NVMe Driver** (Optional) - Samsung Magician for health monitoring and firmware updates

> 📍 **Linux Users**: Most drivers are handled by the kernel. For NVIDIA GPU drivers, use your distro's proprietary driver installer (e.g., `ubuntu-drivers autoinstall` or the RPM Fusion NVIDIA package on Fedora). The open-source `nouveau` driver works for basic display but lacks performance features.

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
- [ ] All protective films removed (GPU, case panels, cooler base)
- [ ] RGB strips mounted and ARGB cable connected (if installed)

## BIOS Configuration:
- [ ] BIOS updated to latest version (via EZ Flash or Flashback if needed)
- [ ] EXPO enabled for RAM (6000MHz)
- [ ] fTPM enabled (required for Windows 11)
- [ ] Secure Boot enabled (required for Windows 11)
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

# 🔧 Ongoing Maintenance

## Regular Maintenance Schedule

| Task | Frequency | Notes |
|------|-----------|-------|
| **Clean dust filters** | Every 1-3 months | Remove front, bottom, and top filters; rinse or vacuum |
| **Inspect interior for dust** | Every 3-6 months | Use compressed air or electric duster (e.g., XPOWER A-2) |
| **Check fan operation** | Every 6 months | Verify all fans spin freely, no bearing noise |
| **Monitor temperatures** | Monthly spot-check | Compare to your initial stress test baselines |
| **Re-paste CPU cooler** | Every 2-3 years | Or sooner if temps rise 5-10°C above original baselines |
| **Update GPU drivers** | As needed | Keep current for new games; skip if system is stable |
| **Update BIOS** | Only when needed | Don't chase every update — only for stability fixes or new features you need |
| **Check storage health** | Every 6 months | Use CrystalDiskInfo or Samsung Magician — watch for reallocated sectors |

## Tips for Long-Term Reliability

- **Record your baseline temps** after stress testing — write them down. This makes it easy to detect gradual cooling degradation.
- **Keep a stable driver backup** — if you find a GPU driver version that works perfectly, note the version number before updating.
- **Dust filters are your first defense** — if you notice temps rising, check filters before assuming paste or fan failure.
- **Don't smoke or have candles near the PC** — particulate buildup from smoke is much worse than normal dust and can coat components in residue that's hard to clean.

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