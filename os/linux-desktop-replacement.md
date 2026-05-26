# Linux as Daily Desktop Replacement

## The Modern Linux Desktop

The GNOME desktop (default on Bazzite/Fedora) is stable, polished, and largely unremarkable. That's the point — boring = good. It gets out of the way and lets you work.

## App Comparison

### Communication

| App | Windows | Linux |
|-----|---------|-------|
| Discord | Discord | Discord (native Linux app, identical) |
| Slack | Slack | Slack (native Linux app, identical) |
| Zoom | Zoom | Zoom (native Linux app, mostly identical) |
| Teams | Teams | Teams (web app, fully functional) |

### Productivity

| Task | Windows | Linux |
|------|---------|-------|
| Office documents | Microsoft Office | LibreOffice (compatible), M365 web, Google Docs |
| Spreadsheets | Excel | LibreOffice Calc, Google Sheets, M365 web |
| PDF editing | Adobe Acrobat | Okular, LibreOffice Draw |
| Notes | OneNote | Obsidian, Joplin, Standard Notes |

### Media

| App | Windows | Linux |
|-----|---------|-------|
| Music | Spotify | Spotify (native Linux Flatpak, identical) |
| Video | VLC, Media Player | VLC (identical), mpv |
| Plex | Plex | Plex (native Linux app or web) |
| Photos | Windows Photos | gThumb, Shotwell, darktable |

### Browsers

Identical — Chrome, Firefox, Brave, Edge all available on Linux.

### File Management

Nautilus (GNOME Files) covers everything. Samba network shares mount transparently.

## The Office Question

- **Browser-based (Google Docs / M365 web):** Zero friction. Works identically.
- **Desktop Office without macros:** LibreOffice handles .docx/.xlsx well for standard documents.
- **Desktop Office with complex macros:** Genuine pain point. VBA macros don't run in LibreOffice. If this is critical, keep a Windows partition or use a Windows VM.

## Real Pain Points

| Pain Point | Reality |
|-----------|---------|
| Printing | Usually fine — CUPS + manufacturer PPD. Occasionally requires effort for obscure printers. |
| Peripheral software | OpenRGB replaces Armoury Crate for RGB control. Most functionality covered. |
| "One weird app" | The thing you didn't think about until you need it. Plan for one per person. |
| HDR | Experimental on Linux. Getting better, not production-ready yet. |
| Gaming anti-cheat | Kernel-level anti-cheat (Valorant, PUBG) blocked. That's what the Windows partition is for. |

## Component-Specific Linux Support

| Component | Support | Notes |
|-----------|---------|-------|
| G.Skill Trident Z5 RGB | ✅ OpenRGB | Full RGB control |
| ASUS RTX 5070 Ti RGB | ✅ OpenRGB | Full RGB control |
| ASUS X870E motherboard RGB | ✅ OpenRGB | Full RGB control |
| Noctua fans | ✅ Native PWM | No software needed — hardware PWM via motherboard |
| WiFi 7 | ✅ Kernel 6.5+ | Works out of box on modern kernels |
| NVIDIA RTX 5070 Ti | ✅ Proprietary driver | Auto-installed on Bazzite/Nobara |

## Software Installation

**Linux (Bazzite):**
- Flatpak (Software Center) — sandboxed, universal, one-click
- DNF (command line) — `sudo dnf install package`
- AppImage — download, mark executable, run

**Windows:**
- Hunt for .exe installer, run it, click through wizard, hope it doesn't install bloatware

The Flatpak model is arguably better than Windows for consumer software.

## System Updates

| Aspect | Windows | Linux (Bazzite) |
|--------|---------|-----------------|
| Update timing | Whenever it wants | When you run it |
| Reboot required | Almost always | Sometimes, atomic image swap |
| Speed | "Configuring updates… 30%" | Usually under 2 minutes |
| Surprise reboots | Yes | No |

## Realistic Adjustment Timeline

| Period | Experience |
|--------|-----------|
| Days 1–3 | Unfamiliar — where is everything? Things are in different places. |
| Week 1 | Finding your way around — muscle memory disrupted, but functional |
| Week 2–3 | Habits forming — shortcuts learned, most things work |
| Month 1 | Feels normal — Linux is the default, Windows feels weird |
| Month 2+ | "Why did Windows need to update for 20 minutes again?" |

## Who Succeeds vs Who Struggles

**Succeeds:**
- Uses browser for most things
- Writes code or scripts
- Patient with the 1-2 apps that require adjustment
- Interested in how things work

**Struggles:**
- Heavily dependent on specific Windows software (AutoCAD, Adobe Creative Suite, complex VBA macros)
- Needs everything to work identically on day one
- Not willing to adjust workflow at all
