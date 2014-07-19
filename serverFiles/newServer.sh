#!/bin/bash

sFiles="/home/${USER}/Desktop/serverFiles"
export sFiles
#The directory for all server files
#Is exported to child 'base.sh'

dir="/home/${USER}/Desktop/minecraftServers"
export dir
#The DIRectory variable
#Used to define the directory of the minecraftServers, change as necessary.
#Is exported to child 'base.sh'

VERSION=reg
export VERSION
#The version variable
#Used to define the current version
#'reg' 'snap' or 'bukkit'
#Is exported to child 'base.sh'

DOWNLOAD=no
export DOWNLOAD
#The download variable
#Boolean: Tells if a world needs to be downloaded
#'yes' or 'no'
#Exported to child 'base.sh'

bash ${sFiles}/base.sh
#Starts 'base.sh'
