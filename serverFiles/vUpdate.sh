#!/bin/bash

sFiles="/home/${USER}/Desktop/serverFiles"
#directory of serverFiles

oldV=$(cat ${sFiles}/regStart.sh | grep v= | cut -c 3-40)
#Old minecraft version

echo "What is the name of the new vanilla minecraft version? e.g "${oldV}
#Displays old version as an example for a minecraft version
read newV

cd ${sFiles}
#Changes directory to minecraftServers

wget -q --spider https://s3.amazonaws.com/Minecraft.Download/versions/${newV}/minecraft_server.${newV}.jar && exist=yes || exist=no
#Checks if the new version exists yet
#exist=yes if it does =no if it doesn't

if [[ ${exist} = yes ]]
then
	rm ${sFiles}/minecraft_server.${oldV}.jar
	#Removes old version
	wget https://s3.amazonaws.com/Minecraft.Download/versions/${newV}/minecraft_server.${newV}.jar
	#Downloads new version
	sed -i "s|V=${oldV}|V=${newV}|g" ${sFiles}/regStart.sh
	#Updates start file to use the new version
	echo "Vanilla servers updated from ${oldV} to ${newV}"
else
	echo "Vanilla servers not update as minecraft_server.${newV}.jar does not exist"
fi
