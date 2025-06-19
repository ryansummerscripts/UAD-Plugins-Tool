# UAD Plugins Tool
UAD Plugins Tool is a basic command file that runs a script in macOS's Terminal.app.
Its purpose is to move all unused AAX, AU, VST, & VST3 plugins as well as their PDF manuals to a folder on the desktop where you can backup or delete the plugins.


Full instructions below:


----------------------
UAD Plugins Tool 1.1.3
----------------------

Tested on:

✅ macOS Yosemite through Sequoia 15.5

✅ Intel & Apple Silcon

✅ UAD Software v9.x.x through v11.7.0

------------------------------------------

ℹ️ Introduction:

This is a basic command file that runs a script in macOS's Terminal.app.
Its purpose is to move all unused AAX, AU, VST, & VST3 plugins as well as their PDF manuals to a folder on the desktop where you can backup or delete the plugins.

Currently, all plugins are listed/populated in this script. However, by default, they are all 'commented out' with the "#" symbol before each plugin title. 
Since everyone's plugin usage/ownership is different, it's necessary to manually edit this script to your own personal needs.

Below are instructions on how to edit as well as run the script.

------------------------------------------

📂 File Management:

Plugin titles without a "#" before their names will be removed from all four directories here:
```
/Library/Application Support/Avid/Audio/Plug-Ins/Universal Audio
/Library/Audio/Plug-Ins/Components
/Library/Audio/Plug-Ins/VST/Universal Audio
/Library/Audio/Plug-Ins/VST3/Universal Audio
```

They will then be moved to a newly created folder on the desktop named "UAD_Backup", which has the following sub directories:
```
AAX
Component
Documentation
VST
VST_Mono
VST3
```
From here, you can either backup the plugins or delete them.

Currently, this will not move, for example, the VST & VST3 versions but keep the AU & AAX versions of a plugin you own - unless you were to make a separate script and exclude those directories. 

If you don't use certain formats, it's easier to simply delete them yourself.

------------------------------------------

🧼 De-Quarantining & Signing:


By default, macOS flags & quarantines unsigned files downloaded from the internet, preventing this from being ran simply by double clicking it. 
If you wish to run it by double clicking it, you can remove its quarantine attributes as well as sign the script.

1. Copy the command below (including the space at the end of 'prep'):
```
function prep() {
    for file in "$@"; do
        sudo xattr -cr "$file"
        sudo xattr -r -d com.apple.quarantine "$file"
        sudo codesign --force --deep --sign - "$file"
        sudo chmod +x "$file"
    done
}

prep 
```

2. Paste the command into terminal and drag and drop the .command file onto the Terminal window, then press Enter.

Example:
```
function prep() {
    for file in "$@"; do
        sudo xattr -cr "$file"
        sudo xattr -r -d com.apple.quarantine "$file"
        sudo codesign --force --deep --sign - "$file"
        sudo chmod +x "$file"
    done
}

prep /Users/YOURUSERNAME/Downloads/uad_plugins_tool_1.1.3.command
```

3. Type your password and hit Enter again (password will be invisible).
4. The command file should now open as usual when double clicking it.

------------------------------------------

📝 Editing Instructions:

1. To edit the script, right click on the command file and choose Open With > TextEdit.app

2. Under where it says "# List of plugin names", you'll see the list of plugin titles. 

By default they're commented out by the "#" symbol. Simply delete the "#" symbol for the titles you wish to remove. 

To prevent a plugin title from being deleted at any time in the future, simply add back the "#".

3. Save changes and close TextEdit

------------------------------------------

▶️ Running Instructions:

1. Simply double click the command file. It will then open Terminal and display a confirmation before running the script.

2. Press y and then enter.

It should now be running and automatically removing all unused plugins.
When finished, it will display "Process completed."

Done! 

Simply find the "UAD_Backup" folder on your desktop and either backup the plugins or delete them.

------------------------------------------

Once you edit your removal preferences the first time, you're all set for tackling the next UAD Software update! 
If you purchase new plugins that you wish to keep installed, don't forget to add back the "#" before the plugin name to prevent it from being moved out of your plugin folders.

Feel free and get in touch here or via socials if you experience any issues, have suggestions, for more macOS Scripts or want to donate!

https://github.com/ryansummerscripts
