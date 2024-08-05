#!/bin/zsh

# Define paths
CONFIG_DIR="./config"
DOCS_DIR="./Documents"
APPS_LIST="./applications.txt"

# Define functions for each section of the setup

# 1. Copy Configuration/System Files
echo "Copying configuration files..."
function copy_config_files() {
    cp -r $CONFIG_DIR/* ~/Library/Preferences/
    echo "Configuration files copied."
}

# 2. Install Applications/Packages
echo "Installing applications..."
function install_applications() {
    if command -v brew &> /dev/null
    then
        echo "Homebrew found, using it to install applications..."
    else
        echo "Homebrew not found, installing it first..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi

    while read app; do
        brew install "$app" || echo "Failed to install $app"
    done < $APPS_LIST
    echo "Applications installed."
}

# 3. Copy Personal Documents
echo "Copying personal documents..."
function copy_personal_documents() {
    mkdir -p ~/Documents/
    cp -r $DOCS_DIR/* ~/Documents/
    echo "Personal documents copied."
}

# Execute functions
copy_config_files
install_applications
copy_personal_documents

echo "Setup complete."
