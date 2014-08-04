Minecraft Servers Creation/Initialization
================
Files for creating/starting minecraft servers (vanilla and snapshot), as well as bukkit servers.

WARNING: Only works on debian based systems, may work on windows if you have 'cygwin' installed, but this has not been tested fully.
wget *NEEDS* to be installed.

Make sure to either run 'install.sh' or put all the files in the right directories.
## Purpose
These scripts are for creating/starting minecraft servers (both vanilla and snapshot versions), as well as bukkit servers.

I will take any suggestions on things that need to be improved/added/removed

If instructions are not very clear, please let me know. This is the first time I have done anything like this.
## Installation/Initialization
To install, download entire 'serverFiles' directory, as well as 'install.sh'

It doesn't matter where the 'serverFiles' directory is located, as long as you know the FULL location. '/home/${USER}/Downloads/serverFiles/' for example.

Next, you'll want to run 'install.sh' That will prompt you for where you want to install everything, and it will create the directory, and install all necessary files for you.

To create your first server, run 'newServer.sh' and that will prompt you what the name for the server will be, and everything else. You may want to ask for changes on server.properties, as the defaults I have may not be what you would like.

If you would like to create a snapshot server, run 'newSnapshotServer.sh' and it will do the same thing, running 'base.sh' after declaring proper runtime variables.
## Aliases
I recommend that you create some aliases to run the files that start/create your servers. Such as:
	
	alias server='bash /home/${USER}/Desktop/serverFiles/server.sh'
	alias servers='cd /home/${USER}/Desktop/minecraftServers/'

	alias newServer='bash /home/${USER}/Desktop/serverFiles/newServer.sh'
	alias newSnapshotServer='bash /home/${USER}/Desktop/serverFiles/newSnapshotServer.sh'
	alias newDownloadedServer='bash /home/${USER}/Desktop/serverFiles/newDownloadedServer.sh'
	alias newDownloadedSnapshotServer='bash /home/${USER}/Desktop/serverFiles/newDownloadedSnapshotServer.sh'

	alias serverFiles='cd /home/${USER}/Desktop/serverFiles/'
## Required Files
	regStart.sh
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
## Optional Files
	snapshotStart.sh
	sVUpdate.sh
	newSnapshotServer.sh
	newDownloadedSnapshotServer.sh
	
	regBukkitStart.sh
	newBukkitServer.sh
	newBukkitDownloadedServer
