#!/bin/bash

newVV=$newVV_

if [[ $OSTYPE = linux-gnu ]]; then
	sFiles="/media/max/UNTITLED/servers/serverFiles"
elif [[ $OSYTPE = cygwin ]]; then
	sFiles="/cygdrive/e/servers/serverFiles"
fi

oldVV=$(cat ${sFiles}/fStart.sh | grep VV= | cut -c 4-40)
#Old minecraft version

currentFV=$(cat ${sFiles}/fStart.sh | grep FV= | cut -c 4-40)
#Current Forge Version

currentSV=$(cat ${sFiles}/fStart.sh | grep SV= | cut -c 4-40)
#Current Snapshot Version

if [[ $newVV = "" ]]; then
echo "What is the name of the new vanilla minecraft version? e.g "${oldVV}
#Displays old version as an example for a minecraft version
read newVV
fi

cd ${sFiles}
#Changes directory to sFiles

wget -q --spider https://s3.amazonaws.com/Minecraft.Download/versions/${newVV}/minecraft_server.${newVV}.jar && remoteExist=yes || remoteExist=no
#Checks if the new version exists on the remote host
#remoteExist=yes if it does =no if it doesn't

if [[ ${remoteExist} = yes ]]
then
	if [[ ${oldVV} != ${currentFV} ]]; then
		rm ${sFiles}/minecraft_server.${oldVV}.jar
	fi
	#Removes old version
	if [[ ! -e minecraft_server.${newVV}.jar ]]; then
		curl -#O https://s3.amazonaws.com/Minecraft.Download/versions/${newVV}/minecraft_server.${newVV}.jar
	elif [[ -e minecraft_server.${newVV}.jar ]]; then
		rm minecraft_server.${newVV}.jar
		curl -#O https://s3.amazonaws.com/Minecraft.Download/version/${newVV}/minecraft_server.${newVV}.jar
	fi
	#Downloads new version
	sed -i "s|VV=${oldVV}|VV=${newVV}|g" ${sFiles}/fStart.sh
	#Updates start file to use the new version
	echo "Vanilla servers updated from ${oldVV} to ${newVV}"
else
	echo "Vanilla servers not update as minecraft_server.${newVV}.jar does not exist"
fi
