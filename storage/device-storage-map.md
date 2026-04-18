# Device Storage Map

How each device connects to storage infrastructure.

## Connection Map

| Device | Connects To | Method | What It Stores / Accesses |
|--------|------------|--------|--------------------------|
| **Desktop (Linux)** | TrueNAS | NFS automount | /home backup, documents, projects |
| **Desktop (Windows)** | TrueNAS | SMB mapped drive | Minimal use — anti-cheat games only partition |
| **ThinkPad P1** | TrueNAS | NFS automount | /home backup, documents, projects |
| **Surface Pro** | Desktop (via Moonlight) | Screen stream | Sees whatever desktop sees — no direct NAS access needed |
| **Wife's laptop** | TrueNAS | SMB mapped drive | Documents, photos, media share |
| **iPhones (2)** | iCloud / Google Photos | Native app sync | Photos to cloud → periodic archive to TrueNAS |
| **iPads (2)** | TrueNAS (via Files app) | SMB | Documents, media consumption |
| **ASUS Handheld** | Local storage only | — | Steam games installed locally, no NAS needed |
| **Mini PC 1 (HA)** | Local storage | — | Home Assistant DB on local SSD |
| **Mini PC 2 (AdGuard)** | Local storage | — | DNS query logs on local SSD |
| **TrueNAS (Dell T30)** | Local ZFS pool | — | tank pool: share, backups, apps |
| **UNAS Pro** | Receives rsync from TrueNAS | rsync (push) | Mirror of TrueNAS share + backups |

## NFS Mount Configuration (Linux Devices)

Add to `/etc/fstab` on desktop and ThinkPad:

```
# TrueNAS NFS mounts
truenas.local:/mnt/tank/share/documents  /mnt/nas/documents  nfs  defaults,_netdev,nofail  0  0
truenas.local:/mnt/tank/share/media      /mnt/nas/media      nfs  defaults,_netdev,nofail  0  0
truenas.local:/mnt/tank/share/photos     /mnt/nas/photos     nfs  defaults,_netdev,nofail  0  0
```

The `nofail` option prevents boot failure if NAS is offline.

## SMB Mount Configuration (Windows / Wife's Laptop)

Map network drive in Windows Explorer:
- `\\truenas.local\share\documents` → Drive Z:
- `\\truenas.local\share\photos` → Drive Y:
- `\\truenas.local\share\media` → Drive X:

Or use permanent SMB mount via `net use` in startup script.

## Backup Flows

| Source | Destination | Tool | Schedule |
|--------|------------|------|---------|
| Desktop /home | TrueNAS tank/backups/desktop | restic | Nightly |
| ThinkPad /home | TrueNAS tank/backups/thinkpad | restic | Nightly |
| TrueNAS tank/share | UNAS Pro backup | rsync | Nightly (2 AM) |
| TrueNAS tank/backups | UNAS Pro backup | rsync | Nightly (2 AM) |
| TrueNAS irreplaceable | Backblaze B2 | restic | Weekly (Sunday) |

## What's NOT in NAS Storage

- **Steam game library** — local NVMe on desktop only (re-downloadable)
- **Windows games partition** — 250GB Windows partition, local only
- **Home Assistant database** — local SSD on HA mini PC (backed up via HA cloud backup)
- **System drives / OS** — not backed up to NAS (reinstall from scratch if needed)
