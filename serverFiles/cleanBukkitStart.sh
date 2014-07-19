#!/bin/sh

sFiles="/home/${USER}/Desktop/serverFiles"

W=$(cat server.properties | grep level-name= | cut -c 12-40)
#Gets level-name
rm -r $W
#Removes world file and contents
unzip $W.zip
#Unzips the world
bash ${sFiles}/regBukkitStart.sh
#Starts the server
