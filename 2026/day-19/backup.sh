#!/bin/bash
<< readme
This is a backup script
usage: ./backup.sh <Source> <Dest>
readme

display_usage () {
    echo "./backup.sh <source> <Dest>"
}

if [ $# -ne 2 ]; then
    display_usage
    exit 1
fi

SOURCE=$1
DEST=$2
DATE=$(date +%Y-%m-%d)
ARCHIVE="backup-$DATE.tar.gz"

if [ ! -d "$SOURCE" ]; then
    echo "Source directory does not exist"
    exit 1
fi

# Create destination directory if missing
mkdir -p "$DEST"

# Create backup archive
tar -czf "$DEST/$ARCHIVE" "$SOURCE"

if [ -f "$DEST/$ARCHIVE" ]; then
    echo "Backup created: $ARCHIVE"
    ls -lh "$DEST/$ARCHIVE"
else
    echo "Backup failed"
    exit 1
fi

# Delete backups older than 14 days
find "$DEST" -name "backup-*.tar.gz" -mtime +14 -delete
~