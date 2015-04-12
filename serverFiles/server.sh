#!/bin/bash

server=$server_
export server

if [[ $OSTYPE = linux-gnu ]]; then
	sFiles="~/Minecraft-Servers/servers/serverFiles"
	dir="~/Minecraft-Servers/servers/minecraftServers"
elif [[ $OSTYPE = cygwin ]]; then
	WsFiles="~/Minecraft-Servers/serverFiles"
	Wdir="~/Minecraft-Servers/minecraftServers"
	sFiles=${WsFiles}
        dir=${Wdir}
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
