#!/bin/bash
# Nightly mirror of TrueNAS to UNAS Pro backup vault
TIMESTAMP=$(date +%Y-%m-%d_%H:%M)
LOG="/var/log/nas-sync.log"

echo "=== Sync started: $TIMESTAMP ===" >> $LOG

rsync -avz --delete \
  /mnt/tank/share/documents  nas-backup.local:/backup/truenas-mirror/documents \
  >> $LOG 2>&1

rsync -avz --delete \
  /mnt/tank/share/media      nas-backup.local:/backup/truenas-mirror/media \
  >> $LOG 2>&1

rsync -avz --delete \
  /mnt/tank/share/photos     nas-backup.local:/backup/truenas-mirror/photos \
  >> $LOG 2>&1

rsync -avz --delete \
  /mnt/tank/backups           nas-backup.local:/backup/truenas-mirror/backups \
  >> $LOG 2>&1

echo "=== Sync completed: $(date +%Y-%m-%d_%H:%M) ===" >> $LOG
