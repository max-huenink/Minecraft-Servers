#!/bin/bash

sFiles="unknown"
if [[ $OSTYPE = "linux-gnu" ]]; then
        sFiles="/media/max/UNTITLED/servers/serverFiles"
elif [[ $OSTYPE = "cygwin" ]]; then
        sFiles="/cygdrive/e/servers/serverFiles"
fi

oldFV=$(cat ${sFiles}/fStart.sh | grep FV= | cut -c 4-40)
#Old minecraft version

echo "What is the name of the new vanilla minecraft version? e.g "${oldFV}
#Displays old version as an example for a minecraft version
read newFV

oldMFV=$(echo $oldFV | grep --color=yes - | cut -c -10)
#Old Minecraft Version compatible with Old Forge Version

newMFV=$(echo $newFV | grep --color=yes - | cut -c -10)
#New Minecraft Version compatible with new Forge Version

currentVV=$(cat ${sFiles}/fStart.sh | grep VV= | cut -c 4-40)
#Current Vanilla minecraft Vversion

cd ${sFiles}
#Changes directory to sFiles

wget -q --spider http://files.minecraftforge.net/maven/net/minecraftforge/forge/${newFV}/forge-${newFV}-universal.jar && remoteExist=yes || remoteExist=no
#Checks if the new version exists on the remote host
#remoteExist=yes if it does =no if it doesn't

if [[ ${remoteExist} = yes ]]; then
        if [[ ${oldMFV} != ${currentVV} ]]; then
                rm ${sFiles}/minecraft_server.${oldMFV}.jar
        fi
        rm ${sFiles}/forge-${oldFV}-universal.jar
        #Removes old version
        if [[ ! -e minecraft_server.${newMFV} ]]; then
                curl -#O https://s3.amazonaws.com/Minecraft.Download/versions/${newMFV}/minecraft_server.${newMFV}.jar
        elif [[ -e minecraft_server.${newMFV} ]]; then
                rm minecraft_server.${newMFV}
                curl -#O https://s3.amazonaws.com/Minecraft.Download/version/${newMFV}/minecraft_server.${newMFV}.jar
        if [[ ! -e forge-${newFV}-universal.jar ]]; then
                curl -#O http://files.minecraftforge.net/maven/net/minecraftforge/forge/${newFV}/forge-${newFV}-universal.jar
        elif [[ -e forge-${newFV}-universal.jar ]]; then
                rm forge-${newFV}-universal.jar
                curl -#O http://files.minecraftforge.net/maven/net/minecraftforge/forge/${newFV}/forge-${newFV}-universal.jar
        fi
        #Downloads new version
        sed -i "s|FV=${oldFV}|FV=${newFV}|g" ${sFiles}/fStart.sh
        #Updates start file to use the new version
        echo "Forge servers updated from ${oldFV} to ${newFV}"
else
        echo "Forge servers not update as forge-${newFV}-universal.jar does not exist"
fi
