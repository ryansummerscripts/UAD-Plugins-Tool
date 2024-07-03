# UAD-Plugins-Tool
UAD Plugins Tool is a basic shell script to use in macOS's Terminal.app.
Its purpose is to delete all unused AAX, AU, VST, & VST3 UAD plugins as well as their PDF manuals and the UAD uninstaller.


Instructions below:


----------------------
UAD Plugins Tool 1.0.1
----------------------

Tested on macOS Monterey and Sonoma
Running UAD Software v11.3

------------------------------------------

Introduction:

This is a basic shell script to use in macOS's Terminal.app.
Its purpose is to delete all unused AAX, AU, VST, & VST3 plugins as well as their PDF manuals. 
It also deletes the UAD uninstaller.

Currently, all plugins are listed/populated in this script. However, by default, they are all 'commented out' with the "#" symbol. 
Since everyone's plugin usage/ownership is different, it's necessary to manually edit this script to your own personal needs.

Below are instructions on how to edit as well as run the script.

Some things to note:
- File deletion is instantaneous and files will not appear in the trash, so be sure to make a backup! 
- I've included a test script with only a few plugins to make backing up/testing a little easier.
- Plugin titles without a "#" before their names will be deleted from all four directories here:

/Library/Application Support/Avid/Audio/Plug-Ins/Universal Audio
/Library/Audio/Plug-Ins/Components
/Library/Audio/Plug-Ins/VST/Universal Audio
/Library/Audio/Plug-Ins/VST3/Universal Audio

Currently, there's no simple option to, for example, delete the vst & vst3 versions but keep the AU & AAX versions of a plugin you own - unless you were to make a separate script and exclude those directories.

Hopefully in a future release!

------------------------------------------

Editing Instructions:

1. To edit the script, right click on the shell script file "uad_plugins_tool_1.0.1.sh" and open with TextEdit.app

2. Under where it says "# Function to delete documentation files" and "# List of plugins to delete", you'll see the lists of plugin titles. 
By default they're commented out by the "#" symbol. Simply remove the "#" symbol for the titles you wish to delete. To prevent a plugin title from being deleted at any time in the future, simply add back the "#".

3. Save changes and close TextEdit

------------------------------------------

Permissions Instructions:


To execute a shell script, you need to first give it execute permissions.

1. Open Terminal.app, paste "sudo chmod u+x " (with the space at the end), then drag the "uad_plugins_tool_1.0.1.sh" file onto the terminal window, press enter and then your password.


Example:

----------------------------------------------------------------
sudo chmod u+x /Users/username/Desktop/uad_plugins_tool_1.0.1.sh
----------------------------------------------------------------

------------------------------------------

Executing Instructions:


1. In Terminal, type "sudo " (with the space at the end), and then once again, drag the "uad_plugins_tool_1.0.1.sh" file onto the terminal window, press enter and then your password.

Example:

------------------------------------------------------
sudo /Users/username/Desktop/uad_plugins_tool_1.0.1.sh
------------------------------------------------------

Done! 


It should now be running and automatically removing all unused plugins.
When it's finished, it will display "Cleanup complete".
The process can take several minutes to run based on how many plugins need to be removed, but is better than manual deletion as well as less prone to user error. 
Once you edit your removal preferences the first time, you're all set for tackling the next UAD Software update!

------------------------------------------


Feel free and get in touch here or via socials if you experience any issues, have suggestions, for more macOS Scripts or want to donate!

https://github.com/ryansummerscripts
