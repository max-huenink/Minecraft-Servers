minecraft-server
================
Files for creating/starting minecraft servers (vanilla and snapshot), as well as bukkit servers.
## Purpose
These scripts are for creating/starting minecraft servers (both vanilla and snapshot versions), as well as bukkit servers.

I will take any suggestions on things that need to be improved/added/removed

If instructions are not very clear, please let me know. This is the first time I have done anything like this.
## Installation/Initialization
You need to make sure that you have the directory structure setup correctly. You can change the scripts to have the correct 'minecraftServers' and serverFiles' directories setup. But as of right now, I do not have a script to change everything for you. I will be working on that eventually.

All Minecraft (Vanilla and Snapshot) servers will go in "/home/${USER}/Desktop/minecraftServers" you can change that if you wish. But you will have to change the variable 'dir' in each script.

All server files, 'regStart.sh newServer.sh etc.' will go in "/home/${USER}/Desktop/serverFiles" you can change that if you wish. But again, you wil have to change the variable 'sFiles' in each script.

Some scripts don't have a 'dir' or 'sFiles' variable because the directory is only used once, I will change that soon.

Once you have that inplace, download all required files (listed below) if you haven't already. Then you should run 'vUpdate.sh' and enter the most recent minecraft version '1.x.x' and the same for sVUpdate if you want to install snapshot servers.

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
