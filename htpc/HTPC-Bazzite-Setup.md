# HTPC Bazzite Setup

## Guide Purpose

This guide turns a Lenovo M720q Tiny into a simple, family-friendly HTPC that feels like a Firestick or Xbox, not a desktop Linux project. It is written to keep the setup repeatable, stable, easy to recover, and centered on streaming-first couch use.

### How to use this guide

1. Create two Linux users: your personal admin account and a shared couch-facing account named `family`. Keep the shared account name as `family` because later file paths assume it.
2. Use your personal admin account for setup, sudo/admin work, recovery, firmware tasks, updates, and occasional desktop/admin use.
3. Use `family` for auto-login, Steam Big Picture, streaming launchers, `.desktop` files, and normal day-to-day HTPC use from the couch.
4. For this exact build, use the **Bazzite / Fedora Atomic** command blocks and ignore the **Debian / Ubuntu** reference blocks unless you are intentionally adapting the guide.
5. Run Bazzite-specific commands from the normal KDE terminal on the HTPC itself, not from a distrobox or container shell.
6. Copy commands exactly unless a step explicitly tells you to replace a value such as `MAC`.
7. Reboot any time the guide tells you to reboot. On Bazzite, host-level changes often do not apply until the next boot.
8. Treat Sections 9, 10, and 12 as optional until streaming, Steam Big Picture, and at least one controller work correctly.

## Section 1: Introduction and Goals

This guide converts a Lenovo M720q Tiny with an i5-8400T, 16GB RAM, and 256GB SSD into a Bazzite KDE HTPC for streaming, Steam Big Picture, later emulators, and Xbox controller use.

It is written for a Linux novice who is also a .NET developer: technical enough to follow structured steps, but not interested in constant churn or avoidable Linux maintenance. Because the household already uses Firestick and Xbox, the system should feel familiar, controller-friendly, remote-friendly, and simple for the whole family. Routine use should work from a controller or HTPC-friendly remote, while the KDE desktop stays mostly in the background as an admin tool and occasional web-browsing fallback with a nearby Logitech K400+.

The main goals are simplicity, reproducibility, stability, and clear recovery when something breaks. Day-one success means the box reliably launches the family's heavy-lifter services such as Hulu, HBO Max, Disney+, Apple TV+, Netflix, and YouTube over the initial Wi-Fi setup. It should also leave a clean path for later additions such as Kodi and Jellyfin once the NAS exists, NAS-hosted files and ROMs, and game streaming from the main gaming PC when the network is ready. Wired Ethernet and Cat6a are later upgrades that should improve NAS-backed media and in-home game streaming, not prerequisites for the first working box. Each of those goals matters because this HTPC is meant to work as a dependable living-room device, not just as a successful one-time setup.

### Account model for this build

This HTPC intentionally uses two Linux accounts. Your personal Linux account is the admin account. The shared `family` Linux account is the couch-facing account. That split keeps passwords, updates, recovery, and setup work separate from the everyday TV experience.

When a step says to use the admin account, log into your personal Linux account. Use it for installer choices, sudo/admin tasks, firmware work, rollback, recovery, and occasional desktop troubleshooting. When a step says to use `family`, log into the shared `family` Linux account. Use it for Steam Big Picture, streaming launchers, non-Steam shortcuts, and anything stored under `/home/family`.

## Section 2: Hardware Overview

The Lenovo M720q Tiny is a strong HTPC platform because it is compact, quiet, efficient, and powerful enough for streaming, local media, Steam Big Picture, and retro gaming.

The i5-8400T is sufficient for this role because the target workload is media playback, light gaming, and emulation rather than high-end modern gaming. The Intel UHD 630 iGPU is also a good fit because it works well with VA-API and Quick Sync when properly configured, which helps deliver smooth video playback with low overhead.

Sixteen gigabytes of RAM is more than enough for streaming apps, Steam, browsers, Kodi, Jellyfin, and emulators. The SSD matters because fast storage improves boot time, responsiveness, and overall appliance-like behavior. Low power use and quiet operation also matter in a family room, where the best HTPC is one that blends in and works reliably.

## Section 3: Ventoy + Bazzite KDE Installation

Ventoy is a good fit for this build because it keeps USB setup simple and reusable. Instead of re-flashing a drive every time you want a different installer, you install Ventoy once and then copy ISO files onto the USB like normal files. That matters here because this project is meant to be repeatable across multiple identical Lenovo M720q Tiny systems.

Bazzite KDE is the target OS because it is gaming-focused, Steam-friendly, Flatpak-friendly, and closer in spirit to a console-like Linux experience than a general-purpose desktop distro. KDE is the preferred edition because it is flexible, works well on TV-oriented setups, and gives you more control over session behavior, autologin, and launcher integration.

For this build, do not treat `family` as the only Linux user. Your personal Linux account should be the admin/sudo account, and `family` should be the shared couch-facing account. `family` should be the auto-login session because it owns the Steam, launcher, and desktop files that make the HTPC feel like a simple living-room appliance.

### Create the Ventoy USB

1. Download the current Ventoy release on another PC.
2. Insert a USB flash drive large enough to hold Ventoy and the Bazzite ISO.
3. Install Ventoy onto the USB drive using the official Ventoy installer for Windows or Linux.
4. After Ventoy is installed, open the USB drive in your file manager.
5. Copy the Bazzite KDE ISO onto the Ventoy USB.
6. Safely eject the USB drive.

At this point, the USB is ready. Ventoy will present the ISO as a bootable choice when the Lenovo starts.

### Boot the Lenovo M720q Tiny from Ventoy

1. Insert the Ventoy USB into the Lenovo M720q Tiny.
2. Power on the system.
3. Press the boot menu key for the Lenovo, usually `F12`.
4. Select the Ventoy USB device.
5. In the Ventoy menu, select the Bazzite KDE ISO.

If the system does not boot from USB, check BIOS boot order and confirm USB boot is enabled.

### Test the Live Session First

Before installing, use the live session to confirm the hardware behaves normally.

For the first version of this guide, assume the HTPC is connected directly to the TV over HDMI, not routed through an AVR first. That keeps the day-one setup path simpler and removes one more variable while you are still proving the base box.

Also assume Wi-Fi on day one. The first version of this box should prove the streaming experience before the house wiring project is done.

Check the following:

- the display comes up correctly on the TV
- audio works through the direct TV connection
- the system feels responsive
- networking works
- the mouse and keyboard work
- the live environment does not show obvious graphics errors

This quick check matters because it confirms that the Lenovo, display, and Bazzite image are fundamentally compatible before you commit to installation.

### Install Bazzite KDE

1. Launch the installer from the live session.
2. Choose the target SSD.
3. Proceed with the default install flow unless you have a strong reason to customize partitioning.
4. When prompted for the main Linux user account, create your personal admin account. Do not use `family` for this first account.
5. Make sure that personal account has the normal admin or sudo rights for the machine.
6. Set passwords you can recover later if needed.
7. Complete the installation and reboot when prompted.
8. Remove the USB drive when the system restarts.
9. After first boot, sign in with your personal admin account.
10. Open KDE user management, usually **System Settings -> Users**, and create a second Linux account named `family`.
11. Give `family` its password, leave it as the shared couch-facing account, and sign into it once so `/home/family` is created.

