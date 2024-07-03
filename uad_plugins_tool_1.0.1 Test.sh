#!/bin/bash

# Function to move UAD AUs to a new "Universal Audio" folder
move_uad_plugins() {
    local source_dir="/Library/Audio/Plug-Ins/Components"
    local target_dir="/Library/Audio/Plug-Ins/Components/Universal Audio"

    # Create the target directory if it doesn't exist
    if [ ! -d "$target_dir" ]; then
        sudo mkdir -p "$target_dir"
    fi

    # Move files starting with "UAD "
    sudo mv "$source_dir"/UAD* "$target_dir"/
}

# Function to undo moving UAD AUs
undo_move_uad_plugins() {
    local source_dir="/Library/Audio/Plug-Ins/Components"
    local target_dir="/Library/Audio/Plug-Ins/Components/Universal Audio"

    # Move files back to original location
    sudo mv "$target_dir"/UAD* "$source_dir"/

    # Remove "Universal Audio" folder
    sudo rm -rf "$target_dir"
}

# Call function to move UAD AUs (before running the main script)
move_uad_plugins

# Function to delete plugin files
delete_plugins() {
    local plugin=$1
    local directories=(
        "/Library/Audio/Plug-Ins/Components/Universal Audio"
        "/Library/Audio/Plug-Ins/VST/Universal Audio"
        "/Library/Audio/Plug-Ins/VST3/Universal Audio"
        "/Library/Application Support/Avid/Audio/Plug-Ins/Universal Audio"
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
plugins=(
    "UAD MDWEQ5-3B"
    "UAD Pultec HLF-3C"
    "UAD Tonelux Tilt"
)

# Trap to undo moving UAD AUs (after running the main script)
trap undo_move_uad_plugins EXIT

# Loop through plugins and delete them
for plugin in "${plugins[@]}"; do
    delete_plugins "$plugin"
    delete_documentation "$plugin"
done

# Delete the uninstaller
delete_uninstaller

echo "Cleanup complete!"
