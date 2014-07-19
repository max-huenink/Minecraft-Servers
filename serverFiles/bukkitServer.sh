#!/bin/bash

sFiles="/home/${USER}/Desktop/serverFiles"
#The directory for all server files

dir=/home/max/Desktop/bukkitServers/
export dir
#The DIRectory variable
#Used to define the directory of bukkitServers, change as necessary.
#Is exported to child 'serverBase.sh'

bash ${sFiles}/serverBase.sh
#Starts 'serverBase.sh'
