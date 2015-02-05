#!/bin/bash

sFiles="null"
dir="null"
if [[ $OSTYPE = "linux-gnu" ]]; then
        sFiles="/media/max/UNTITLED/servers/serverFiles"
        dir="/media/max/UNTITLED/servers/bukkitServers"
elif [[ $OSTYPE = "cygwin" ]]; then
        sFiles="/cygdrive/e/servers/serverFiles"
        dir="/cygdrive/e/servers/bukkitServers"
fi

export dir
#The DIRectory variable
#Used to define the directory of bukkitServers, change as necessary.
#Is exported to child 'serverBase.sh'

sType=bukkit
export sType

bash ${sFiles}/serverBase.sh
#Starts 'serverBase.sh'
