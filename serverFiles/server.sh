#!/bin/bash

server=$server_
export server

if [[ $OSTYPE = linux-gnu ]]; then
	sFiles="/media/max/UNTITLED/servers/serverFiles"
	dir="/media/max/UNTITLED/servers/minecraftServers"
elif [[ $OSTYPE = cygwin ]]; then
	sFiles="/cygdrive/e/servers/serverFiles"
	dir="/cygdrive/e/servers/minecraftServers"
fi

export sFiles
#The director for all server files

export dir
#The DIRectory variable
#Used to define the directory of minecraftServers, change as necessary.
#Exported to child 'serverBase.sh'

sType=vanilla
export sType

bash ${sFiles}/serverBase.sh
#Starts 'serverBase.sh'
