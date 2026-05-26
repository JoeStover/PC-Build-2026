#!/bin/bash
# Weekly offsite backup of irreplaceable data to Backblaze B2
export RESTIC_REPOSITORY="b2:your-bucket-name:truenas-backup"
export RESTIC_PASSWORD_FILE="/root/.restic-password"
export B2_ACCOUNT_ID="your-account-id"
export B2_ACCOUNT_KEY="your-account-key"

restic backup \
  /mnt/tank/share/documents \
  /mnt/tank/share/photos \
  /mnt/tank/apps \
  --exclude='*.tmp' \
  --exclude='cache'

restic forget \
  --keep-weekly 4 \
  --keep-monthly 6 \
  --keep-yearly 2 \
  --prune
