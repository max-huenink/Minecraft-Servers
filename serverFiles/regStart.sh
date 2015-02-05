#!/bin/bash
sType=reg
export sType

if [[ $OSTYPE = linux-gnu ]]; then
        bash /media/max/UNTITLED/servers/serverFiles/fStart.sh
elif [[ $OSTYPE = cygwin ]]; then
        bash /cygdrive/e/servers/serverFiles/fStart.sh
fi
