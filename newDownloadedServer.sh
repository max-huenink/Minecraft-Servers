#!/bin/bash

dir=/home/${USER}/Desktop/minecraftServers
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

DOWNLOAD=yes
export DOWNLOAD
#The download variable
#Boolean: Tells if a world needs to be downloaded
#'yes' or 'no'
#Exported to child 'base.sh'

bash /home/${USER}/Desktop/serverFiles/base.sh
#Starts 'base.sh'
