# Windows Minimization — Windows as Appliance

## Philosophy

Windows gets a 250GB partition. Its only job is running games that require kernel-level anti-cheat (Valorant, etc.) that Linux cannot support. Everything else happens on Linux.

Boot into Windows only when forced. Every quality-of-life improvement you make to the Windows partition makes it easier to tolerate — which is fine, because the goal is a stable appliance, not a beloved OS.

## Initial Setup

### Skip Microsoft Account (Local Account)

At the "Let's add your Microsoft account" screen, disconnect from the internet or use:

```
OOBE\BYPASSNRO
```

Type this in the address bar if it appears as a URL field, or run it in a command prompt opened with Shift+F10 during setup.

### Disable Fast Startup (Critical for Dual Boot)

Fast Startup leaves NTFS in a hibernated state. Linux cannot safely access a hibernated NTFS partition.

Control Panel → Power Options → Choose what the power buttons do → Change settings that are currently unavailable → Uncheck **Turn on fast startup**

## UX Cleanup

### O&O ShutUp10++

Download and run [O&O ShutUp10++](https://www.oo-software.com/en/shutup10) — free, no install required. Apply the recommended settings to disable telemetry, ads, and unnecessary background services in bulk.

### Disable Start Menu Ads

Settings → Personalization → Start → Turn off "Show recommendations"

### Disable Copilot

Settings → Windows Update → Optional features → or via Group Policy:
`Computer Configuration → Administrative Templates → Windows Components → Windows Copilot → Turn off Windows Copilot`

### Disable Recall (AI screenshot feature)

Settings → Privacy & security → Recall & snapshots → Turn off **Save snapshots**

Or via PowerShell:

```powershell
Disable-WindowsOptionalFeature -Online -FeatureName "Recall"
```

## Clock Fix

Windows stores hardware clock as local time; Linux uses UTC. The displayed time shifts when switching.

Run in Linux terminal:

```bash
timedatectl set-local-rtc 1
```

## Long-Term Exit Ramp

| Stage | Description |
|-------|-------------|
| **Stage 1** | Dual boot equal — booting both regularly, learning Linux |
| **Stage 2** | Linux primary — default boot, Windows only for specific games |
| **Stage 3** | Haven't booted Windows in months — Windows exists but irrelevant |
| **Stage 4** | Delete partition, reclaim 250GB for Linux or games storage |

Stage 4 becomes possible when either:
- Anti-cheat games are dropped from the active playlist
- Linux anti-cheat support improves (it is improving — EAC/BattlEye already Linux-enabled for many titles)
