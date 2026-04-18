#!/bin/bash
# Nightly backup of desktop/laptop to TrueNAS via restic (encrypted, deduplicated)
export RESTIC_REPOSITORY=/mnt/nas/backups/desktop-linux
export RESTIC_PASSWORD_FILE=/home/joe/.config/restic/password

restic backup \
  /home/joe \
  /etc \
  --exclude='.cache' \
  --exclude='.local/share/Steam/steamapps' \
  --exclude='node_modules' \
  --exclude='.trash'

# Keep 7 daily, 4 weekly, 6 monthly snapshots
restic forget --keep-daily 7 --keep-weekly 4 --keep-monthly 6 --prune
