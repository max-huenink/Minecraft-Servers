#!/bin/bash

sFiles="unknown"
dir="unknown"
if [[ $OSTYPE = "linux-gnu" ]]; then
        sFiles="/media/max/UNTITLED/servers/serverFiles"
        dir="/media/max/UNTITLED/servers/forgeServers"
elif [[ $OSTYPE = "cygwin" ]]; then
        sFiles="/cygdrive/e/servers/serverFiles"
        dir="/cygdrive/e/servers/forgeServers"
fi

export dir
#The DIRectory variable
#Used to define the directory of minecraftServers, change as necessary.
#Exported to child 'serverBase.sh'

sType=forge
export sType

bash ${sFiles}/serverBase.sh
#Starts 'serverBase.sh'
