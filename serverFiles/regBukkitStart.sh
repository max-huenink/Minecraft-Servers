#!/bin/sh
sFiles="/home/${USER}/Desktop/serverFiles"
V=-dev.1.7.10
#Version
java -Xmx1024M -jar ${sFiles}/craftbukkit-${V}.jar -o true
