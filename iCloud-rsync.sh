#!/bin/bash
#
# iCloud-rsync.sh
# ver 1.0
# Shawn Eggleston - 2/25/2020 
#
# Simple wrapper script for rsync to copy iCloud Drive
# contents to an external hard drive for backup on macOS
#
# ** WARNING: Make sure the BACKUP_PATH is set to an
#             independent directory otherwise any file
#             that does not exist in ICLOUD_DIR will be
#             deleted from it! **

# Path to external storage
BACKUP_PATH = "/Volumes/<EXT_HD>"

# Path to iCloud
ICLOUD_DIR = "~/Library/Mobile Documents/com~apple~CloudDocs/"

# rsync log location
RSYNC_LOG = "/Users/$USER/iCloud-rsync.log"

# rsync (args) <source> <destination>
# -avP is archive, verbose, partial files AND show progress
# --delete will delete files from BACKUP_PATH that are not in ICLOUD_DIR
# --log-file will log output to RSYNC_LOG
rsync -avP --delete "$ICLOUD_DIR" "$BACKUP_PATH" --log-file="$RSYNC_LOG"