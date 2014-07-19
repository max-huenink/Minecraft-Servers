#!/bin/bash
sFiles="/home/${USER}/Desktop/serverFiles"
V=14w29b
#Version
java -Xms1G -Xmx1G -jar ${sFiles}/minecraft_server.${V}.jar nogui