For this project, the goal is not custom partition design. The goal is a clean, reproducible install that is easy to repeat on the next identical machine.

### Enable Auto-Login

While logged into your personal admin account, enable auto-login for `family` in KDE settings.

Use KDE System Settings to:

1. open the login or session settings
2. enable automatic login
3. set the `family` user as the auto-login account
4. apply the change
5. reboot once to confirm it works, and let the machine land in `family`

A successful result means the machine boots straight into the `family` desktop session without stopping for credentials.

### First Boot Checks

Before moving on, confirm:

- the system boots normally
- the `family` account logs in automatically
- your personal admin account still signs in normally when you need it
- Wi-Fi works for the initial deployment
- audio output appears correctly on the TV
- the desktop is stable enough to continue

Once those checks pass, the base installation is ready.

## Section 4: Post-Install Setup

After installation, the first goal is to establish a clean, repeatable baseline. On Bazzite, Flatpak matters because many user-facing applications are delivered that way, including media and gaming tools. Flatpak also helps novice users because applications are more isolated from the base OS, which reduces the chance that one app install will destabilize the whole system.

Bazzite's ostree-style model matters because the base operating system is more controlled than on a traditional mutable Linux install. That is useful for stability, but it also means updates and system-level changes should be done deliberately. The safest pattern is to keep the base system lean, prefer Flatpak for apps, and use host package layering only when a system-level tool is truly needed.

From this point forward, use a simple rule unless a section tells you otherwise: log into your personal admin account for OS updates, sudo/admin commands, firmware work, rollback, recovery, and troubleshooting. Log into `family` for Steam, streaming launchers, `.desktop` files, autostart entries, and normal couch-facing configuration. When this guide uses `~` for those couch-facing files, assume you are logged into `family`, so `~` means `/home/family`.

If you are following this exact Lenovo M720q + Bazzite KDE guide, use the Bazzite steps below and ignore the Debian/Ubuntu reference block.

### Bazzite update and baseline

```bash
ujust update
```

This is the simplest Bazzite-native update command for this build. It updates the OS, Flatpaks, and other managed components in one pass.

```bash
systemctl reboot
```

Reboot after the update so the new deployment is actually active before you continue.

```bash
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

This ensures Flathub is configured for the Flatpak apps used throughout the rest of the guide.

On Bazzite, do not layer general-purpose packages on day one just because you can. Layered packages are a last resort because they require a reboot and can create update friction later.

### Debian/Ubuntu commands

These are included for reference if you ever adapt parts of this guide to another Linux system.

```bash
sudo apt update && sudo apt upgrade -y
```

This updates package metadata and installs available upgrades.

```bash
sudo apt install -y git curl wget vim flatpak
```

This installs the same baseline tools on Debian or Ubuntu systems.

```bash
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

This adds Flathub on Debian or Ubuntu just as it does on Bazzite.

### Update guidance

For this HTPC, careful updates matter more than constant updates. A living-room system should favor stability over experimentation. Update intentionally, confirm nothing important broke, and avoid piling on unrelated changes at the same time.

A good habit is:

1. run `ujust update`
2. reboot
3. verify Steam, streaming, and controller behavior still work
4. only then continue with additional changes

## Section 5: VA-API Hardware Acceleration

VA-API matters because this HTPC will spend a large part of its life decoding video. Hardware acceleration lowers CPU usage, improves playback smoothness, and helps the system stay cool and quiet. On Intel hardware, Quick Sync is a major part of that story. If Quick Sync and VA-API are working properly, the Lenovo's UHD 630 iGPU can handle streaming and media playback much more efficiently than software decoding alone.

The Intel UHD 630 needs the right media drivers to expose the available decode paths correctly. On this class of Intel hardware, `vainfo` is the most useful truth source because it shows what VA-API actually sees, not what you hope is configured. Kernel logs also matter because they can reveal iGPU driver errors or initialization problems that explain broken media acceleration.

Driver choice can matter too. On some Intel systems, behavior differs between the older `i965` driver path and the newer `iHD` path. That is why this section is about verification, not assumptions.

### Bazzite first-pass check

If you are following this exact build on Bazzite, do the verification step first before layering anything.

```bash
vainfo
```

If `vainfo` runs and shows Intel decode capabilities, keep moving. Do not layer extra media packages just because they exist. The simplest stable HTPC is the one with the fewest unnecessary host changes.

### Bazzite fallback package layering

```bash
sudo rpm-ostree install libva-utils intel-media-driver i965-va-driver ffmpeg
systemctl reboot
```

Only use that layering step if `vainfo` is missing or clearly broken. After the reboot, run `vainfo` again before you assume browser playback is ready.

### Debian/Ubuntu commands

```bash
sudo apt install -y vainfo libva2 libva-utils i965-va-driver-shaders intel-media-va-driver-non-free ffmpeg
```

This installs the equivalent validation and driver packages on Debian or Ubuntu systems.

### Verify VA-API

```bash
vainfo
```

This command is the main validation step. A good result is one that lists Intel-backed VA-API support and shows decode capabilities instead of failing with missing driver or display initialization errors.

What you want to see is evidence that:

- Intel VA-API is detected
- the driver loads successfully
- decode profiles are listed

What you do not want to see is:

- missing driver errors
- permission failures
- empty or broken capability output

### Check kernel logs

```bash
dmesg | grep -i i915
```

Use this to inspect Intel graphics driver messages. This helps confirm the iGPU initialized correctly and can reveal firmware or display-driver issues.

```bash
dmesg | grep -i va
```

Use this to look for VA-related log hints, especially if `vainfo` output looks suspicious.

### What good looks like

A healthy result for this HTPC is:

- the Intel iGPU loads without major errors
- `vainfo` reports Intel VA-API capabilities
- video playback is smooth
- CPU usage stays reasonable during streaming

If playback is choppy or `vainfo` is broken, do not assume the browser or app is the problem first. Confirm the media stack before moving on.

## Section 6: Steam Setup

Even if the most common first action is launching a streaming app, Steam Big Picture is still the best controller-first shell for this build because it can surface streaming shortcuts, games, emulators, and later media apps in one familiar place. That makes it easier for the household to navigate from the couch and keeps the desktop hidden unless it is actually needed.

Flatpak Steam is the preferred install path because it fits the overall model of keeping apps isolated and easier to manage. On Bazzite, do not stop here to install Feral GameMode first. Bazzite already applies its own gaming-oriented tuning, and this guide does not depend on `gamemoderun` or `gamemoded` for the first working box. The day-one job is getting Steam, autostart, and controller navigation working reliably.

Before you start this section, sign into the Linux `family` account. Steam's day-to-day data, autostart file, and later non-Steam shortcuts should all live in the same shared couch-facing profile that auto-logs in.

### Install Steam

```bash
flatpak install -y flathub com.valvesoftware.Steam
```

