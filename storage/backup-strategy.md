# Backup Strategy — 3-2-1

## Overview

```
[Desktop / ThinkPad]  →  restic backup  →  [TrueNAS: tank/backups/desktop]
                                                    ↓
[All devices] ← NFS/SMB ─────────────  [TrueNAS: tank/share/*]
                                                    ↓ nightly rsync
                                         [UNAS Pro: backup/truenas-mirror]
                                                    ↓ weekly restic
                                         [Backblaze B2: irreplaceable only]
```

## The 3-2-1 Rule

| Rule | Implementation |
|------|---------------|
| **3 copies of data** | TrueNAS primary + UNAS Pro local mirror + Backblaze B2 offsite |
| **2 different storage media** | Spinning disk NAS (TrueNAS + UNAS Pro) + cloud object storage (B2) |
| **1 copy offsite** | Backblaze B2 |

## What to Back Up Offsite

Only irreplaceable data goes to Backblaze B2. Ask: "Can I re-obtain this if it's gone?"

### Back Up Offsite (Irreplaceable)

- Family photos and videos
- Personal documents (tax records, contracts, IDs)
- Code projects and configs
- Docker service configurations
- TrueNAS configuration export

### Do NOT Back Up Offsite (Re-obtainable)

- Movies and TV shows (re-downloadable)
- Music (re-downloadable from streaming or purchase)
- Game installs (re-downloadable from Steam/Epic/GOG)
- OS install media (re-downloadable)
- Software installers (re-downloadable)

**Realistic offsite size: 500GB–1TB**

## Backblaze B2 Cost

| Storage | Monthly Cost |
|---------|-------------|
| 1TB | ~$6.00 |
| 500GB | ~$3.00 |

At 1TB: **~$72/year** for full offsite protection.

Backblaze B2 also includes 3x egress for free per day. Restores during disaster recovery are manageable cost-wise.

## Restic

All backups use [restic](https://restic.net/) — encrypted, deduplicated, versioned.

Key features:
- **Encrypted at rest and in transit** — nobody at Backblaze can read your data
- **Deduplication** — backing up the same file twice doesn't double the storage
- **Versioned** — multiple snapshots, restore from any point in time
- **Single binary** — easy to install on Linux, macOS, Windows

See [backup-to-nas.sh](./backup-to-nas.sh) and [offsite-backup.sh](./offsite-backup.sh) for restic scripts.

## Photo Workflow

```
[iPhones / iPads]
       ↓
  [iCloud / Google Photos]  ← automatic sync
       ↓ (periodic manual export, or automated via script)
  [TrueNAS: tank/share/photos]
       ↓ (nightly rsync)
  [UNAS Pro: backup/truenas-mirror/photos]
       ↓ (weekly restic)
  [Backblaze B2: truenas-backup/photos]
```

Export from iCloud/Google Photos to TrueNAS:
- Manual: export from web interface, copy to NAS share
- Automated (future): [iCloud Photos Downloader](https://github.com/icloud-photos-downloader/icloud_photos_downloader) or Google Takeout API

## Future Option: Family NAS (True Offsite)

If a family member has a good internet connection and is willing, set up a small NAS at their location and sync via Tailscale. This eliminates the monthly cloud cost while maintaining true geographic separation.

Cost: ~$200–400 for a simple 2-drive NAS. Cost per month: ~$0 after initial investment.

## Backup Retention Policy

| Tier | Keep |
|------|------|
| Desktop → TrueNAS (daily) | 7 daily, 4 weekly, 6 monthly |
| TrueNAS snapshots | 7 daily, 4 weekly, 2 monthly |
| TrueNAS → UNAS Pro (rsync) | Latest (mirror — no retention) |
| TrueNAS → B2 (weekly) | 4 weekly, 6 monthly, 2 yearly |
