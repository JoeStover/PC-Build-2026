# Storage Architecture

## Overview

Three-tier storage: TrueNAS as the primary active NAS, UNAS Pro as the local backup mirror, and Backblaze B2 as offsite cloud backup.

## Architecture

```
[Desktop / ThinkPad]
        ↓ NFS/restic backup
[TrueNAS SCALE — Dell T30]  ←── Primary services + storage
   ZFS: 4×4TB mirrored = ~7.3TB usable
   Exports: NFS (Linux), SMB (Windows/Apple)
   Services: Plex, Syncthing
        ↓ nightly rsync
[UNAS Pro — 8-bay]          ←── Backup vault (nobody accesses this directly)
   2×8TB mirrored = ~7.3TB usable
        ↓ weekly restic
[Backblaze B2]              ←── Offsite cloud backup
   Irreplaceable data only: docs, photos, configs
   ~500GB–1TB, ~$6/month
```

## 3-2-1 Backup Strategy

| Rule | Implementation |
|------|---------------|
| **3 copies** | TrueNAS (primary) + UNAS Pro (local backup) + Backblaze B2 (offsite) |
| **2 different media** | Local NAS (spinning disk) + cloud (remote object storage) |
| **1 offsite** | Backblaze B2 |

## Desktop NVMe

The desktop's NVMe is a **speed tier only** — OS, games, active working files. It is not shared, not the source of truth, and is backed up to TrueNAS nightly via restic.

## Total Cost

- TrueNAS: existing hardware (Dell T30)
- UNAS Pro drives: 2× 8TB = ~$360–500 (one-time)
- Backblaze B2: ~$6/month for 1TB = **~$72/year**

## Files in This Folder

| File | Description |
|------|-------------|
| [truenas-setup.md](./truenas-setup.md) | TrueNAS SCALE install, ZFS pool, datasets, snapshots, Docker |
| [unas-pro-backup.md](./unas-pro-backup.md) | UNAS Pro as backup vault, drive strategy, rsync config |
| [backup-strategy.md](./backup-strategy.md) | Full 3-2-1 strategy, what to back up, what to skip |
| [device-storage-map.md](./device-storage-map.md) | How each device connects to storage |
| [docker-compose.yml](./docker-compose.yml) | Docker Compose for TrueNAS services (Plex + Syncthing) |
| [backup-to-nas.sh](./backup-to-nas.sh) | Restic backup: desktop/laptop → TrueNAS |
| [offsite-backup.sh](./offsite-backup.sh) | Restic backup: TrueNAS → Backblaze B2 |
| [nas-sync.sh](./nas-sync.sh) | rsync: TrueNAS → UNAS Pro nightly mirror |
| [storage-health-check.sh](./storage-health-check.sh) | Weekly ZFS health report |
