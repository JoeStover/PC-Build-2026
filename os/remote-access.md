# Remote Access

## The "Powerful Desktop + Thin Client" Model

```
[Linux Desktop — RTX 5070 Ti]
        |
    (Sunshine)
        |
   [Local Network / Tailscale VPN]
        |
    (Moonlight)
        |
[Surface Pro — ARM Windows]
```

The Surface Pro becomes a window into the Linux desktop. Its OS doesn't matter — it's just a screen with a keyboard.

## Sunshine + Moonlight (Game Streaming)

### Sunshine (Server — runs on Linux desktop)

Open-source, self-hosted game streaming server. Uses NVENC on the RTX 5070 Ti for hardware-accelerated encoding — near-zero performance impact.

**Install on Bazzite:**

```bash
# Bazzite includes Sunshine in its app catalog
# Or install via Flatpak
flatpak install flathub dev.lizardbyte.app.Sunshine
```

Configure at `https://localhost:47990` in browser. Add applications (Desktop, Steam Big Picture, etc.).

### Moonlight (Client — runs on Surface Pro)

ARM Windows compatible. Available from [moonlight-stream.org](https://moonlight-stream.org).

Install → Pair with Sunshine server on same network → Launch stream.

**Performance:** 1080p/60fps or 4K/60fps at low latency over gigabit LAN. Over Tailscale: 1080p/60fps typically fine on good broadband.

## Steam Remote Play

Built into Steam. Works for Steam games specifically without additional setup. Useful for quick access from other devices.

Not as flexible as Sunshine/Moonlight (Steam games only, requires Steam running on both ends).

## Tailscale (Mesh VPN)

Access the Linux desktop from anywhere — coffee shop, travel, anywhere with internet.

**Setup:**

```bash
# Install on Linux desktop
curl -fsSL https://tailscale.com/install.sh | sh
sudo tailscale up

# Install Tailscale on Surface Pro (Windows) and any other devices
# Download from tailscale.com
```

Free for personal use (up to 100 devices). Creates a private mesh network — devices connect directly when possible, relayed when not.

**Use cases:**
- Moonlight over Tailscale for remote desktop gaming/work
- SSH into desktop from anywhere
- Access TrueNAS web UI from anywhere

## SSH + VS Code Remote

SSH for terminal access and VS Code Remote for full development environment from any device.

**Connect from Surface Pro:**

```bash
ssh joe@desktop.local    # local network
ssh joe@100.x.x.x        # via Tailscale IP
```

**VS Code Remote:**
- Install "Remote - SSH" extension in VS Code on Surface Pro
- Connect to desktop → full VS Code with desktop's CPU, RAM, storage
- Code runs on desktop, UI runs on Surface Pro

## Summary

| Use Case | Tool |
|----------|------|
| Full desktop streaming (any app) | Sunshine + Moonlight |
| Steam games only | Steam Remote Play |
| Remote access from anywhere | Tailscale |
| Terminal / scripting | SSH |
| Development from Surface Pro | VS Code Remote SSH |
