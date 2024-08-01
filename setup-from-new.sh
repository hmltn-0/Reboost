#!/bin/bash
# Setup from new script

# Applications to install
APPS=("visual-studio-code" "google-chrome" "warp")

for app in "${APPS[@]}"; do
    brew install --cask $app
done

# Placeholder for additional setup commands
echo "System setup complete."

exit 0
