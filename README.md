Minecraft Servers Creation/Initialization
================
Files for creating/starting minecraft servers (both vanilla and snapshot versions interchangeably).

Suppot for forge servers may be coming soon, I need to figure out where forge gets its necessary libraries

These scripts only work on linux and windows (with cygwin installed). May work on Mac, has not been tested thoroughly.

Make sure to either run 'install.sh'

## Purpose

These scripts are for creating/starting minecraft servers; Vanilla, Snapshot, Bukkit (Out of commission as of August 24th, 2014), and Forge (Currently no 100% for sure setup for this, files not included).

I will take any suggestions on things that need to be improved/added/removed

If instructions are not very clear, please let me know.

## Installation/Initialization

To install, download entire repo

Next, you'll want to run 'install.sh' Make sure you are in the directory that install.sh is located in, or this may not work properly.

That will prompt you for where you want to install everything, and it will create the directory, and install all necessary files for you.

To create your first server, run 'newServer.sh' and that will prompt you what the name for the server will be, and everything else.

If you would like to create a snapshot server, run 'newSnapshotServer.sh' and it will do the same thing.

## Functions (~/.bash_functions)

Adding functions will help you run the files that start/create your servers much easier and faster.
	
	serverFiles() {
	        cd /media/max/UNTITLED/servers/serverFiles/
	       	if [[ $1 != "" ]]; then
       		nano /media/max/UNTITLED/servers/serverFiles/$1
        	fi
	}
	server() {
	        server_=$1
	        export server_
	        bash /media/max/UNTITLED/servers/serverFiles/server.sh
	}
	servers() {
	        cd /media/max/UNTITLED/servers/minecraftServers
	        if [[ -e $1 ]]; then
	        cd /media/max/UNTITLED/servers/minecraftServers/$1
	        fi
	}
	newServer() {
		world_=$1
		export world_
		bash /media/max/UNTITLED/servers/serverFiles/newServer.sh
	}
	newSnapshotServer() {
		world_=$1
		export world_
		bash /media/max/UNTITLED/servers/serverFiles/newSnapshotServer.sh
	}
	newDownloadedServer() {
		world_=$1
		export world_
		bash /media/max/UNTITLED/servers/serverFiles/newDownloadedServer.sh
	}
	newDownloadedSnapshotServer() {
		world_=$1
		export world_
		bash /media/max/UNTITLED/servers/serverFiles/newDownloadedSnapshotServer.sh
	}
	mcU() {
	        newVV_=$1
	        export newVV_
	        bash /media/max/UNTITLED/servers/serverFiles/vUpdate.sh
	}
	mcVU() {
	        newVV_=$1
	        export newVV_
	        bash /media/max/UNTITLED/server/serverFiles/vUpdate.sh
	}
	mcSU() {
	        newSV_=$1
	        export newSV_
	        bash /media/max/UNTITLED/servers/serverFiles/sVUpdate.sh
	}
	mcSVU() {
	        newSV_=$1
	        export newSV_
        	bash /media/max/UNTITLED/servers/serverFiles/sVUpdate.sh
	}

Copy and paste these into .bash_functions (may need to be created) and you will have to edit .bashrc to source .bash_functions

To edit .bashrc uncomment the following lines (or add them to the end of the file)

	if [ -f ~/.bash_functions ]; then
	    . ~/.bash_functions
	fi

##Language switch

I am learning python, a more versatile programming language that is usually installed on almost every computer, because that way no new programs such as cygwin for windows need to be installed.

Python works better and more integrally with each OS than bash does, which is native to linux.

Soon I will be converting all my scripts to python, and putting my bash scripts on a separate branch so they're still accessible.
