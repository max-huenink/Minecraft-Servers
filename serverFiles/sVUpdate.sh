#!/bin/bash

newSV=$newSV_

if [[ $OSTYPE = linux-gnu ]]; then
	sFiles="~/Minecraft-Servers/serverFiles"
elif [[ $OSTYPE = cygwin ]]; then
	WsFiles="~/Minecraft-Servers/serverFiles"
	sFiles=${WsFiles}
fi

#directory of serverFiles

oldSV=$(cat ${sFiles}/fStart.sh | grep SV= | cut -c 4-40)
#Old Snapshot Version

currentVV=$(cat ${sFiles}/fStart.sh | grep VV= | cut -c 4-40)
#Current Vanilla minecraft Version

if [[ $newSV = "" ]]; then
echo "What is the name of the new snapshot? e.g "${oldSV}
#Displays old version as an example for a minecraft version
read newSV
fi

cd ${sFiles}
#Changes directory to serverFiles

wget -q --spider https://s3.amazonaws.com/Minecraft.Download/versions/${newSV}/minecraft_server.${newSV}.jar && remoteExist=yes || remoteExist=no
#Checks if the new version exists on the remote host
#remoteExist=yes if it does, =no if it doesn't

if [[ ${remoteExist} = yes ]]
then
	if [[ ${oldSV} != ${currentVV} ]]; then
		rm ${sFiles}/minecraft_server.${oldSV}.jar
	fi
	#Removes old version
	if [[ ! -e minecraft_server.${newSV}.jar ]]; then
		curl -#O https://s3.amazonaws.com/Minecraft.Download/versions/${newSV}/minecraft_server.${newSV}.jar
	elif [[ -e minecraft_server.${newSV}.jar ]]; then
		rm minecraft_server.${newSV}.jar
		curl -#O https://s3.amazonaws.com/Minecraft.Download/versions/${newSV}/minecraft_server.${newSV}.jar
	fi
	#Downloads new version
	sed -i "s|SV=${oldSV}|SV=${newSV}|g" ${sFiles}/fStart.sh
	#Updates start file to use the new version
	echo "Snapshot servers update from ${oldSV} to ${newSV}"
else
	echo "Snapshot servers not updated as minecraft_server.${newSV}.jar does not exist"
fi
