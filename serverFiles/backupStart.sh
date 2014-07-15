#!/bin/bash

W=$(cat server.properties | grep level-name= | cut -c 12-40)
#Gets level-name
Z=$W"_$(date +%d-%m-%Y-%H:%M:%S).zip"
#Defines what the zip filename is
zip -r $Z $W
#Zips the world file (${W}) recursively to ${Z}
s=$(cat sType)
#Gets the startFile to start the server with
bash /home/${USER}/Desktop/serverFiles/${s}
#Starts the proper server
