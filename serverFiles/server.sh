#!/bin/bash

dir=/home/${USER}/Desktop/minecraftServers/
export dir
#The DIRectory variable
#Used to define the directory of minecraftServers, change as necessary.
#Exported to child 'serverBase.sh'

bash /home/${USER}/Desktop/serverFiles/serverBase.sh
#Starts 'serverBase.sh'
