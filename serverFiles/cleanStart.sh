#!/bin/sh

W=$(cat server.properties | grep level-name= | cut -c 12-40)
#Gets level-name
rm -r $W
#Removes world file and contents
unzip $W.zip
#Unzips the world
s=$(cat sType)
#Gets the startFile to start the server with
bash /home/max/Desktop/serverFiles/${s}
#Starts the proper server