This installs Steam from Flathub. For this build, Steam is both a gaming platform and a front-end shell for couch navigation.

### Optional GameMode reference for non-Bazzite systems

If you later adapt parts of this guide to a mutable Linux distro and specifically want Feral GameMode, these are the reference commands.

```bash
sudo dnf install -y gamemode
systemctl --user enable --now gamemoded
```

This installs GameMode and enables the per-user daemon immediately on mutable Fedora systems.

### Debian/Ubuntu GameMode reference

```bash
sudo apt install -y gamemode
systemctl --user enable --now gamemoded
```

This does the same thing for Debian or Ubuntu systems.

### Why `gamemoderun` matters

`gamemoderun` is useful on distros that use Feral GameMode because it launches a supported app with temporary gaming-oriented tweaks. On this Bazzite HTPC, you can ignore it unless you intentionally choose to adapt the guide elsewhere later.

### Configure Steam Big Picture autostart

Create the following autostart file so Steam Big Picture starts automatically at login.

File path: `~/.config/autostart/steam-bigpicture.desktop`

```ini
[Desktop Entry]
Type=Application
Exec=flatpak run com.valvesoftware.Steam -tenfoot
Hidden=false
X-GNOME-Autostart-enabled=true
Name=Steam Big Picture
Comment=Start Steam in Big Picture mode for couch use
```

This autostarts Steam directly into Big Picture mode at login. That is a major part of the console-like experience.

### First launch checks

After installing Steam:

1. open Steam once manually from the `family` desktop session
2. let it complete first-run setup and updates
3. sign in long enough to finish setup; Section 7 decides which Steam account stays on the HTPC every day
4. confirm Big Picture launches correctly
5. reboot once to verify autostart behavior

Controller navigation matters because if the family has to reach for a mouse and keyboard every time Steam opens, the system has already missed part of its goal. Once the streaming launchers from Section 8 are added to Steam, Big Picture becomes the place where the family can open the apps they actually use most without dropping to the desktop.

## Section 7: Family Steam Account Setup

A dedicated family Steam account is safer than leaving the main purchasing account permanently logged into a shared living-room machine. That matters because a family box should be easy to use but hard to misuse. If the shared account has fewer privileges, fewer purchases attached, and a limited view of the library, small mistakes stay small.

Do this section while still logged into the Linux `family` account. The main purchasing Steam account should appear on this HTPC one time only for library-sharing authorization. The dedicated family Steam account should be the everyday Steam login that remains signed in on the auto-logged-in `family` Linux session.

Family Library Sharing protects the main account because it lets the HTPC borrow access without turning the family room into the control center for the primary Steam wallet. Family View matters because it puts a PIN between casual controller use and accidental purchases, store browsing, or account settings changes. Autologin matters because the HTPC should boot into the family experience, not into an account selection ritual.

1. Create a dedicated Steam account for the HTPC if you do not already have one. Use an address that the household controls, verify it, and do not add payment details unless you intentionally want purchasing available from the couch.
2. Log into Steam on the HTPC, still inside the Linux `family` session, with the main purchasing account one time only so the machine can be authorized for library sharing.
3. In Steam settings, open the Family or library-sharing area. Steam has renamed this flow over time, so use the current equivalent if the wording has shifted. The important job is still the same: authorize this computer and allow the `family` account to use the library you want exposed on the HTPC.
4. Sign out of the main purchasing account and sign into the dedicated family Steam account that should stay on the HTPC every day.
5. Confirm the shared library appears correctly. If the box is going to be used by children or guests, remove anything you do not want visible from the shared selection before you call the setup done.
6. Enable Family View from Steam settings. Hide the Store, Community, and other areas that do not belong in a simple couch UI, then set a PIN that the adults in the house can remember.
7. Turn on the normal Steam account persistence options so the dedicated family Steam account stays signed in on this machine. The goal is a controller-first boot path, not repeated credential entry.
8. Reboot the box and make sure Steam returns directly to that same dedicated family Steam account without asking for manual sign-in. If it does not, fix that before moving on. A living-room account flow that breaks on every reboot is not finished.

## Section 8: Streaming Apps

Widevine DRM matters because major streaming services use it to decide whether protected playback is allowed. If Widevine is missing or confused, services may refuse playback, drop quality, or behave unpredictably. That is why this section standardizes on a known browser path instead of treating every service differently.

Browser kiosk mode is chosen because it strips away tabs, menus, and desktop clutter. Plasma Bigscreen-style tiles matter because they mimic the mental model the family already has from Firestick devices: choose a tile, enter the app, back out when done. Each streaming app needs its own launcher because that is how you get predictable one-click or one-button entry points instead of a general-purpose browser session that slowly becomes a mess.

Flatpak browsers are chosen because they are easy to reinstall and easier to keep consistent across multiple boxes. `.desktop` files matter because they give KDE menu entries, they are easy to pin, and they can also be added into Steam so streaming services appear inside Big Picture like console tiles.

This is the day-one heart of the box. The must-test services are Hulu, HBO Max, Disney+, Apple TV+, Netflix, and YouTube. If those six work well, the HTPC already covers the family's main streaming use.

For the first version of this box, validate those services over Wi-Fi. Wired Ethernet can come later with the broader Cat6a plan and should be treated as an upgrade path for heavier future use such as NAS media and main-PC game streaming.

Install the browser used by the launchers:

```bash
flatpak install -y flathub org.chromium.Chromium
```

Stay logged into the Linux `family` account for this entire section. These scripts, `.desktop` files, and Steam shortcuts belong to the shared couch-facing home directory.

Create the launcher directories before you start:

```bash
mkdir -p ~/bin ~/.local/share/applications ~/.config/autostart
```

This guide assumes the shared couch-facing Linux username is `family`, so the `.desktop` files below intentionally use `/home/family/bin/...` as their executable path. Because you should be logged into `family` here, the `~` paths in this section also mean `/home/family`.

Do not add a generic browser tile on day one. Keep ordinary web browsing as a desktop fallback with the K400+ so the main launcher surface stays focused and simple.

### Netflix launcher

File path: `~/bin/launch-netflix.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://www.netflix.com/browse
```

File path: `~/.local/share/applications/netflix.desktop`

```ini
[Desktop Entry]
Type=Application
Name=Netflix
Exec=/home/family/bin/launch-netflix.sh
Icon=applications-multimedia
Terminal=false
Categories=AudioVideo;Video;
```

### HBO Max launcher

File path: `~/bin/launch-hbo-max.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://play.max.com/
```

File path: `~/.local/share/applications/hbo-max.desktop`

```ini
[Desktop Entry]
Type=Application
Name=HBO Max
Exec=/home/family/bin/launch-hbo-max.sh
Icon=applications-multimedia
Terminal=false
Categories=AudioVideo;Video;
```

### Hulu launcher

File path: `~/bin/launch-hulu.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://www.hulu.com/
```

File path: `~/.local/share/applications/hulu.desktop`

