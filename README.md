
---------------------
UAD Plugins Tool v2.3
---------------------

<p align="center">
  <a href="https://shop.ryansummer.com/p/uad-plugins-tool/">
    <img src="https://media.sellfy.store/images/EbcIl29G/W3Bt/uad_plugins_tool_icon.png" alt="UAD Plugins Tool">
  </a>
</p>

<div align="center">
https://shop.ryansummer.com/p/uad-plugins-tool/
</div>

<br><br>

<div align="center">
📸 Screenshots:
</div>

<br>

<div align="center">
Main Menu:
</div>

<div align="center">
<img width="757" height="480" alt="0  UAD Plugins Tool Main Menu" src="https://github.com/user-attachments/assets/bff61740-c913-4b30-8347-e587ba92f6a3" />
</div>

<br>

<div align="center">
Option 1) 🗑️  Run UAD Cleanup
</div>

<div align="center">
<img width="757" height="480" alt="1  UAD Cleanup 01" src="https://github.com/user-attachments/assets/2266d5e1-0757-48fa-a96b-85f6272a92ab" />
</div>

<br>

<div align="center">
Option 2) 🔍 UAD Cleanup [DRY RUN]
</div>

<div align="center">
<img width="757" height="984" alt="2  UAD Cleanup Dry Run 02" src="https://github.com/user-attachments/assets/b574dbcf-6e7a-433c-8077-0a4c9faaa2ad" />
</div>

<br>

<div align="center">
Option 3) ⚙️  Show Preferences
</div>

<div align="center">
<img width="757" height="984" alt="3  Show Preferences" src="https://github.com/user-attachments/assets/f28083b4-cd11-4bbb-9b99-cf367e9b3bd5" />
</div>

<br>

<div align="center">
Option 4) ↪️  Import Preferences
</div>

<div align="center">
<img width="757" height="480" alt="4  Import Preferences 02" src="https://github.com/user-attachments/assets/8a102d05-2256-4ebf-9725-0f58e7870155" />
</div>

<br>

<div align="center">
Option 5) 🔧 Check/Fix Permissions<br>
</div>

<div align="center">
<img width="775" height="711" alt="5  Check or Fix Permissions 02" src="https://github.com/user-attachments/assets/af8471c7-a02d-45fb-b405-0ef572c2166d" />
</div>

<br>

<div align="center">
Option 6) 📚 Resources<br>
</div>

<div align="center">
<img width="757" height="480" alt="6  Resources" src="https://github.com/user-attachments/assets/a987ddf6-af4b-4fb5-a48c-df1ed5c3ed54" />
</div>

<br>

------------------------------------------

Tested on:

✅ macOS Yosemite through Tahoe 26.4

✅ UAD Software v9.x.x through v11.8.3

✅ Intel & Apple Silcon

(See below for instructions on updating to the latest UAD Plugins Tool)

------------------------------------------

ℹ️ Introduction

UAD Plugins Tool is a menu-driven command line tool that runs in macOS's Terminal.app.

It includes options to: 

- run the main UAD plugin cleanup
- test a dry run
- show your current plugin removal preferences
- import your removal preferences
- check/fix permissions
- download the latest/previous versions of UAD Software, check UAD release notes or run the uninstaller
- check for UAD Plugins Tool updates or view the changelog

The purpose of the cleanup function is to move all unused AAX, AU, VST, & VST3 plugins as well as their PDF manuals to a folder on the desktop where you can backup or delete the plugins.

Currently, all plugins listed in this script are 'commented' out with the "#" symbol before each plugin title. 
Since everyone's plugin usage/ownership is different, it's necessary to manually edit this for the first time.
But once done, you're all set for tackling the next UAD Software update. Just update your UAD Software and run the cleanup option!

Below are instructions on how to edit as well as run the script.

------------------------------------------

📂 File Management

Plugin titles without a "#" before their names will be removed from all five directories here:
```
/Library/Application Support/Avid/Audio/Plug-Ins/Universal Audio
/Library/Audio/Plug-Ins/Components
/Library/Audio/Plug-Ins/VST/Universal Audio
/Library/Audio/Plug-Ins/VST3/Universal Audio
/Applications/Universal Audio/Documentation
```

They will then be moved to a newly created folder on the desktop named "UAD_Backup", which will include the following sub directories:
```
AAX
Component
Documentation
VST
VST_Mono
VST3
```
From here, you can either backup the plugins or delete them.

Currently, this will not move, for example, the VST & VST3 versions but keep the AU & AAX versions of a plugin you own - but hopefully that will change in a future update! 

