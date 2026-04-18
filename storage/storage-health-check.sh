#!/bin/bash
# Weekly storage health report
echo "=== ZFS Pool Status ==="
zpool status

echo ""
echo "=== Space Usage ==="
zfs list -o name,used,avail,usedbysnapshots

echo ""
echo "=== Last Sync Log (tail) ==="
tail -20 /var/log/nas-sync.log
