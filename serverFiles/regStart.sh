#!/bin/bash
sType=reg
export sType

if [[ $OSTYPE = linux-gnu ]]; then
	bash ~/Minecraft-Servers/serverFiles/fStart.sh
elif [[ $OSTYPE = cygwin ]]; then
	bash ~/Minecraft-Servers/serverFiles/fStart.sh
fi
