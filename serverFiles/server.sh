#!/bin/bash

sFiles="/home/${USER}/Desktop/serverFiles"
#The directory for all server files

dir=/home/${USER}/Desktop/minecraftServers/
export dir
#The DIRectory variable
#Used to define the directory of minecraftServers, change as necessary.
#Exported to child 'serverBase.sh'

bash ${sFiles}/serverBase.sh
#Starts 'serverBase.sh'
