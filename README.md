---------------------
UAD Plugins Tool v2.0
---------------------

📸 Screenshots:

Main Menu:

![UAD_Plugins_Tool_v2 0](https://github.com/user-attachments/assets/57524c09-7253-4c21-a581-2e764bfeae2a)

Option 1) 🗑️  Run UAD Cleanup

![Screenshot 2025-09-08 at 10 29 31 AM](https://github.com/user-attachments/assets/c158af2a-ae89-4d33-bc55-a559898af3a4)

Option 2) 🔍 UAD Cleanup [DRY RUN]

![Screenshot 2025-09-08 at 10 29 19 AM](https://github.com/user-attachments/assets/42313740-6cb2-4b6b-a46c-a6d93e94ae7a)

Option 3) ⚙️  Show Preferences

![Screenshot 2025-09-08 at 10 29 10 AM](https://github.com/user-attachments/assets/a0584ace-d99b-47cc-8c25-caa16d7ab4c2)

Option 4) ↪️  Import Preferences

![Screenshot 2025-09-08 at 10 34 46 AM](https://github.com/user-attachments/assets/411b7fd9-b59a-4876-b151-ef2f4f6e8c0b)

Option 5) 🔄 Check For Updates (This just opens up the UAD Plugins Tool webpage in your default browser)

Option 6) 📝 ChangeLog

![Screenshot 2025-09-08 at 10 49 19 AM](https://github.com/user-attachments/assets/1996b2f0-c942-483a-83a1-9bfc20aedfe9)

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

![Screenshot 2025-09-08 at 10 21 54 AM](https://github.com/user-attachments/assets/82eae845-3036-41a7-b7b5-04699d1eef12)

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

![Screenshot 2025-09-08 at 10 54 17 AM](https://github.com/user-attachments/assets/65f774be-af7c-4fec-8a10-6f6696a236df)

By default they're commented out by the "#" symbol. Simply delete the "#" symbol for the titles you wish to remove. 

(To prevent a plugin title from being deleted at any time in the future, simply add back the "#").

3. Save changes and close TextEdit

------------------------------------------

▶️ Running Instructions:

1. Simply double click the command file. It will then open Terminal and display the Main Menu. Choose option 1 for cleanup (or another option) and press Enter.
Upon running the cleanup function, a confirmation will appear before running the script.

![Screenshot 2025-09-08 at 10 30 37 AM](https://github.com/user-attachments/assets/84eebcd0-e928-4993-81bf-02b29d360e44)

2. Press y and then enter.

It will now be running and automatically removing all unused plugins.
Once finished, it will display "✅ Done" along with a summary of the files removed.

![Screenshot 2025-09-08 at 10 29 31 AM](https://github.com/user-attachments/assets/be049f2c-1d83-4f1d-8414-aeaaa9998df9)

3. Simply find the "UAD_Backup" folder on your desktop and either backup the plugins or delete them.

------------------------------------------

🔄 Updating to UAD Plugins Tool v2.0:

1. Run the new UAD_Plugins_Tool_2.0.command file.
2. Choose option 4. '↪️ Import Preferences'.
3. Drag your old uad_plugins_tool.command file onto the terminal window and press Enter.

![Screenshot 2025-09-08 at 10 34 46 AM](https://github.com/user-attachments/assets/411b7fd9-b59a-4876-b151-ef2f4f6e8c0b)

Done! Continue using the script.

------------------------------------------

Once you edit your removal preferences the first time, you're all set for tackling the next UAD Software update! 
If you purchase new plugins that you wish to keep installed, don't forget to add back the "#" before the plugin name to prevent it from being moved out of your plugin folders.

Feel free and get in touch here or via socials if you experience any issues, have suggestions, for more macOS Scripts or want to donate!

https://github.com/ryansummerscripts
