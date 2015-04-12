#!/bin/bash

echo "Current location for sFiles is: " ~/Minecraft-Servers/serverFiles
echo "Would you like to change it?"
echo -n "y/[N]: "
read schange
if [[ $schange = y || $schange = Y ]]; then
	echo "Where would you like sFiles to be located?"
	echo "Linux e.g: /home/johnsmith/Desktop/myServers/"
	echo "Windows(cygwin) e.g: /cygdrive/c/Users/John\ Smith/Desktop/myServers/"
	echo "\'serverFiles\' directory will be created"
	echo -n "Location: "
	read sloc
	mkdir -p ${sloc}
	mv ./serverFiles ${sloc}
	if [[ $OSTYPE = linux-gnu ]]; then
		sed -i "s|sFiles=\"~/Minecraft-Servers/serverFiles\"|sFiles=\"${sloc}/serverFiles\"|g" ${sloc}/serverFiles/*sh
	elif [[ $OSYPE = cygwin ]]; then
		sed -i "s|WsFiles=\"~/Minecraft-Servers/serverFiles\"|WsFiles=\"${sloc}/serverFiles\"|g" ${sloc}/serverFiles/*sh
fi
echo "Current location for servers is: " ~/Minecraft-Servers/minecraftServers
echo "Would you liek to change it?"
echo -n "y/[N]: "
read dchange
if [[ $dchange = y || $dchange = Y ]]; then
	echo "Where would you like servers to be located?"
	echo "Linux e.g: /home/johnsmith/Desktop/myServers/"
	echo "Windows(cygwin) e.g: /cygdrive/c/Users/John\ Smith/Desktop/myServers/"
	echo "\'minecraftServers\' director will be created"
	echo -n "Location: "
	read dloc
	mkdir -p ${dloc}/minecraftServers
	if [[ $OSTPYE = linux-gnu ]]; then
		sed -i "s|dir=\"~/Minecraft-Servers/minecraftServers\"|dir=\"${dloc}/minecraftServers\"|g" ${sloc}/serverFiles/*sh
	elif [[ $OSTYPE = cygwin ]]; then
		sed -i "s|dir=\"~/Minecraft-Servers/minecraftServers\"|dir=\"${dloc}/minecraftServers\"|g" ${sloc}/serverFiles/*sh
else
	mkdir ./minecraftServers
fi
