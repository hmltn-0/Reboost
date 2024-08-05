# Reset-Computer

## Overview
This project is intended to help users wipe their computer at any time and restore it from an extremely minimal and organized repository of essential data. The goal is to streamline the process of resetting a computer and making it fully functional with the necessary personal files, applications, and configurations.

## Concept
The idea is to have a minimal and organized repository where you can keep:
1. **Documents/Files**: Personal files that are important to you.
2. **Applications/Packages**: List of applications you want to install.
3. **Configurations**: Any key configuration information.

## How It Works
The script currently categorizes the task of a computer reset into three main categories:
1. **Documents/Files**: This includes personal files that should be stored in the `Documents` directory.
2. **Applications/Packages**: A list of applications and packages that need to be installed.
3. **Configurations**: Key configuration information to be set up.

These categories are designed to be comprehensive, but can be modified if needed in the future.

## Usage
Instructions on how to use the scripts will be provided here.


## Platform
These scripts are intended for macOS and are written in zsh.

## Script Structure
The script has three main sections:

### 1. Copy Configuration/System Files
This section of the script copies over configuration and system files from the repository to the appropriate locations on the computer.

```sh
# Copy configuration files
cp -r ./config/* ~/Library/Preferences/
```

### 2. Install Applications/Packages
This section installs all the applications listed in a file (e.g., `applications.txt`).

```sh
# Install applications
while read app; do
    brew install "$app"
done < applications.txt
```

### 3. Copy Personal Documents
This section copies personal documents to the Documents directory.

```sh
# Copy personal documents
cp -r ./Documents/* ~/Documents/
```

These sections ensure that all your configurations, applications, and personal documents are restored to your computer.

