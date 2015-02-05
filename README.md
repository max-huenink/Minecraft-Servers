Minecraft Servers Creation/Initialization
================
Files for creating/starting minecraft servers (vanilla and snapshot), as well as bukkit servers.

WARNING: Only works on debian based systems or windows if you have 'cygwin' installed.
wget *NEEDS* to be installed.

Make sure to either run 'install.sh' (Work in progress) or put all the files in the right directories, updating sFiles and dir variables correspondingly with their location per script. Sorry this may not be convienient.
## Purpose
These scripts are for creating/starting minecraft servers; Vanilla, Snapshot, Bukkit (Down as of August 24th, 2014), Forge.

I will take any suggestions on things that need to be improved/added/removed

If instructions are not very clear, please let me know.
## Installation/Initialization
To install, download entire 'serverFiles' directory, as well as 'install.sh'

It doesn't matter where the 'serverFiles' directory is located, as long as you know the FULL location. '~/Desktop/serverFiles/' for example.

Next, you'll want to run 'install.sh' That will prompt you for where you want to install everything, and it will create the directory, and install all necessary files for you.

To create your first server, run 'newServer.sh' and that will prompt you what the name for the server will be, and everything else. You may want to ask for changes on server.properties, as the defaults I have may not be what you would like.

If you would like to create a snapshot server, run 'newSnapshotServer.sh' and it will do the same thing, running 'base.sh' after declaring proper runtime variables.
## Aliases
Aliases will help you run the files that start/create your servers much easier. Such as (NOT FULL LIST OF ALIASES):
	
	alias server='bash /home/${USER}/Desktop/serverFiles/server.sh'
	alias servers='cd /home/${USER}/Desktop/minecraftServers/'

	alias newServer='bash /home/${USER}/Desktop/serverFiles/newServer.sh'
	alias newSnapshotServer='bash /home/${USER}/Desktop/serverFiles/newSnapshotServer.sh'
	alias newDownloadedServer='bash /home/${USER}/Desktop/serverFiles/newDownloadedServer.sh'
	alias newDownloadedSnapshotServer='bash /home/${USER}/Desktop/serverFiles/newDownloadedSnapshotServer.sh'

	alias serverFiles='cd /home/${USER}/Desktop/serverFiles/'
## Required Files
	regStart.sh
	fStart.sh
	vUpdate.sh

	newServer.sh
	newDownloadedServer.sh
	base.sh
	sProps.sh

	server.sh
	serverBase.sh

	dots.sh
	dots1.sh
	dots2.sh
	dots3.sh
	dots4.sh
