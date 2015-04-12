#!/bin/bash
W=$(cat server.properties | grep level-name= | cut -c 12-40)
#Gets level-name
Z=$W"_$(date +%Y-%m-%d-%H.%M.%S).tar"
#Defines what the zip filename is
tar -cvf $Z $W
#Zips the world file (${W}) recursively to ${Z}
s=$(cat sType)
#Gets the startFile to start the server with
bash ${s}
#Starts the proper server
