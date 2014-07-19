#!/bin/bash

echo "Directories will be created if the do not exist."
sleep 1.5
echo "Please specify full locations i.e: /home/\${USER}/Desktop/serverFiles"
sleep 1.5

echo "Where would you like your serverFiles directory to be located?"
sleep 0.75
echo -n "serverFiles: "
read serverFiles

echo "Creating ${serverFiles}"
mkdir -P ${serverFiles}

echo "Where is the 'serverFiles' directory located?"
sleep 0.75
read location
mv ${location} ${serverFiles}
cd ${serverFiles}

echo "Where would you like your minecraftServers directory to be located?"
sleep 0.75
echo -n "minecraftServers: "
read minecraftServers

echo "Creating ${minecraftServers}"
mkdir -P ${minecraftServers}
vanilla=y

#VANILLA
if [[ ${vanilla} = y ]]
then
	sed -i "s|dir=\"/home/\${USER}/Desktop/minecraftServers\"|dir=${minecraftServers}|g" newServer.sh
	sed -i "s|sFiles=\"/home/\${USER}/Desktop/serverFiles\"|sFiles=${serverFiles}|g" newServer.sh newDownloadedServer.sh cleanStart.sh backupStart.sh regStart.sh server.sh vUpdate.sh
	bash ${serverFiles}/vUpdate.sh
else
sleep 0
fi
#END VANILLA

#SNAPSHOT
echo "Would you like to install snapshot servers as well? [y/n]"
sleep 0.75
read snapshot

if [[ ${snapshot} = y ]]
then
	sed -i "s|dir=\"/home/\${USER}/Desktop/minecraftServers\"|dir=${minecraftServers}|g" newSnapshotServer.sh
	sed -i "s|sFiles=\"/home/\${USER}/Desktop/serverFiles\"|sFiles=${serverFiles}|g" newSnapshotServer.sh newDownloadedSnapshotServer.sh snapshotStart.sh sVUpdate.sh
	bash ${serverFiles}sVUpdate.sh
else
sleep 0
fi
#END SNAPSHOT

#BUKKIT
echo "Would you like to install bukkit as well? [y/n]"
sleep 0.5
read bukkit

if [[ ${bukkit} = y ]]
then
	echo "Where would you like your bukkitServers directory to be located?"
	sleep 1.5
	echo -n "bukkitServers: "
	read bukkitServers

	echo "Creating ${bukkitServers}"
	mkdir -P ${bukkitServers}

	sed -i "s|dir=\"/home/\${USER}/Desktop/bukkitServers\"|dir=${bukkitServers}|g" newBukkitServer.sh
	sed -i "s|sFiles=\"/home/\${USER}/Desktop/serverFiles\"|sFiles=${serverFiles}|g" backupBukkitStart.sh cleanBukkitStart.sh regBukkitStart.sh bukkitServer.sh newBukkitServer.sh newDownloadedBukkitServer.sh
else
sleep 0
fi
#END BUKKIT
