# Linux Gaming

## Steam + Proton

Proton is built into Steam. Enable it for all titles:

1. Steam → Settings → Compatibility
2. Enable **"Enable Steam Play for all other titles"**
3. Select latest Proton version (or Proton-GE — see below)

That's it. Most Windows games now appear in your library and can be installed/launched from Linux.

## Proton-GE (Community Build)

Proton-GE is a community fork with additional patches and codecs not yet in mainline Proton. Often needed for:
- Games with cutscene video codec issues
- Games that lag behind mainline Proton support

### Install via ProtonUp-Qt

```bash
# Install ProtonUp-Qt via Flatpak
flatpak install flathub net.davidotek.pupgui2
```

Run ProtonUp-Qt → Add Version → Select Proton-GE version → Install.

Then in Steam → Properties for a game → Compatibility → Force Proton-GE.

## Essential Tools

### gamemode

Optimizes system resources when a game launches (CPU governor, scheduling, GPU settings).

```bash
sudo dnf install gamemode    # Fedora/Bazzite
```

### MangoHud

Overlay showing FPS, frametime, GPU/CPU temps, VRAM usage. Invaluable for performance monitoring.

```bash
sudo dnf install mangohud    # Fedora/Bazzite
# or via Flatpak
flatpak install flathub org.freedesktop.Platform.VulkanLayer.MangoHud
```

## Combined Steam Launch Option

Add this to a game's Properties → Launch Options to enable both tools simultaneously:

```
gamemoderun mangohud %command%
```

## NVIDIA Driver

The proprietary NVIDIA driver is **required** for gaming (not the open-source Nouveau driver).

- **Bazzite:** NVIDIA driver pre-installed automatically
- **Nobara:** NVIDIA driver pre-installed automatically
- **Fedora manual:** `sudo dnf install akmod-nvidia xorg-x11-drv-nvidia-cuda`

## Game Compatibility Overview

| Category | Percentage | Notes |
|----------|-----------|-------|
| Native Linux games | ~15% | Runs directly |
| Proton-compatible | ~80%+ | Runs via Proton/Wine translation layer |
| Anti-cheat (EAC/BattlEye) | Game-by-game | Many now Linux-enabled by developers |
| Kernel-level anti-cheat | Blocked | Valorant (Vanguard), PUBG (XIGNCODE) — Windows partition required |

## Reference Sites

- **[ProtonDB](https://www.protondb.com)** — Community reports on game compatibility. Search any game before buying.
- **[AreWeAntiCheatYet](https://areweanticheatyet.com)** — Comprehensive database of anti-cheat status per game.

## Wayland vs X11

Use Wayland. NVIDIA 555+ drivers support Wayland properly. Bazzite defaults to Wayland.

If a specific game has issues with Wayland, set the launch option:

```
__GL_GSYNC_ALLOWED=0 __NV_PRIME_RENDER_OFFLOAD=1 %command%
```

Or switch to X11 session temporarily via the login screen gear icon.

## Shader Pre-caching

Enable in Steam → Settings → Downloads → **"Enable shader pre-caching"** and **"Allow background processing of Vulkan shaders"**.

This pre-compiles shaders before you play, avoiding stutters during gameplay when shaders are compiled on the fly.

## VRR / G-Sync

Variable Refresh Rate works on Linux with NVIDIA on Wayland. Enable in:
- NVIDIA settings (`nvidia-settings`)
- Or via kernel parameter: `nvidia_drm.modeset=1` (usually set by default on Bazzite)

G-Sync Compatible monitors work out of the box once VRR is enabled.
