#!/bin/bash
sFiles="/home/${USER}/Desktop/serverFiles"
V=1.7.9
#Version
java -Xms1G -Xmx1G -jar ${sFiles}/minecraft_server.${V}.jar nogui
