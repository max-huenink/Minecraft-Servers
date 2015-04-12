#!/bin/bash

VV=1.8.3
#Vanilla Version

SV=15w14a
#Snapshot Version

#BV=dev.1.7.10
#Bukkit Version

FV=1.7.10-10.13.3.1358-1.7.10
#Forge Version

MFV=1.7.10
#Minecraft Forge Version

if [[ $sType = snap ]]; then
	if [[ $OSTYPE = linux-gnu ]]; then
		java -jar ~/Minecraft-Servers/serverFiles/minecraft_server.${SV}.jar nogui
	elif [[ $OSTYPE = cygwin ]]; then
		java -jar C:\\Users\\${USR}\\Minecraft-Servers\\serverFiles\\minecraft_server.${SV}.jar nogui
	fi
elif [[ $sType = reg ]]; then
	if [[ $OSTYPE = linux-gnu ]]; then
		java -jar ~/Minecraft-Servers/serverFiles/minecraft_server.${VV}.jar nogui
	elif [[ $OSTYPE = cygwin ]]; then
		java -jar C:\\Users\\${USR}\\Minecraft-Servers\\serverFiles\\minecraft_server.${VV}.jar nogui
	fi
elif [[ $sType = bukkit ]]; then
#	if [[ $OSTYPE = linux-gnu ]]; then
#		java -jar ~/Minecraft-Servers/serverFiles/craftbukkit-${BV}.jar -o true nogui
#	elif [[ $OSTYPE = cygwin ]]; then
#		java -jar C:\\Users\\${USR}\\Minecraft-Servers\\serverFiles\\craftbukkit-${BV}.jar -o true nogui
	echo "Bukkit server compatability with these scripts is incomplete [1/25/15]"
	echo "For now you have to manually maintain bukkit servers"
	echo "Sorry for the inconvenience."
elif [[ $sType = forge ]]; then
	if [[ $OSTYPE = linux-gnu ]]; then
		java -jar ~/Minecraft-Servers/serverFiles/forge-${FV}-universal.jar nogui
	elif [[ $OSTYPE = cygwin ]]; then
		java -jar C:\\Users\\${USR}\\Minecraft-Servers\\serverFiles\\forge-${FV}-universal.jar nogui
	fi
fi