If you don't use certain formats, it's pretty easy to just delete them yourself for now.
(Please reach out if you'd like to see a feature like this)

------------------------------------------

🧼 Removing Quarantine


By default, Apple flags & quarantines unsigned files downloaded from the internet, preventing this from being ran simply by double clicking it. (Sorry, we are not yet in the Apple Developer program)

<div align="center">
<img width="260" height="262" alt="GateKeeper msg" src="https://github.com/user-attachments/assets/b88e06dd-cc47-4f67-9fd9-1c1ecc8dd102" />
</div>

If you wish to run it by double clicking it, you can remove the quarantine as well as give it the necessary permissions.

1. Copy the command below (including the space at the end of 'prep'):
```
function prep() {
    for file in "$@"; do
        sudo xattr -d com.apple.quarantine "$file"
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
        sudo xattr -d com.apple.quarantine "$file"
        sudo chmod +x "$file"
    done
}

prep /Users/YOURUSERNAME/Downloads/UAD_Plugins_Tool_v2.3.command
```

3. Type your password and hit Enter again (password will be invisible).
4. The command file should now open as usual when double clicking it.

------------------------------------------

📝 Editing Instructions

1. To edit the script, right click on the command file and choose Open With > TextEdit.app

2. Under where it says "# List of plugin names", you'll see the list of plugin titles.

<div align="center">
<img width="718" height="573" alt="TextEdit view" src="https://github.com/user-attachments/assets/c9f542dd-eb2f-413c-b9c7-eb73179e709a" />
</div>


By default they're commented out by the "#" symbol. Simply delete the "#" symbol for the titles you wish to remove. 

(To prevent a plugin title from being deleted at any time in the future, simply add back the "#").

3. Save changes and close TextEdit

------------------------------------------

▶️ Running Instructions

1. Remove any previous "UAD_Backup" folder on your desktop.

2. Double click the command file. It will then open Terminal and display the Main Menu. Choose option 1 for cleanup (or another option) and press Enter.
Upon running the cleanup function, a confirmation will appear before running the script.

<div align="center">
<img width="757" height="480" alt="1  UAD Cleanup 01" src="https://github.com/user-attachments/assets/faa2b6fc-b1f1-4cf6-8bec-12c99b034624" />
</div>

3. Press y and then enter.

It will now be running and automatically removing all unused plugins.
Once finished, it will display "✅ Done" along with a summary of the files removed.

<div align="center">
<img width="757" height="984" alt="1  UAD Cleanup 02" src="https://github.com/user-attachments/assets/6512024f-42d2-4e54-95fa-c509d5b6c35f" />
</div>

4. Simply find the "UAD_Backup" folder on your desktop and either backup the plugins or delete them.
(If you run into a permissions issue, use the 'Check/Fix Permissions' menu option to fix them)

------------------------------------------

🔄 Updating UAD Plugins Tool

1. Run the NEW UAD_Plugins_Tool_2.3.command file.
2. Choose option 4. '↪️ Import Preferences'.
3. Drag your OLD UAD_Plugins_Tool*.command file onto the terminal window and press Enter.

<div align="center">
<img width="757" height="480" alt="4  Import Preferences 01" src="https://github.com/user-attachments/assets/d49172e6-2e3c-4015-aafe-9a30740de9a8" />
</div>
<div align="center">
<img width="757" height="480" alt="4  Import Preferences 02" src="https://github.com/user-attachments/assets/8a102d05-2256-4ebf-9725-0f58e7870155" />
</div>
Done! Hit enter and continue using the script.

------------------------------------------

🔌 Backing Up Plugins

Backing up plugins is recommended in case you ever need to open an old session that uses one, or if you wish to try out or buy a new plugin.

💡 For example, you would move your backed-up plugins, back to these system directories:
```
BackupDrive/Unused_Plugins/Components/UAD *.component --> '/Library/Audio/Plug-Ins/Components'
```
```
BackupDrive/Unused_Plugins/AAX/Universal Audio/UAD *.aaxplugin --> '/Library/Application Support/Avid/Audio/Plug-Ins/Universal Audio'
```
```
BackupDrive/Unused_Plugins/VST/Universal Audio/UAD *.vst --> '/Library/Audio/Plug-Ins/VST/Universal Audio'
```
<em>(VSTs can be placed in any of the sub-category folders, or outside of them)</em>
```
BackupDrive/Unused_Plugins/VST3/Universal Audio/UAD *.vst3 --> '/Library/Audio/Plug-Ins/VST3/Universal Audio'
```
<em>(VST3s can be placed in any of the sub-category folders, or outside of them)</em>

------------------------------------------

📚 UAD Resources


Latest UAD Software v11.8.3 Direct Download:
```
https://builds.uaudio.com/apps/uad2/UAD_11_8_3_321.pkg
```
Previous UAD Software versions:
```
https://help.uaudio.com/hc/en-us/articles/215267203-UAD-Software-Archives#h_01H9V0DA4FN4W1HE84V40V3WJ7
```
Release Notes:
```
https://help.uaudio.com/hc/en-us/articles/215270403-UAD-Version-History-Release-Notes
```

------------------------------------------

If you purchase new plugins that you wish to keep installed, don't forget to add back the "#" before the plugin name to prevent it from being moved out of your plugin folders.

Feel free and get in touch here or via socials if you experience any issues, have suggestions, for more macOS Scripts or want to donate!

https://shop.ryansummer.com
