# UAD Plugins Tool
UAD Plugins Tool is a basic shell script that runs in macOS's Terminal app.
Its purpose is to move all unused AAX, AU, VST, & VST3 plugins as well as their PDF manuals to a folder on the desktop where you can backup or delete the plugins.


Full instructions below:


----------------------
UAD Plugins Tool 1.1.0
----------------------

Tested on macOS Monterey and Sonoma
Running UAD Software v11.5.0

------------------------------------------

Introduction:

This is a basic shell script to use in macOS's Terminal.app.
Its purpose is to move all unused AAX, AU, VST, & VST3 plugins as well as their PDF manuals to a folder on the desktop where you can backup or delete the plugins.

Currently, all plugins are listed/populated in this script. However, by default, they are all 'commented out' with the "#" symbol before each plugin title. 
Since everyone's plugin usage/ownership is different, it's necessary to manually edit this script to your own personal needs.

Below are instructions on how to edit as well as run the script.

------------------------------------------

File Management:

Plugin titles without a "#" before their names will be removed from all four directories here:

/Library/Application Support/Avid/Audio/Plug-Ins/Universal Audio

/Library/Audio/Plug-Ins/Components

/Library/Audio/Plug-Ins/VST/Universal Audio

/Library/Audio/Plug-Ins/VST3/Universal Audio


They will then be moved to a newly created folder on the desktop named "UAD_Backup", which has the following sub directories:

AAX
Component
Documentation
VST
VST_Mono
VST3

From here, you can either backup the plugins or delete them.

Currently, there's no function to, for example, move the VST & VST3 versions but keep the AU & AAX versions of a plugin you own - unless you were to make a separate script and exclude those directories.

------------------------------------------

Editing Instructions:

1. To edit the script, right click on the shell script file "uad_plugins_tool_1.1.0.sh" and open with TextEdit.app

2. Under where it says "# List of plugin names", you'll see the list of plugin titles. 

By default they're commented out by the "#" symbol. Simply delete the "#" symbol for the titles you wish to remove. 

To prevent a plugin title from being deleted at any time in the future, simply add back the "#".

3. Save changes and close TextEdit

------------------------------------------

Permissions Instructions:


To execute a shell script, you need to first give it execute permissions.

1. Open Terminal.app, paste "sudo chmod u+x " (with the space at the end), then drag the "uad_plugins_tool_1.1.0.sh" file onto the terminal window, press enter and then your password.


Example:

----------------------------------------------------------------
sudo chmod u+x /Users/username/Desktop/uad_plugins_tool_1.1.0.sh
----------------------------------------------------------------

------------------------------------------

Executing Instructions:


1. In Terminal, type "sudo " (with the space at the end), and then once again, drag the "uad_plugins_tool_1.1.0.sh" file onto the terminal window, press enter and then your password.

Example:

------------------------------------------------------
sudo /Users/username/Desktop/uad_plugins_tool_1.1.0.sh
------------------------------------------------------

Done! 


It should now be running and automatically removing all unused plugins.
When finished, it will display "Process completed."

Once you edit your removal preferences the first time, you're all set for tackling the next UAD Software update!

------------------------------------------


Feel free and get in touch here or via socials if you experience any issues, have suggestions, for more macOS Scripts or want to donate!

https://github.com/ryansummerscripts
