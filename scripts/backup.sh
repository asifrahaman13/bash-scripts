#!/bin/bash

# Source directory to be backed up
SOURCE_DIR="../txt"

# Destination directory or cloud storage service (e.g., remote server)
DEST_DIR="../backup"

# Log file to record backup activity
LOG_FILE="../logs/logs.txt"

# Perform the backup using rsync
rsync -av --delete "$SOURCE_DIR" "$DEST_DIR" >> "$LOG_FILE" 2>&1

# Check if the rsync command was successful
if [ $? -eq 0 ]; then
    echo "Backup successful at $(date)" >> "$LOG_FILE"
else
    echo "Backup failed at $(date)" >> "$LOG_FILE"
fi