```ini
[Desktop Entry]
Type=Application
Name=Hulu
Exec=/home/family/bin/launch-hulu.sh
Icon=applications-multimedia
Terminal=false
Categories=AudioVideo;Video;
```

### YouTube launcher

File path: `~/bin/launch-youtube.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://www.youtube.com/tv
```

File path: `~/.local/share/applications/youtube.desktop`

```ini
[Desktop Entry]
Type=Application
Name=YouTube
Exec=/home/family/bin/launch-youtube.sh
Icon=applications-multimedia
Terminal=false
Categories=AudioVideo;Video;
```

### Prime Video launcher

File path: `~/bin/launch-prime-video.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://www.amazon.com/gp/video/storefront
```

File path: `~/.local/share/applications/prime-video.desktop`

```ini
[Desktop Entry]
Type=Application
Name=Prime Video
Exec=/home/family/bin/launch-prime-video.sh
Icon=applications-multimedia
Terminal=false
Categories=AudioVideo;Video;
```

### Apple TV+ launcher

File path: `~/bin/launch-apple-tv-plus.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://tv.apple.com/
```

File path: `~/.local/share/applications/apple-tv-plus.desktop`

```ini
[Desktop Entry]
Type=Application
Name=Apple TV+
Exec=/home/family/bin/launch-apple-tv-plus.sh
Icon=applications-multimedia
Terminal=false
Categories=AudioVideo;Video;
```

### Paramount+ launcher

File path: `~/bin/launch-paramount-plus.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://www.paramountplus.com/
```

File path: `~/.local/share/applications/paramount-plus.desktop`

```ini
[Desktop Entry]
Type=Application
Name=Paramount+
Exec=/home/family/bin/launch-paramount-plus.sh
Icon=applications-multimedia
Terminal=false
Categories=AudioVideo;Video;
```

### Peacock launcher

File path: `~/bin/launch-peacock.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://www.peacocktv.com/
```

File path: `~/.local/share/applications/peacock.desktop`

```ini
[Desktop Entry]
Type=Application
Name=Peacock
Exec=/home/family/bin/launch-peacock.sh
Icon=applications-multimedia
Terminal=false
Categories=AudioVideo;Video;
```

### Disney+ launcher

File path: `~/bin/launch-disney-plus.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://www.disneyplus.com/
```

File path: `~/.local/share/applications/disney-plus.desktop`

```ini
[Desktop Entry]
Type=Application
Name=Disney+
Exec=/home/family/bin/launch-disney-plus.sh
Icon=applications-multimedia
Terminal=false
Categories=AudioVideo;Video;
```

### YouTube TV launcher

File path: `~/bin/launch-youtube-tv.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://tv.youtube.com/
```

File path: `~/.local/share/applications/youtube-tv.desktop`

```ini
[Desktop Entry]
Type=Application
Name=YouTube TV
Exec=/home/family/bin/launch-youtube-tv.sh
Icon=applications-multimedia
Terminal=false
Categories=AudioVideo;Video;
```

After the launcher files exist, make the shell scripts executable:

```bash
chmod +x ~/bin/*.sh
```

### Add the streaming launchers to Steam

1. Open Steam once from the KDE desktop.
2. Choose **Games > Add a Non-Steam Game to My Library**.
3. Add Netflix, HBO Max, Hulu, Disney+, Apple TV+, and YouTube first. Add the optional services later only if your household actually uses them.
4. Return to Big Picture mode.
5. Open the Non-Steam library and launch each new tile once from inside Steam.
6. Mark the services your household uses most often as favorites so they are easiest to reach from the couch.

At that point, each streaming service can be launched directly from KDE as its own tile, and each one can also be launched from Steam Big Picture so the most common family action—opening a streaming app—happens from a controller-first shell instead of the desktop.

Start validation with Hulu, HBO Max, Disney+, Apple TV+, Netflix, and YouTube. Confirm each one launches, signs in, plays video, and exits cleanly before treating the box as family-ready. If a launcher works from KDE but not from Steam, fix the launcher path before you keep moving.

## Section 9: Kodi + Jellyfin

Kodi and Jellyfin are not day-one requirements for this box. They are the clean later path for local and server-backed media once the NAS or media-server side of the house is ready. Kodi is the local media app because it is still one of the best couch-friendly front ends for files you own and control. Jellyfin is the server media app because it gives you a clean path to a centralized home media server without tying the household to a paid ecosystem.

If your NAS or media server is not ready yet, skip this section on day one and come back later. Once it is ready, both apps should be integrated into Steam because the fewer front ends the family has to understand, the better. If Steam Big Picture is already the main shell, adding Kodi and Jellyfin into that same shell keeps the living-room experience coherent.

```bash
flatpak install -y flathub tv.kodi.Kodi
flatpak install -y flathub org.jellyfin.jellyfin-media-player
```

After installation, launch each app once from KDE with a keyboard and mouse so it can complete first-run setup cleanly.

For Kodi, do the minimum stable setup first: set the display mode correctly for the TV, point it at your local or network media sources, choose the default skin unless you have a strong reason to change it, and confirm controller navigation works before you start decorating it. For Jellyfin Media Player, enter the server URL, sign in with the correct household user, confirm direct playback works, and then stop changing things once it feels solid. Later, when the NAS exists, this is the natural place for shared videos, pictures, and other household media to surface.

To add Kodi and Jellyfin to Steam, open Steam in desktop mode, choose **Add a Non-Steam Game**, scan the available applications, and select the matching launcher entries. Then return to Big Picture and confirm both apps launch from the couch without needing desktop interaction. The point is not to prove that Linux can do everything. The point is to reduce how often anyone has to think about Linux at all.

## Section 10: Emulators

Emulation is secondary in this guide on purpose. Streaming, media playback, and a stable family-room shell come first. Retro gaming is valuable, but it should not be allowed to complicate the core HTPC experience.

RetroArch is chosen because it covers many older systems in one package with one controller-first UI. Dolphin is chosen because GameCube and Wii emulation are common, mature, and worth having if the box is already connected to a TV. Yuzu and Ryujinx are optional because Switch emulation adds complexity, legal care, and more troubleshooting overhead than a novice HTPC build should start with.

Vulkan matters because it is the graphics backend most likely to behave well on modern Linux gaming stacks. Shader cache matters because first-run stutter is normal if shaders are still being built, and repeatedly clearing caches only makes the experience worse. Resolution scaling matters because the M720q's UHD 630 is perfectly fine for classic systems, but GameCube and Wii emulation still benefit from realistic expectations. Integration under Steam keeps the UI simple because the family sees a small number of polished launch points instead of a pile of desktop applications.

```bash
flatpak install -y flathub org.libretro.RetroArch
flatpak install -y flathub org.DolphinEmu.dolphin-emu
```

For RetroArch, start with only the cores you actually intend to use and keep the menu simple. For Dolphin, use the Vulkan backend first, start with conservative internal resolution scaling such as 1x or 2x, and let shader caches build naturally over time. If a game stutters on first launch and improves later, that is normal shader behavior, not always a broken emulator.

