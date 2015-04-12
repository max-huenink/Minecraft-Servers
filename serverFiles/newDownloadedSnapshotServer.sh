#!/bin/bash

sFiles="unknown"
dir="unknown"
if [[ $OSTYPE = "linux-gnu" ]]; then
        sFiles="/media/max/UNTITLED/servers/serverFiles"
        dir="/media/max/UNTITLED/servers/minecraftServers"
elif [[ $OSTYPE = "cygwin" ]]; then
        sFiles="/cygdrive/e/servers/serverFiles"
        dir="/cygdrive/e/servers/minecraftServers"
fi

export sFiles
#The directory for all server files
#Is exported to child 'base.sh'

export dir
#The DIRectory variable
#Used to define the directory of the minecraftServers, change as necessary.
#Is exported to child 'base.sh'

VERSION=snap
export VERSION
#The version variable
#Used to define the current version
#'reg' 'snap' or 'bukkit'
#Is exported to child 'base.sh'

DOWNLOAD=yes
export DOWNLOAD
#The download variable
#Boolean: Tells if a world needs to be downloaded
#'yes' or 'no'
#Exported to child 'base.sh'

bash ${sFiles}/base.sh
#Starts 'base.sh'
