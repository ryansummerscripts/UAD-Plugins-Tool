#!/bin/bash

# Function to delete plugin files
delete_plugins() {
    local plugin=$1
    local directories=(
        "/Library/Audio/Plug-Ins/Components"
        "/Library/Audio/Plug-Ins/VST"
        "/Library/Audio/Plug-Ins/VST3"
        "/Library/Application Support/Avid/Audio/Plug-Ins"
    )
    local extensions=(
        "aaxplugin"
        "component"
        "vst"
        "vst3"
    )

    for directory in "${directories[@]}"; do
        for ext in "${extensions[@]}"; do
            find "$directory" -type d -name "$plugin.$ext" -exec rm -rf {} \; -print 2>/dev/null
            find "$directory" -type d -name "$plugin(m).$ext" -exec rm -rf {} \; -print 2>/dev/null
        done
    done
}

# Function to delete documentation files
# Uncomment each plugin title to allow for deletion
delete_documentation() {
    local documentation_dir="/Applications/Universal Audio/Documentation"
    local manuals=(
        "Tonelux Tilt Manual.pdf"
        "MDWEQ5 Manual.pdf"
    )

    for manual in "${manuals[@]}"; do
        find "$documentation_dir" -type f -name "$manual" -exec rm -rf {} \; -print 2>/dev/null
    done
}

# Function to delete the uninstaller app
delete_uninstaller() {
    local uninstaller="/Applications/Universal Audio/Uninstall Universal Audio Software.app"
    if [[ -e $uninstaller ]]; then
        echo "Deleting uninstaller: $uninstaller"
        rm -rf "$uninstaller"
    else
        echo "Uninstaller does not exist: $uninstaller"
    fi
}

# List of plugins to delete
# Uncomment each plugin title to allow for deletion
plugins=(
    "UAD MDWEQ5-3B"
    "UAD Pultec HLF-3C"
    "UAD Tonelux Tilt"
)

# Loop through plugins and delete them
for plugin in "${plugins[@]}"; do
    delete_plugins "$plugin"
    delete_documentation "$plugin"
done

# Delete the uninstaller
delete_uninstaller

echo "Cleanup complete!"