To integrate emulators into Steam, add RetroArch and Dolphin as Non-Steam Games the same way you added Kodi and Jellyfin. If you want per-system entries later, build them after the base setup is already stable instead of front-loading complexity.

If you decide to use Yuzu or Ryujinx, AppImages are a practical choice because they keep optional emulator experiments outside the immutable OS base. Store the AppImages in a predictable directory such as `~/Applications`, keep your legally obtained keys, firmware, and game dumps separate and documented, then add the AppImage itself to Steam as a Non-Steam Game. That approach keeps the optional emulator layer clearly separated from the stable HTPC core.

For ROM storage, start simple if that keeps the first build easier. Once the network and NAS plan are stable, you can move ROM libraries to shared storage without changing the overall controller-first launcher model.

## Section 11: Xbox Controller Setup

The [Xbox Wireless Adapter for Windows](https://www.microsoft.com/en-us/d/xbox-wireless-adapter-for-windows/91dqrb97l130) is recommended because it usually delivers the least surprising controller experience on a living-room Linux box. It is often more stable than Bluetooth, handles multiple controllers more gracefully, and feels closer to the way the family already expects Xbox hardware to behave.

For this exact Bazzite build, do not start by cloning or compiling third-party controller drivers. Bazzite already includes the normal Xbox driver support, so the thought-free path is to get one controller working through the official adapter first. Use Bluetooth only if you do not have the adapter or you deliberately want a no-dongle fallback.

### Primary path: official Xbox Wireless Adapter

1. Plug the adapter into the HTPC. A rear USB port is usually the cleanest long-term choice.
2. Reboot the HTPC once after the adapter is inserted.
3. Press the pairing button on the adapter.
4. Put the controller into pairing mode.
5. Wait for the controller to connect.
6. Open Steam Big Picture and confirm the D-pad, face buttons, triggers, and Xbox button all behave normally.

If the controller stays connected after a reboot, stop here. This is the preferred day-one result.

### If the adapter does not pair cleanly

Start with the simplest host-side checks:

```bash
lsusb
sudo modprobe xone
```

`lsusb` confirms the adapter is visible to Linux. `modprobe xone` manually loads the Xbox Wireless Adapter driver if it did not load on its own.

If Secure Boot is enabled and the adapter still refuses to work, enroll the Bazzite akmods key, reboot, and finish the MOK enrollment screen:

```bash
sudo mokutil --import /etc/pki/akmods/certs/akmods-ublue.der
```

After reboot, test the adapter again before changing anything else.

### Bluetooth fallback path

If you do not have the official adapter, use Bluetooth. On Bazzite, do not manually install `xpadneo` first. The relevant Bluetooth support is already included, so go straight to pairing.

For Bluetooth pairing, start `bluetoothctl` and then run the following commands in order inside the interactive prompt:

```bash
bluetoothctl
power on
agent on
default-agent
scan on
pair MAC
trust MAC
connect MAC
```

Replace `MAC` with the controller's Bluetooth address once it appears during scanning. Pair one controller at a time, verify it reconnects after a reboot, and then add the next controller. If you later switch from Bluetooth to the official Xbox Wireless Adapter, remove the old Bluetooth pairing first so the HTPC is not trying to remember the same controller in two different ways. If pairing still fails after that, update the controller firmware once from a Windows PC or Xbox console before assuming the HTPC is at fault.

## Section 12: Advanced Features

These are phase-two features. None of them should block day-one success for streaming, controller use, and basic Steam behavior.

HDMI-CEC matters because it can make the box feel more like a media appliance and less like a detached PC. If the TV and the adapter path cooperate, one device can help wake or sleep the other. Auto-wake matters because the best HTPC is the one that is ready when the family wants it. Auto-shutdown matters because a living-room box should not sit fully awake forever if nobody is using it. Cloud gaming tiles matter because they extend the Xbox-style launcher idea beyond local Steam libraries. Jellyfin and Plex advanced integration matters because some households want one media entry point regardless of where the content lives. Kiosk mode matters because it removes the visual clutter that reminds people they are "just in a browser."

For day one, keep the HDMI path simple: HTPC directly to TV. If you add an AVR or soundbar later, treat that as a second-phase change and re-test audio output, wake behavior, and any CEC features after it is in the chain.

### Power model guidance

For the first version of this HTPC, treat suspend as the preferred target rather than a promise. If Bazzite on this M720q wakes cleanly, reconnects controllers reliably, and returns to the TV without black-screen or lock-screen weirdness, suspend gives the most appliance-like experience. If wake behavior is flaky, fall back to full shutdown until the platform proves stable enough. Always-on is the least attractive day-one choice because it wastes power and hides whether wake and resume actually work well.

For HDMI-CEC, first confirm whether your TV, AVR, and the HTPC path actually support the behavior you want. Linux HTPC setups often need a compatible adapter such as a USB CEC device if the direct PC-to-TV chain does not expose control cleanly. If your setup exposes `cec-client`, the following simple wrapper scripts are useful:

File path: `~/bin/tv-on-cec.sh`

```bash
#!/bin/bash
echo "on 0" | cec-client -s -d 1
```

File path: `~/bin/tv-off-cec.sh`

```bash
#!/bin/bash
echo "standby 0" | cec-client -s -d 1
```

For auto-wake, start with BIOS settings on the M720q instead of trying to solve it in software first. Check the firmware for options such as power on after AC restore, wake from USB, and scheduled power-on. The correct answer in a family room is usually the simplest reliable one, and BIOS-level wake behavior is simpler than elaborate Linux-side wake logic. Remote-friendly wake is a great end state, but it should be treated as a convenience feature after the core box is already stable.

For auto-shutdown, KDE Power Management is the novice-friendly place to start. Set a sensible idle timeout and test suspend deliberately before assuming it is permanent. If suspend starts causing black screens, strange lock behavior, or controller reconnect failures, switch back to full shutdown until the platform is trustworthy again. If you want a simple suspend tile, use this wrapper:

File path: `~/bin/suspend-htpc.sh`

```bash
#!/bin/bash
systemctl suspend
```

Cloud gaming tiles fit naturally beside streaming tiles because they are launched the same way: one service, one launcher, no browser tab management.

### Xbox Cloud Gaming launcher

File path: `~/bin/launch-xbox-cloud.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://www.xbox.com/play
```

File path: `~/.local/share/applications/xbox-cloud.desktop`

```ini
[Desktop Entry]
Type=Application
Name=Xbox Cloud Gaming
Exec=/home/family/bin/launch-xbox-cloud.sh
Icon=applications-games
Terminal=false
Categories=Game;Network;
```

### GeForce NOW launcher

File path: `~/bin/launch-geforcenow.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://play.geforcenow.com/
```

File path: `~/.local/share/applications/geforcenow.desktop`

```ini
[Desktop Entry]
Type=Application
Name=GeForce NOW
Exec=/home/family/bin/launch-geforcenow.sh
Icon=applications-games
Terminal=false
Categories=Game;Network;
```

### Amazon Luna launcher

File path: `~/bin/launch-luna.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://luna.amazon.com/
```

File path: `~/.local/share/applications/luna.desktop`

```ini
[Desktop Entry]
Type=Application
Name=Amazon Luna
Exec=/home/family/bin/launch-luna.sh
Icon=applications-games
Terminal=false
Categories=Game;Network;
```

### Game streaming from your main gaming PC

Another later add-on is streaming games from the main gaming PC to this HTPC. Do this only after the wired gigabit network is ready, because this feature rises or falls on network quality.

The clean later path is:

1. set up Sunshine or another host on the main gaming PC
2. install a client such as Moonlight on the HTPC
3. pair the two systems once with keyboard and mouse nearby
4. add the client to Steam if you want controller-first launch from Big Picture
5. test controller passthrough, audio, and wake behavior before treating it as family-ready

This feature is optional, but it can turn the HTPC into a living-room endpoint for the more powerful gaming PC instead of forcing the M720q to do all the rendering locally.

For Jellyfin and Plex advanced integration, keep the native Jellyfin Media Player for the cleanest server-backed playback path, but add a browser-based Plex tile if your household also uses Plex and wants the same couch-style launcher flow. Later, when the NAS or media server exists, this is where shared videos, pictures, and other household media fit naturally.

### Plex launcher

File path: `~/bin/launch-plex.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://app.plex.tv/desktop
```

File path: `~/.local/share/applications/plex.desktop`

```ini
[Desktop Entry]
Type=Application
Name=Plex
Exec=/home/family/bin/launch-plex.sh
Icon=applications-multimedia
Terminal=false
Categories=AudioVideo;Video;
```

Kiosk mode is already baked into the browser launchers through the `--kiosk` flag. That is important because it keeps the HTPC from feeling like a general-purpose browser session. If you later want one unified media shell, add only the launchers the family truly uses and resist the urge to dump every possible app on the home screen. Simplicity is an advanced feature.

If you eventually want a Home Assistant view from the couch, treat it as another later browser-based launcher pointed at the hosted instance. Do not add it until the core streaming, controller, and power flows are already stable.

## Section 13: Multi-PC Cloning

Cloning matters because identical Lenovo M720q units are one of the biggest advantages of this project. Once one system is correct, you should not have to manually rebuild every detail from scratch on the next unit. Clonezilla is chosen because it is reliable, common, and good at whole-disk imaging for identical hardware. Ostree-style replication is also an option because Bazzite's immutable base means a lot of your real customization lives in user configuration and Flatpak state instead of a deeply hand-crafted host.

The safest cloning strategy is to create one "golden" box first, but stop before you fill it with room-specific chaos. In practice, that means you should finish Bazzite, Steam, the day-one streaming launchers, and the general controller flow, but think carefully before cloning active browser sessions, stale DRM tokens, room-specific Bluetooth pairings, or later add-ons that are not truly universal. The best golden image is polished but not overly personalized. Keep the same two-account model on every box: your personal Linux account for admin work and `family` as the shared auto-login couch account.

1. Finish one M720q until it is the exact baseline you want to reproduce.
2. Update it, reboot it, and test the core flows one last time: boot, Steam Big Picture, at least one streaming launcher, and at least one controller.
3. Decide whether you want to clone logged-in browser sessions and app credentials. If not, sign out of room-specific services before imaging so the new boxes start cleanly.
4. Boot the golden unit from your Ventoy USB and launch Clonezilla.
5. Choose the device-image workflow and save the entire internal SSD to an external drive or network share. Name the image in a way that describes the room role and Bazzite state, such as `m720q-htpc-golden-01`.
6. Boot the target M720q units into Clonezilla and restore that image onto each identical SSD.
7. On first boot of each cloned machine, change the hostname so the boxes are easy to tell apart on the network.
8. Re-pair Bluetooth controllers if needed, because controller pairing is often room-specific even when the rest of the image is identical.
9. Sign into streaming services where necessary and validate audio, display, and network on the target TV.

If you do not want full-disk imaging every time, ostree-style replication can be lighter. In that model, you install the same Bazzite image on each M720q, recreate the same two Linux accounts, then copy the shared `family` configuration directories, reinstall the same Flatpaks, and reuse the same launcher files. That is slower than Clonezilla for identical hardware, but it is cleaner when you want a less frozen image and more per-box flexibility.

## Section 14: Disaster Recovery

Rollback matters because one of the main promises of an immutable-style system is that bad updates do not have to become a rebuilding marathon. Restoring configs matters because most of the HTPC personality lives in launchers, `.desktop` files, autostart entries, and a handful of app settings. Re-pairing controllers matters because controller state is one of the first things a family notices when it breaks. Reinstalling Flatpaks matters because app-layer repairs are often much easier than host-level surgery. Browser DRM resets matter because streaming services can fail in frustrating ways that look dramatic but are sometimes just bad site state.

Use your personal admin account for rollback, updates, and host-level repairs. Use the `family` account for the backup and restore scripts below, because those scripts are meant to capture the couch-facing files that live in `/home/family`.

If a Bazzite update clearly broke a previously working machine, start with rollback:

```bash
rpm-ostree rollback
```

That command matters because it gives you a fast path back to the previous deployment instead of forcing you to debug the newest change while the family is waiting to watch something.

To make launcher recovery easy, back up the HTPC-specific config files:

File path: `~/bin/backup-htpc-config.sh`

```bash
#!/bin/bash
mkdir -p "$HOME/htpc-backups"
tar -czf "$HOME/htpc-backups/htpc-config-backup.tar.gz" \
  -C "$HOME" \
  bin \
  .config/autostart \
  .local/share/applications
```

File path: `~/bin/restore-htpc-config.sh`

```bash
#!/bin/bash
tar -xzf "$HOME/htpc-backups/htpc-config-backup.tar.gz" -C "$HOME"
chmod +x "$HOME"/bin/*.sh
```

Run the backup script after the launchers are stable and copy the resulting archive to a NAS share, external SSD, or recovery USB. If the box is reinstalled later, run the restore script first so all the menu entries and wrappers come back before you start logging into services again.

If controllers stop reconnecting, treat them as pairing state problems first, not as "Linux is broken" problems. If you use the official Xbox Wireless Adapter, unplug it once, reconnect it, and repeat the adapter test flow from Section 11. If you use Bluetooth, remove the old controller entry and repeat the `bluetoothctl` flow. If both paths suddenly start failing, check Secure Boot and the `xone` module before you start changing unrelated parts of the box.

If Flatpaks get corrupted or behave strangely, reinstall them by rerunning the install blocks from Sections 6, 8, 9, and 10. That is one of the biggest practical wins of this design: app recovery is mostly repeatable command re-entry, not mystery surgery.

If browser DRM breaks, start small. Sign out of the affected service, clear that service's site data in Chromium, close the browser, and retry. If the problem survives that, log out of all streaming sessions, back up anything you care about, and then reset the Chromium Flatpak profile as a last resort. The reason to leave this step late is simple: browser profile resets are effective, but they also wipe the accumulated convenience of a working living-room box.

If suspend or wake behavior becomes flaky after an update, treat power management as a recovery target too: reboot once, test a clean suspend and resume cycle, and fall back to full shutdown until behavior is trustworthy again.

## Section 15: Known Bazzite Bugs

This section is intentionally scoped to issues that can interfere with this exact HTPC use case.

### Lock screen and idle quirks

Lock-screen behavior on Bazzite KDE has had regressions, including [issue #2856](https://github.com/ublue-os/bazzite/issues/2856) (`KDE screen locker broken after bazzite:stable 42.20250706 [USER FIX]`) and [issue #2852](https://github.com/ublue-os/bazzite/issues/2852) (`No video output after some idle time`). Even if your exact idle-lock symptom is not reproduced on every system, lock and unlock behavior should be treated as something to test after updates.

### Autostart quirks

KDE session startup and autostart behavior on Bazzite has also had known issues, including [issue #2044](https://github.com/ublue-os/bazzite/issues/2044) (`Sunshine service failing to autostart on Bazzite gnome desktop images`) and [issue #4624](https://github.com/ublue-os/bazzite/issues/4624) (`Exiting KDE to go back to game mode doesn't stop KDE user services`). This matters directly for Steam Big Picture autostart and any custom launcher flow.

### Steam and Big Picture quirks

Steam regressions happen, including [issue #5145](https://github.com/ublue-os/bazzite/issues/5145) (`systemd-nsresourced BPF-LSM enforces user namespace restrictions on OGC kernel, breaking Steam/Flatpak after reboot without session restore`), [issue #4304](https://github.com/ublue-os/bazzite/issues/4304) (`Steam steamwebhelper crash-loops on fresh Bazzite nvidia install (CEF path resolution fails in pressure-vessel)`), and [issue #3172](https://github.com/ublue-os/bazzite/issues/3172) (`Bazzite - Steam UI fails to render (error -105) despite full connectivity`). Even when Steam itself works, the living-room launch path may not always behave exactly the same after updates.

### VA-API and browser hardware acceleration quirks

Hardware video acceleration behavior can vary depending on browser packaging, driver path, and GPU generation. This is one reason `vainfo` matters more than assumptions. Reports such as [issue #3225](https://github.com/ublue-os/bazzite/issues/3225) (`Steam cannot use hardware video encoding`), [issue #1987](https://github.com/ublue-os/bazzite/issues/1987) (`Firefox flatpak stutters with video (with work-around fix!)`), and [issue #4539](https://github.com/ublue-os/bazzite/issues/4539) (`Firefox (Flatpak) hardware video acceleration broken on AMD 7900 XTX`) show why streaming playback should be rechecked after major updates.

The practical lesson is simple: after major updates, test lock behavior, autostart, Steam launch flow, and streaming playback before assuming the HTPC is still fully appliance-ready.

## Recommended Hardware Accessories

This section is intentionally practical. The goal is to recommend the few accessories that make the box feel more like an appliance without turning day one into a shopping spree.

### Day-one recommended accessories

**Primary controller path:** Xbox Wireless Controller plus the [official Xbox Wireless Adapter for Windows](https://www.microsoft.com/en-us/d/xbox-wireless-adapter-for-windows/91dqrb97l130). This is the cleanest recommendation for this Lenovo M720q and Bazzite build because it is usually more stable than Bluetooth, handles reconnects and multiple controllers more gracefully, and feels closest to a console.

**Keyboard and touchpad fallback:** Logitech K400 Plus. Keep it nearby for admin tasks, password entry, recovery work, and the occasional desktop fallback without turning it into the main control method.

If you already own Xbox controllers and want to start with Bluetooth, that is still a valid first step. The adapter remains the better long-term target when the goal is the most predictable couch-friendly experience.

### Later upgrade accessories

**IR remote path:** FLIRC USB v2. It is still one of the cleanest Linux HTPC remote options because, after setup, it behaves like a normal USB keyboard instead of a strange one-off device.

**HDMI-CEC path:** Pulse-Eight USB-CEC Adapter. This is the more credible Linux path if you later want the TV remote and the HTPC to cooperate more like dedicated media gear through libCEC.

**Alternative controller option:** 8BitDo Ultimate 2.4G or 8BitDo Pro 2. These are strong Linux-friendly alternatives, but the Xbox controller plus official adapter remains the default recommendation for this guide.

## Section 16: Family Quick Card

Power on: If wake-from-sleep is configured and reliable, use the remote or wake path you set up. Otherwise press the Lenovo power button and wait for the box to boot.

Launch Steam Big Picture: It should start automatically. If it does not, open Steam from the KDE launcher and let it return to Big Picture mode.

Launch streaming apps: Use the Steam Non-Steam shortcuts first. Day-one priority services are Hulu, HBO Max, Disney+, Apple TV+, Netflix, and YouTube.

Launch Kodi: If configured later, open Kodi from Steam or from the KDE application menu.

Controller basics: `A` selects, `B` backs out, the D-pad or left stick moves focus, and the Xbox button is your home or attention button. Keep the K400+ nearby for admin work or fallback browsing.

Admin tasks: Normal couch use should stay on the `family` Linux account. If you need passwords, updates, recovery, firmware work, or deeper troubleshooting, sign into the personal admin Linux account instead.

Troubleshooting: If an app looks frozen, back out and reopen it. If the whole box changed after an update, reboot once. If wake-from-sleep stops behaving well, use a full shutdown until it is stable again. If it was working yesterday and broke today, use rollback before doing anything dramatic.

Family View PIN: ____________________

## Section 17: Appendix

This appendix repeats the exact file contents and wrapper content from earlier sections so everything important is in one place when you are rebuilding a box.

Unless a step above explicitly says otherwise, the `~` paths in this appendix are meant to be created while logged into the Linux `family` account, so `~` means `/home/family`.

### Steam autostart desktop file

File path: `~/.config/autostart/steam-bigpicture.desktop`

```ini
[Desktop Entry]
Type=Application
Exec=flatpak run com.valvesoftware.Steam -tenfoot
Hidden=false
X-GNOME-Autostart-enabled=true
Name=Steam Big Picture
Comment=Start Steam in Big Picture mode for couch use
```

### Streaming launcher scripts

File path: `~/bin/launch-netflix.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://www.netflix.com/browse
```

File path: `~/bin/launch-hbo-max.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://play.max.com/
```

File path: `~/bin/launch-hulu.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://www.hulu.com/
```

File path: `~/bin/launch-youtube.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://www.youtube.com/tv
```

File path: `~/bin/launch-prime-video.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://www.amazon.com/gp/video/storefront
```

File path: `~/bin/launch-apple-tv-plus.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://tv.apple.com/
```

File path: `~/bin/launch-paramount-plus.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://www.paramountplus.com/
```

File path: `~/bin/launch-peacock.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://www.peacocktv.com/
```

File path: `~/bin/launch-disney-plus.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://www.disneyplus.com/
```

File path: `~/bin/launch-youtube-tv.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://tv.youtube.com/
```

### Streaming desktop files

File path: `~/.local/share/applications/netflix.desktop`

```ini
[Desktop Entry]
Type=Application
Name=Netflix
Exec=/home/family/bin/launch-netflix.sh
Icon=applications-multimedia
Terminal=false
Categories=AudioVideo;Video;
```

File path: `~/.local/share/applications/hbo-max.desktop`

```ini
[Desktop Entry]
Type=Application
Name=HBO Max
Exec=/home/family/bin/launch-hbo-max.sh
Icon=applications-multimedia
Terminal=false
Categories=AudioVideo;Video;
```

File path: `~/.local/share/applications/hulu.desktop`

```ini
[Desktop Entry]
Type=Application
Name=Hulu
Exec=/home/family/bin/launch-hulu.sh
Icon=applications-multimedia
Terminal=false
Categories=AudioVideo;Video;
```

File path: `~/.local/share/applications/youtube.desktop`

```ini
[Desktop Entry]
Type=Application
Name=YouTube
Exec=/home/family/bin/launch-youtube.sh
Icon=applications-multimedia
Terminal=false
Categories=AudioVideo;Video;
```

File path: `~/.local/share/applications/prime-video.desktop`

```ini
[Desktop Entry]
Type=Application
Name=Prime Video
Exec=/home/family/bin/launch-prime-video.sh
Icon=applications-multimedia
Terminal=false
Categories=AudioVideo;Video;
```

File path: `~/.local/share/applications/apple-tv-plus.desktop`

```ini
[Desktop Entry]
Type=Application
Name=Apple TV+
Exec=/home/family/bin/launch-apple-tv-plus.sh
Icon=applications-multimedia
Terminal=false
Categories=AudioVideo;Video;
```

File path: `~/.local/share/applications/paramount-plus.desktop`

```ini
[Desktop Entry]
Type=Application
Name=Paramount+
Exec=/home/family/bin/launch-paramount-plus.sh
Icon=applications-multimedia
Terminal=false
Categories=AudioVideo;Video;
```

File path: `~/.local/share/applications/peacock.desktop`

```ini
[Desktop Entry]
Type=Application
Name=Peacock
Exec=/home/family/bin/launch-peacock.sh
Icon=applications-multimedia
Terminal=false
Categories=AudioVideo;Video;
```

File path: `~/.local/share/applications/disney-plus.desktop`

```ini
[Desktop Entry]
Type=Application
Name=Disney+
Exec=/home/family/bin/launch-disney-plus.sh
Icon=applications-multimedia
Terminal=false
Categories=AudioVideo;Video;
```

File path: `~/.local/share/applications/youtube-tv.desktop`

```ini
[Desktop Entry]
Type=Application
Name=YouTube TV
Exec=/home/family/bin/launch-youtube-tv.sh
Icon=applications-multimedia
Terminal=false
Categories=AudioVideo;Video;
```

### Advanced launcher scripts and wrapper scripts

File path: `~/bin/tv-on-cec.sh`

```bash
#!/bin/bash
echo "on 0" | cec-client -s -d 1
```

File path: `~/bin/tv-off-cec.sh`

```bash
#!/bin/bash
echo "standby 0" | cec-client -s -d 1
```

File path: `~/bin/suspend-htpc.sh`

```bash
#!/bin/bash
systemctl suspend
```

File path: `~/bin/launch-xbox-cloud.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://www.xbox.com/play
```

File path: `~/bin/launch-geforcenow.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://play.geforcenow.com/
```

File path: `~/bin/launch-luna.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://luna.amazon.com/
```

File path: `~/bin/launch-plex.sh`

```bash
#!/bin/bash
flatpak run org.chromium.Chromium --kiosk https://app.plex.tv/desktop
```

File path: `~/bin/backup-htpc-config.sh`

```bash
#!/bin/bash
mkdir -p "$HOME/htpc-backups"
tar -czf "$HOME/htpc-backups/htpc-config-backup.tar.gz" \
  -C "$HOME" \
  bin \
  .config/autostart \
  .local/share/applications
```

File path: `~/bin/restore-htpc-config.sh`

```bash
#!/bin/bash
tar -xzf "$HOME/htpc-backups/htpc-config-backup.tar.gz" -C "$HOME"
chmod +x "$HOME"/bin/*.sh
```

### Advanced desktop files

File path: `~/.local/share/applications/xbox-cloud.desktop`

```ini
[Desktop Entry]
Type=Application
Name=Xbox Cloud Gaming
Exec=/home/family/bin/launch-xbox-cloud.sh
Icon=applications-games
Terminal=false
Categories=Game;Network;
```

File path: `~/.local/share/applications/geforcenow.desktop`

```ini
[Desktop Entry]
Type=Application
Name=GeForce NOW
Exec=/home/family/bin/launch-geforcenow.sh
Icon=applications-games
Terminal=false
Categories=Game;Network;
```

File path: `~/.local/share/applications/luna.desktop`

```ini
[Desktop Entry]
Type=Application
Name=Amazon Luna
Exec=/home/family/bin/launch-luna.sh
Icon=applications-games
Terminal=false
Categories=Game;Network;
```

File path: `~/.local/share/applications/plex.desktop`

```ini
[Desktop Entry]
Type=Application
Name=Plex
Exec=/home/family/bin/launch-plex.sh
Icon=applications-multimedia
Terminal=false
Categories=AudioVideo;Video;
```

### Install command blocks

```bash
ujust update
```

```bash
systemctl reboot
```

```bash
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

```bash
sudo apt update && sudo apt upgrade -y
```

```bash
sudo apt install -y git curl wget vim flatpak
```

```bash
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

```bash
vainfo
```

```bash
sudo rpm-ostree install libva-utils intel-media-driver i965-va-driver ffmpeg
systemctl reboot
```

```bash
sudo apt install -y vainfo libva2 libva-utils i965-va-driver-shaders intel-media-va-driver-non-free ffmpeg
```

```bash
flatpak install -y flathub com.valvesoftware.Steam
```

```bash
sudo apt install -y gamemode
systemctl --user enable --now gamemoded
```

```bash
flatpak install -y flathub org.chromium.Chromium
```

```bash
mkdir -p ~/bin ~/.local/share/applications ~/.config/autostart
```

```bash
chmod +x ~/bin/*.sh
```

```bash
flatpak install -y flathub tv.kodi.Kodi
flatpak install -y flathub org.jellyfin.jellyfin-media-player
```

```bash
flatpak install -y flathub org.libretro.RetroArch
flatpak install -y flathub org.DolphinEmu.dolphin-emu
```

```bash
lsusb
sudo modprobe xone
```

```bash
sudo mokutil --import /etc/pki/akmods/certs/akmods-ublue.der
```

```bash
bluetoothctl
power on
agent on
default-agent
scan on
pair MAC
trust MAC
connect MAC
```

```bash
rpm-ostree rollback
```

## Section 18: Final Requirements

This file is one continuous Markdown document intended to stay copy/pasteable, self-contained, and ready for GitHub commit. It is meant to be used as a reproducible HTPC build guide for identical Lenovo M720q Tiny systems, with the full setup, recovery, launcher, and bug-awareness story preserved in one place instead of scattered across chat history or memory.
