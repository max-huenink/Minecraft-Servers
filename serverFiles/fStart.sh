#!/bin/bash
VV=1.8.1
#Vanilla Version
SV=1.8.2-pre6
#Snapshot Version
#BV=dev.1.7.10
#Bukkit Version
FV=1.8-11.14.0.1290-1.8
#Forge Version
if [[ $sType = snap ]]; then
        if [[ $OSTYPE = linux-gnu ]]; then
                java -jar /media/max/UNTITLED/servers/serverFiles/minecraft_server.${SV}.jar nogui
        elif [[ $OSTYPE = cygwin ]]; then
                java -jar E:\\servers\\serverFiles\\minecraft_server.${SV}.jar nogui
        fi
elif [[ $sType = reg ]]; then
        if [[ $OSTYPE = linux-gnu ]]; then
                java -jar /media/max/UNTITLED/servers/serverFiles/minecraft_server.${VV}.jar nogui
        elif [[ $OSTYPE = cygwin ]]; then
                java -jar E:\\servers\\serverFiles\\minecraft_server.${VV}.jar nogui
        fi
elif [[ $sType = bukkit ]]; then
        if [[ $OSTYPE = gnu-linux ]]; then
#               java -jar /media/max/UNTITLED/servers/serverFiles/craftbukkit-${BV}.jar -o true nogui
                sleep 0
        elif [[ $OSTYPE = cygwin ]]; then
#               java -jar E:\\servers\\serverFiles\\craftbukkit-${BV}.jar -o true nogui
                sleep 0
        fi
        echo "Bukkit server compatability with these scripts is incomplete [1/25/15]"
        echo "For now you have to manually maintain bukkit servers"
        echo "Sorry for the inconvenience."
elif [[ $sType = forge ]]; then
        if [[ $OSTYPE = gnu-linux ]]; then
                java -jar /media/max/UNTITLED/servers/serverFiles/forge-${FV}-universal.jar nogui
        elif [[ $OSTYPE = cygwin ]]; then
                java -jar E:\\servers\\serverFiles\\forge-${FV}-universal.jar nogui
        fi
fi
