# Rollout Plan

## Overview

Six phases covering the full home infrastructure buildout. Phase 1 (network) is the prerequisite for everything else. Phases can overlap where dependencies allow.

**Total timeline: ~2–3 months from move-in**

## Phase 0 — Planning (Now / Pre-Move)

**Timeline:** Before and immediately after moving in  
**Goal:** Have a plan, have the supplies, don't improvise

- [ ] Annotate house blueprints (see [blueprint-guide.md](../physical-buildout/blueprint-guide.md))
- [ ] Run UniFi Design Center simulation for AP placement
- [ ] Order all networking supplies (see [shopping-list-network.md](../network/shopping-list-network.md))
- [ ] Order 1000ft Cat6a bulk cable
- [ ] Live on ISP router while settling in — no rush to build the rack immediately
- [ ] Order 42U rack (look for off-lease / used — eBay, Facebook Marketplace)

**Dependencies:** None  
**Blocker if skipped:** No blueprint = no plan = expensive surprises during cable fishing

---

## Phase 1 — Network Foundation (Week 1–3)

**Timeline:** First 1–3 weeks  
**Goal:** Replace ISP router, get proper network in place — this enables everything else

- [ ] Frame server closet in basement (or confirm space and clean it up)
- [ ] Seal/paint concrete floor
- [ ] Set up 42U rack (or temporary rack-on-wire-shelving staging)
- [ ] Mount patch panel and cable management
- [ ] Run trunk cables basement → 2nd floor closet
- [ ] Fish all planned Cat6a runs (1st floor drops, AP locations, camera pre-runs)
- [ ] Terminate and test all cables (cable tester on every run before patch panel)
- [ ] Rack and configure: UDM-Pro, Pro 24 PoE, UNAS Pro
- [ ] Set up 2nd floor USW-Lite-16-PoE in closet
- [ ] Mount and configure all APs (U7 Pro × 2, UniFi 6+)
- [ ] Verify full home wireless coverage

**Dependencies:** Phase 0 (blueprints, supplies ordered)  
**Blocker if delayed:** Living on ISP router works temporarily — delay is acceptable

---

## Phase 2 — TrueNAS (Week 2–3, Parallel with Phase 1)

**Timeline:** While network is going up, or immediately after  
**Goal:** Primary NAS operational with Plex and Syncthing

- [ ] Fresh TrueNAS SCALE install on Dell T30
- [ ] Create ZFS pool: 4× 4TB mirrored pairs
- [ ] Create dataset structure (share, backups, apps)
- [ ] Configure snapshot policies (daily 7, weekly 4, monthly 2 — from day one)
- [ ] Set up NFS shares (for Linux devices)
- [ ] Set up SMB shares (for Windows/Apple devices)
- [ ] Deploy Docker Compose: Plex + Syncthing
- [ ] Add Plex library: point to `/mnt/tank/share/media`
- [ ] Connect desktop and ThinkPad via NFS

**Dependencies:** Phase 1 network (wired connection to Pro 24 PoE switch)  

---

## Phase 3 — Desktop PC Build (Week 2–4, Parallel)

**Timeline:** Parallel with Phase 1 / Phase 2  
**Goal:** New desktop operational with dual boot

- [ ] Build desktop PC (see [pc-build/](../pc-build/))
- [ ] Install Windows 11 first (250GB partition)
  - [ ] Disable Fast Startup
  - [ ] Apply O&O ShutUp10++
  - [ ] Local account setup
- [ ] Install Bazzite Linux
  - [ ] Configure GRUB dual boot
  - [ ] Fix hardware clock (`timedatectl set-local-rtc 1`)
- [ ] Install and configure Sunshine (game streaming server)
- [ ] Configure NFS mounts to TrueNAS
- [ ] Set up restic backup to TrueNAS (nightly cron)
- [ ] Install Steam, enable Proton for all titles
- [ ] Install ProtonUp-Qt, add Proton-GE

**Dependencies:** Phase 1 (network) for NAS mount + Phase 2 (TrueNAS) for backup target

---

## Phase 4 — UNAS Pro Backup Vault (Week 5–6)

**Timeline:** After TrueNAS is stable  
**Goal:** Local backup vault operational

- [ ] Install 2× 8TB drives in UNAS Pro
- [ ] Configure mirrored storage pool
- [ ] Set up rsync target share (no snapshots)
- [ ] Configure TrueNAS Rsync Task: nightly push to UNAS Pro
- [ ] Verify first successful sync
- [ ] Confirm `nas-sync.sh` log shows completion

**Dependencies:** Phase 2 (TrueNAS) — need source data before backup target matters

---

## Phase 5 — Mini PCs (Week 6–8)

**Timeline:** After network and NAS are stable  
**Goal:** Home Assistant and AdGuard Home on dedicated hardware

- [ ] Install Home Assistant OS on Mini PC 1
  - [ ] Configure initial automations
  - [ ] Add water sensors and humidity monitors
  - [ ] Add Govee WiFi sensors
- [ ] Install AdGuard Home on Mini PC 2
  - [ ] Configure as DNS server
  - [ ] Update router DNS settings (in UDM-Pro) to point to AdGuard
  - [ ] Add blocklists
- [ ] Wire both mini PCs to Pro 24 PoE (dedicated ports 9 and 10)

**Dependencies:** Phase 1 (network), hardware arriving

---

## Phase 6 — Remote Access, Cloud Backup, Handheld (Month 2–3)

**Timeline:** After core infrastructure is stable  
**Goal:** Full remote access, cloud backup running, optional device transitions

- [ ] Set up Tailscale on all devices (desktop, ThinkPad, Surface Pro, phones)
- [ ] Configure Moonlight on Surface Pro
- [ ] Verify Sunshine + Moonlight streaming from desktop
- [ ] Set up Backblaze B2 bucket
- [ ] Configure `offsite-backup.sh` as weekly cron on TrueNAS
- [ ] Verify first B2 backup completes
- [ ] (Optional) Install Bazzite on ASUS handheld
- [ ] (Optional) Install Fedora/Bazzite on ThinkPad P1 Gen 1

**Dependencies:** Phase 1 (Tailscale), Phase 2 (TrueNAS for offsite source), Phase 3 (Sunshine on desktop)

---

## Dependency Map

```
Phase 0 (Planning)
     ↓
Phase 1 (Network) ────────────────┐
     ↓                            ↓
Phase 2 (TrueNAS)    Phase 3 (Desktop)
     ↓                            
Phase 4 (UNAS Pro)  
     
Phase 5 (Mini PCs) — depends on Phase 1 only

Phase 6 (Remote / Cloud) — depends on Phase 1 + 2 + 3
```

Network (Phase 1) is the only true blocker. Everything else can start once wired connectivity exists.
