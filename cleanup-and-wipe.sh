#!/bin/bash
# Cleanup and wipe script

# Confirmation prompt
read -p "Are you sure you want to proceed with the cleanup? This will delete files in Desktop, Documents, and Downloads. (yes/no): " confirm
if [ "$confirm" != "yes" ]; then
    echo "Cleanup aborted."
    exit 1
fi

# Specify directories to clean
CLEAN_DIRS=("$HOME/Desktop" "$HOME/Documents" "$HOME/Downloads")

# Backup documents to iCloud
rsync -av --delete $HOME/Documents ~/Library/Mobile\\ Documents/com~apple~CloudDocs/Documents

for dir in "${CLEAN_DIRS[@]}"; do
    rm -rf "$dir"/*
done

# Placeholder for additional cleanup commands
echo "System cleaned up."

exit 0
