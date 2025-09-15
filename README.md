
---------------------
UAD Plugins Tool v2.0
---------------------


<br>

<div align="center">
📸 Screenshots:
</div>

<br>

<div align="center">
Main Menu:
</div>

<div align="center">
<img width="745" height="466" alt="0  Main Menu" src="https://github.com/user-attachments/assets/b7aad2fd-089d-4a40-b421-b1236947ee2f" />
</div>

<br>

<div align="center">
Option 1) 🗑️  Run UAD Cleanup
</div>

<div align="center">
<img width="745" height="466" alt="1  UAD Cleanup option" src="https://github.com/user-attachments/assets/66378a5b-75f0-427c-898c-69990336c120" />
</div>

<br>

<div align="center">
Option 2) 🔍 UAD Cleanup [DRY RUN]
</div>

<div align="center">
<img width="745" height="1052" alt="2  Dry Run Option" src="https://github.com/user-attachments/assets/2762e25e-c185-4374-94f3-d18345f5ed1d" />
</div>

<br>

<div align="center">
Option 3) ⚙️  Show Preferences
</div>

<div align="center">
<img width="745" height="1042" alt="3  Show Prefs Option" src="https://github.com/user-attachments/assets/0465cd49-1edb-4019-a6b8-d457edf37ac0" />
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
Option 6) 📝 ChangeLog
</div>

<div align="center">
<img width="745" height="476" alt="6  ChangeLog option" src="https://github.com/user-attachments/assets/fcec42be-074c-442f-8091-61956d7966a3" />
</div>

<br>

------------------------------------------

Tested on:

✅ macOS Yosemite through Sequoia 15.6.1

✅ UAD Software v9.x.x through v11.8.1

✅ Intel & Apple Silcon

(See below for instructions on updating to the latest UAD Plugins Tool)

------------------------------------------

ℹ️ Introduction:

UAD Plugins Tool is a menu-style command line tool that runs in macOS's Terminal.app.

As of v2.0, it now includes options to: run the main UAD plugin cleanup, test a dry run, show your current plugin removal preferences, import your preferences from older versions of this tool, check for updates and view the built-in change log - all within one place.

The purpose of the cleanup function is to move all unused AAX, AU, VST, & VST3 plugins as well as their PDF manuals to a folder on the desktop where you can backup or delete the plugins.

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

Currently, this will not move, for example, the VST & VST3 versions but keep the AU & AAX versions of a plugin you own - but hopefully that will change in a future update! 

If you don't use certain formats, it's pretty easy to just delete them yourself for now.

------------------------------------------

🧼 De-Quarantining & Signing:


By default, macOS flags & quarantines unsigned files downloaded from the internet, preventing this from being ran simply by double clicking it. 

<div align="center">
<img width="260" height="262" alt="GateKeeper msg" src="https://github.com/user-attachments/assets/b88e06dd-cc47-4f67-9fd9-1c1ecc8dd102" />
</div>

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

prep /Users/YOURUSERNAME/Downloads/UAD_Plugins_Tool_v2.0.command
```

3. Type your password and hit Enter again (password will be invisible).
4. The command file should now open as usual when double clicking it.

------------------------------------------

📝 Editing Instructions:

1. To edit the script, right click on the command file and choose Open With > TextEdit.app

2. Under where it says "# List of plugin names", you'll see the list of plugin titles.

<div align="center">
<img width="533" height="459" alt="TextEdit view" src="https://github.com/user-attachments/assets/15c721e7-b299-465c-8b3d-7e2a10ae34a0" />

</div>

By default they're commented out by the "#" symbol. Simply delete the "#" symbol for the titles you wish to remove. 

(To prevent a plugin title from being deleted at any time in the future, simply add back the "#").

3. Save changes and close TextEdit

------------------------------------------

▶️ Running Instructions:

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

------------------------------------------

🔄 Updating to UAD Plugins Tool v2.0:

1. Run the new UAD_Plugins_Tool_2.0.command file.
2. Choose option 4. '↪️ Import Preferences'.
3. Drag your old uad_plugins_tool.command file onto the terminal window and press Enter.

<div align="center">
<img width="745" height="520" alt="4  Import Prefs option" src="https://github.com/user-attachments/assets/8cd1746a-8a67-4bcd-ba13-52c25f6467ec" />
</div>

Done! Continue using the script.

------------------------------------------

Once you edit your removal preferences the first time, you're all set for tackling the next UAD Software update! 
If you purchase new plugins that you wish to keep installed, don't forget to add back the "#" before the plugin name to prevent it from being moved out of your plugin folders.

Feel free and get in touch here or via socials if you experience any issues, have suggestions, for more macOS Scripts or want to show support.

https://shop.ryansummer.com
