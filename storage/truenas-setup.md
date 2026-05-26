# TrueNAS SCALE Setup

## Fresh Install

Start with a clean TrueNAS SCALE install — wipe old configuration, don't migrate from a previous install. Clean starts avoid carrying forward old datasets, stale permissions, and misconfigured services.

1. Download latest TrueNAS SCALE from [truenas.com](https://www.truenas.com/download-truenas-scale/)
2. Flash to USB drive (Etcher or Ventoy)
3. Boot Dell T30 from USB, install to internal OS drive (separate from the 4× 4TB data drives)
4. Complete initial setup: hostname, admin password, network interface

## ZFS Pool Configuration

**Pool: `tank`**

| Drive | Config |
|-------|--------|
| 4× 4TB HDD | 2 mirrored pairs (mirror vdev × 2) |
| Usable capacity | ~7.3TB |
| Redundancy | 1 drive failure per mirror pair — lose 2 specific drives and lose data |

**Create in TrueNAS:**
- Storage → Create Pool → Name: `tank`
- Add 4 drives in 2 × mirror layout (not RAIDZ — mirrors give better performance for mixed read/write)

### 80% Rule

**Never fill the pool past 80%.** ZFS performance degrades significantly above 80%, and recovery operations require free space.

- Pool capacity: ~7.3TB
- **Hard limit for actual data: ~5.8TB**
- Set a ZFS quota on the root dataset to enforce this

## Dataset Structure

```
tank/
├── share/
│   ├── documents/     ← Family documents, projects
│   ├── media/         ← Movies, TV shows, music
│   └── photos/        ← Photo library (archived from iCloud/Google)
├── backups/
│   ├── desktop/       ← Restic backups from desktop Linux
│   ├── thinkpad/      ← Restic backups from ThinkPad
│   └── devices/       ← Misc device backups
└── apps/
    ├── plex/          ← Plex config and metadata
    ├── syncthing/     ← Syncthing config
    └── docker/        ← Docker volumes
```

Separate datasets = separate snapshot policies, quotas, and share configurations. This matters.

## Snapshot Policy

**Configure this on day one. Do not skip.**

| Policy | Retention |
|--------|----------|
| Daily snapshots | Keep 7 |
| Weekly snapshots | Keep 4 |
| Monthly snapshots | Keep 2 |
| **Total snapshots max** | **13 per dataset** |

**No hourly snapshots. Ever.**

Hourly snapshots accumulate rapidly and the `usedbysnapshots` column will quietly eat your pool. Daily is granular enough for a home NAS.

In TrueNAS: Data Protection → Periodic Snapshot Tasks → Create task per dataset with above retention.

## Network Shares

### NFS (Linux devices)

Create NFS share for `tank/share` and `tank/backups`:
- Storage → Shares → Unix (NFS) → Add
- Map read/write access to specific client IPs or subnet

Mount on Linux clients in `/etc/fstab`:
```
truenas.local:/mnt/tank/share  /mnt/nas  nfs  defaults,_netdev  0  0
```

### SMB (Windows / Apple devices)

Create SMB share for `tank/share`:
- Storage → Shares → Windows (SMB) → Add
- Set guest access off, require authentication

## Docker / App Configuration

TrueNAS SCALE uses a built-in Kubernetes app layer (Apps). For simple use, Docker Compose via TrueNAS Apps or a separate docker-compose.yml is cleaner.

See [docker-compose.yml](./docker-compose.yml) for Plex + Syncthing configuration.

## Lessons Learned (From Previous Installs)

1. **Snapshots need retention policies** — without retention, they fill the pool silently
2. **Monitor `usedbysnapshots`** — run `zfs list -o name,used,avail,usedbysnapshots` weekly
3. **Complexity is the enemy** — simple ZFS + Plex + Syncthing. Don't add 12 apps on day one.
4. **Label drives physically** — tape + marker. Which physical drive is which slot matters when replacing
5. **Test restores before you need them** — restore one file from snapshot within first week
