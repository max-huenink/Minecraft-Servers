#!/bin/bash

W=$(cat server.properties | grep level-name= | cut -c 12-40)
#Gets level-name
Z=$W"_$(date +%d-%m-%Y-%H:%M:%S).zip"
#Defines what the zip filename should be
zip -r ${Z} ${W}
#Zips the world file (${W})recursively to ${Z}
bash /home/${USER}/Desktop/serverFiles/regBukkitStart.sh
#Starts the server
