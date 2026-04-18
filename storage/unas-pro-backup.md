# UNAS Pro — Backup Vault

## Role

The UNAS Pro is a **backup vault**. Its only job is receiving nightly rsync from TrueNAS. No daily-use devices connect to it. Nobody accesses it directly unless TrueNAS has failed.

This is intentional. A backup vault that people accidentally write to, delete from, or use as a scratch drive is not a reliable backup vault.

## Hardware

| Spec | Value |
|------|-------|
| Model | UNAS Pro |
| Bays | 8 |
| M.2 NVMe cache slots | 2 |
| Network | 3× 10GbE (1× SFP+, 2× RJ45) |
| RAM | 16GB |
| Form factor | 1U rack |

## Drive Strategy

### Starting Configuration

- **Drives:** 2× 8TB
- **Layout:** Mirrored (RAID 1)
- **Usable capacity:** ~7.3TB
- **Cost:** ~$360–500 for 2× 8TB (WD Red, Seagate IronWolf, or equivalent)

This matches TrueNAS capacity for full dataset mirroring.

### Expansion Plan

The UNAS Pro has 8 bays. When HDD prices normalize or data grows:
- Add drives in pairs (maintain mirror parity)
- Pairs 2 and 3: expand to 3× mirror groups or convert to larger single pool
- No urgency — start with 2 drives, expand when the data warrants it

### Drive Grade

The UNAS Pro is a backup vault with low write frequency (one rsync per night). It does not need NAS-premium drives (WD Red Pro, Seagate Exos). Consumer NAS drives (WD Red, Seagate IronWolf standard) are fine for this role.

Do not buy the cheapest possible drives — they're not rated for always-on NAS use. But don't over-invest in drives for a device that mostly sits idle.

## rsync Configuration

Use **TrueNAS built-in Rsync Tasks** (Data Protection → Rsync Tasks) to push from TrueNAS to UNAS Pro.

- Schedule: nightly (e.g., 2:00 AM)
- Direction: Push (TrueNAS → UNAS Pro)
- Mode: SSH or Rsync module
- Options: `--delete` to remove files deleted on TrueNAS (keeps vault in sync, not as archival storage)

See [nas-sync.sh](./nas-sync.sh) for the rsync script if running manually or via cron.

## Connection

UNAS Pro connects to Pro 24 PoE via 10G SFP+ DAC cable. This gives full 10G bandwidth for nightly sync operations — a full 7TB rsync completes in roughly 1.5–2 hours at 10G (vs. 16+ hours at 1G).

## What NOT to Do

- ❌ Do not set auto-snapshots on the UNAS Pro — snapshot accumulation is the enemy
- ❌ Do not connect daily-use devices to the UNAS Pro share
- ❌ Do not use the UNAS Pro NVMe cache aggressively — backup workloads don't benefit
- ❌ Do not put the UNAS Pro and TrueNAS on the same UPS — if UPS #1 fails, both devices could lose power simultaneously

## Accessing the UNAS Pro (Disaster Recovery)

If TrueNAS is unavailable:
1. Log into UNAS Pro web UI
2. Enable temporary SMB or NFS share on backup dataset
3. Access files from desktop or other device
4. Plan TrueNAS restoration while working from UNAS Pro
