
---------------------
UAD Plugins Tool v2.1
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
<img width="757" height="480" alt="0  Main Menu" src="https://github.com/user-attachments/assets/274e67a3-235b-491d-9a55-2c715e265bda" />
</div>

<br>

<div align="center">
Option 1) 🗑️  Run UAD Cleanup
</div>

<div align="center">
<img width="757" height="480" alt="1  UAD Cleanup 1" src="https://github.com/user-attachments/assets/58968c6f-8c39-4496-a996-e3c8d571f55b" />
</div>

<br>

<div align="center">
Option 2) 🔍 UAD Cleanup [DRY RUN]
</div>

<div align="center">
<img width="757" height="984" alt="2  Dry Run 2" src="https://github.com/user-attachments/assets/8b75f479-202f-4afb-9221-c7d6e945abf0" />
</div>

<br>

<div align="center">
Option 3) ⚙️  Show Preferences
</div>

<div align="center">
<img width="757" height="984" alt="3  Show Prefs" src="https://github.com/user-attachments/assets/aa812844-c837-4260-ac5c-4b35df7397e7" />
</div>

<br>

<div align="center">
Option 4) ↪️  Import Preferences
</div>

<div align="center">
<img width="745" height="520" alt="4  Import Prefs option" src="https://github.com/user-attachments/assets/a93e20fb-17cf-49cc-8af7-90afdc6c6c47" />
</div>

<br>

<div align="center">
Option 5) 🔄 Check For Updates (No GUI)<br>
(This just opens up the UAD Plugins Tool webpage in your default browser)
</div>

<br>

<div align="center">
Option 6) 🔧 Check/Fix Permissions<br>
</div>

<div align="center">
<img width="775" height="984" alt="6  Check   Fix Permissions 2" src="https://github.com/user-attachments/assets/1d4d0367-2b44-4565-9029-03de29967958" />
</div>

<br>

<div align="center">
Option 7) 📚 UAD Resources<br>
</div>

<div align="center">
<img width="757" height="480" alt="7  UAD Resources" src="https://github.com/user-attachments/assets/69a5c7e8-2faa-4a19-8160-2a3674abdfef" />
</div>

<br>

<div align="center">
Option 8) 📝 ChangeLog
</div>

<div align="center">
<img width="757" height="984" alt="8  ChangeLog" src="https://github.com/user-attachments/assets/fa6c20e6-25c4-42ea-906e-f7dbdbdb794d" />
</div>

<br>

------------------------------------------

Tested on:

✅ macOS Yosemite through Tahoe 26.0.1

✅ UAD Software v9.x.x through v11.8.1

✅ Intel & Apple Silcon

(See below for instructions on updating to the latest UAD Plugins Tool)

------------------------------------------

ℹ️ Introduction

UAD Plugins Tool is a menu-style command line tool that runs in macOS's Terminal.app.

It includes options to: 

- run the main UAD plugin cleanup
- test a dry run
- show your current plugin removal preferences
- import your removal preferences
- check for updates
- check/fix permissions
- download the latest/previous versions of UAD Software, check UAD release notes or run the uninstaller
- view the built-in change log for this tool

The purpose of the cleanup function is to move all unused AAX, AU, VST, & VST3 plugins as well as their PDF manuals to a folder on the desktop where you can backup or delete the plugins.

Currently, all plugins listed in this script are 'commented' out with the "#" symbol before each plugin title. 
Since everyone's plugin usage/ownership is different, it's necessary to manually edit this for the first time.
But once done, you're all set for tackling the next UAD Software update. Just update your UAD Software and run the script!

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

🧼 De-Quarantining & Signing


By default, Apple flags & quarantines unsigned files downloaded from the internet, preventing this from being ran simply by double clicking it. 

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

prep /Users/YOURUSERNAME/Downloads/UAD_Plugins_Tool_v2.1.command
```

3. Type your password and hit Enter again (password will be invisible).
4. The command file should now open as usual when double clicking it.

------------------------------------------

📝 Editing Instructions

1. To edit the script, right click on the command file and choose Open With > TextEdit.app

2. Under where it says "# List of plugin names", you'll see the list of plugin titles.

<div align="center">
<img width="533" height="459" alt="TextEdit view" src="https://github.com/user-attachments/assets/15c721e7-b299-465c-8b3d-7e2a10ae34a0" />

</div>

By default they're commented out by the "#" symbol. Simply delete the "#" symbol for the titles you wish to remove. 

(To prevent a plugin title from being deleted at any time in the future, simply add back the "#").

3. Save changes and close TextEdit

------------------------------------------

▶️ Running Instructions

1. Simply double click the command file. It will then open Terminal and display the Main Menu. Choose option 1 for cleanup (or another option) and press Enter.
Upon running the cleanup function, a confirmation will appear before running the script.

<div align="center">
<img width="745" height="466" alt="1  UAD Cleanup option" src="https://github.com/user-attachments/assets/66378a5b-75f0-427c-898c-69990336c120" />
</div>

2. Press y and then enter.

It will now be running and automatically removing all unused plugins.
Once finished, it will display "✅ Done" along with a summary of the files removed.

<div align="center">
<img width="745" height="1052" alt="1  UAD Cleanup option 2" src="https://github.com/user-attachments/assets/5f79e61f-c23b-4097-9083-c19d996a2692" />
</div>

3. Simply find the "UAD_Backup" folder on your desktop and either backup the plugins or delete them.
(If you run into a permissions issue, use the 'Check/Fix Permissions' menu option to fix them)

------------------------------------------

🔄 Updating UAD Plugins Tool

1. Run the NEW UAD_Plugins_Tool_2.1.command file.
2. Choose option 4. '↪️ Import Preferences'.
3. Drag your OLD uad_plugins_tool.command file onto the terminal window and press Enter.

<div align="center">
<img width="745" height="520" alt="4  Import Prefs option" src="https://github.com/user-attachments/assets/8cd1746a-8a67-4bcd-ba13-52c25f6467ec" />
</div>

Done! Continue using the script.

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


Latest UAD Software v11.8.1 Direct Download:
```
https://builds.uaudio.com/apps/uad2/UAD_11_8_1_75.pkg
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
