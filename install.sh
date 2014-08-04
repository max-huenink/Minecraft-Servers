#!/bin/bash

echo "Directories will be created if the do not exist."
sleep 1.5
echo "Given folder will be appended: i.e \'/serverFiles\'"
sleep 1.5

echo "Where would you like your serverFiles directory to be located?"
sleep 0.5
echo "Example: ~/Desktop"
echo -n "serverFiles: "
read dir
serverFiles="${dir}/serverFiles"

echo ""
echo ""
echo "Where is \'Minecraft-Servers-master\' located?"
sleep 0.5
echo "Example: ~/Desktop"
echo -n "Repo: "
read location

repo="${location}/Minecraft-Servers-master/serverFiles"
echo ""
echo ""
echo "Moving ${repo} to ${serverFiles}"
eval mv ${repo} ${serverFiles}
eval cd ${serverFiles}

echo "Where would you like your minecraftServers directory to be located?"
sleep 0.5
echo "Example: ~/Desktop"
echo -n "minecraftServers: "
read mServers
minecraftServers="${mServers}/minecraftServers"

echo ""
echo ""
echo "Creating ${minecraftServers}"
eval mkdir -p ${minecraftServers}
vanilla=y

#VANILLA
if [[ ${vanilla} = y ]]
then
#START DIR
    mv newDownloadedServer.sh newDownloadedServer.sh2 && sed "s|dir=\"/home/\${USER}/Desktop/minecraftServers\"|dir=${minecraftServers}|g" newDownloadedServer.sh2 >> newDownloadedServer.sh && rm newDownloadedServer.sh2

    mv newServer.sh newServer.sh2 && sed "s|dir=\"/home/\${USER}/Desktop/minecraftServers\"|dir=${minecraftServers}|g" newServer.sh2 >> newServer.sh && rm newServer.sh2

    mv server.sh server.sh2 && sed "s|dir=\"/home/\${USER}/Desktop/minecraftServers\"|dir=${minecraftServers}|g" server.sh2 >> server.sh && rm server.sh2
#END DIR
#START SFILES
    mv backupStart.sh backupStart.sh2 && sed "s|sFiles=\"/home/\${USER}/Desktop/serverFiles\"|sFiles=${serverFiles}|g" backupStart.sh2 >> backupStart.sh && rm backupStart.sh2

    mv cleanStart.sh cleanStart.sh2 && sed "s|sFiles=\"/home/\${USER}/Desktop/serverFiles\"|sFiles=${serverFiles}|g" cleanStart.sh2 >> cleanStart.sh && rm cleanStart.sh2

    mv newServer.sh newServer.sh2 && sed "s|sFiles=\"/home/\${USER}/Desktop/serverFiles\"|sFiles=${serverFiles}|g" newServer.sh2 >> newServer.sh && rm newServer.sh2

    mv newDownloadedServer.sh newDownloadedServer.sh2 && sed "s|sFiles=\"/home/\${USER}/Desktop/serverFiles\"|sFiles=${serverFiles}|g" newDownloadedServer.sh2 >> newDownloadedServer.sh && rm newDownloadedServer.sh2

    mv regStart.sh regStart.sh2 && sed "s|sFiles=\"/home/\${USER}/Desktop/serverFiles\"|sFiles=${serverFiles}|g" regStart.sh2 >> regStart.sh && rm regStart.sh2

    mv server.sh server.sh2 && sed "s|sFiles=\"/home/\${USER}/Desktop/serverFiles\"|sFiles=${serverFiles}|g" server.sh2 >> server.sh && rm server.sh2

    mv vUpdate.sh vUpdate.sh2 && sed "s|sFiles=\"/home/\${USER}/Desktop/serverFiles\"|sFiles=${serverFiles}|g" vUpdate.sh2 >> vUpdate.sh && rm vUpdate.sh2
#END SFILES
	echo ""
	echo ""
	eval bash ${serverFiles}/vUpdate.sh
else
sleep 0
fi
#END VANILLA
clear
#SNAPSHOT
echo "Would you like to install snapshot servers as well? [y/n]"
echo -n "snapshot: "
read snapshot

if [[ ${snapshot} = y ]]
then
#START DIR
    mv newDownloadedSnapshotServer.sh newDownloadedSnapshotServer.sh2 && sed "s|dir=\"/home/\${USER}/Desktop/minecraftServers\"|dir=${minecraftServers}|g" newDownloadedSnapshotServer.sh2 >> newDownloadedSnapshotServer.sh && rm newDownloadedSnapshotServer.sh2

    mv newSnapshotServer.sh newSnapshotServer.sh2 && sed "s|dir=\"/home/\${USER}/Desktop/minecraftServers\"|dir=${minecraftServers}|g" newSnapshotServer.sh2 >> newSnapshotServer.sh && rm newSnapshotServer.sh2
#END DIR
#START SFILES
    mv newDownloadedSnapshotServer.sh newDownloadedSnapshotServer.sh2 && sed "s|sFiles=\"/home/\${USER}/Desktop/serverFiles\"|sFiles=${serverFiles}|g" newDownloadedSnapshotServer.sh2 >> newDownloadedSnapshotServer.sh && rm newDownloadedSnapshotServer.sh2

    mv newSnapshotServer.sh newSnapshotServer.sh2 && sed "s|sFiles=\"/home/\${USER}/Desktop/serverFiles\"|sFiles=${serverFiles}|g" newSnapshotServer.sh2 >> newSnapshotServer.sh && rm newSnapshotServer.sh2

    mv sVUpdate.sh sVUpdate.sh2 && sed "s|sFiles=\"/home/\${USER}/Desktop/serverFiles\"|sFiles=${serverFiles}|g" sVUpdate.sh2 >> sVUpdate.sh && rm sVUpdate.sh2

    mv snapshotStart.sh snapshotStart.sh2 && sed "s|sFiles=\"/home/\${USER}/Desktop/serverFiles\"|sFiles=${serverFiles}|g" snapshotStart.sh2 >> snapshotStart.sh && rm snapshotStart.sh2
#END SFILES
	echo ""
	echo ""
	eval bash ${serverFiles}/sVUpdate.sh
else
sleep 0
fi
#END SNAPSHOT
clear
#BUKKIT
echo "Would you like to install bukkit as well? [y/n]"
echo -n "bukkit: "
read bukkit

if [[ ${bukkit} = y ]]
then
	echo "Where would you like your bukkitServers directory to be located?"
	sleep 0.5
	echo "Example: ~/Desktop"
	echo -n "bukkitServers: "
	read bServers
	bukkitServers="${bServers}/bukkitServers"

	echo ""
	echo ""
	echo "Creating ${bukkitServers}"
	eval mkdir -p ${bukkitServers}

#START DIR
    mv bukkitServer.sh bukkitServer.sh2 && sed "s|dir=\"/home/\${USER}/Desktop/bukkitServers\"|dir=${bukkitServers}|g" bukkitServer.sh2 >> bukkitServer.sh && rm bukkitServer.sh2

    mv newBukkitServer.sh newBukkitServer.sh2 && sed "s|dir=\"/home/\${USER}/Desktop/bukkitServers\"|dir=${bukkitServers}|g" newBukkitServer.sh2 >> newBukkitServer.sh && rm newBukkitServer.sh2

    mv newDownloadedBukkitServer.sh newDownloadedBukkitServer.sh2 && sed "s|dir=\"/home/\${USER}/Desktop/bukkitServers\"|dir=${bukkitServers}|g" newDownloadedBukkitServer.sh2 >> newDownloadedBukkitServer.sh && rm newDownloadedBukkitServer.sh2
#END DIR
#START SFILES
    mv backupBukkitStart.sh backupBukkitStart.sh2 && sed "s|sFiles=\"/home/\${USER}/Desktop/serverFiles\"|sFiles=${serverFiles}|g" backupBukkitStart.sh2 >> backupBukkitStart.sh && rm backupBukkitStart.sh2

    mv bukkitServer.sh bukkitServer.sh2 && sed "s|sFiles=\"/home/\${USER}/Desktop/serverFiles\"|sFiles=${serverFiles}|g" bukkitServer.sh2 >> bukkitServer.sh && rm bukkitServer.sh2

    mv cleanBukkitStart.sh cleanBukkitStart.sh2 && sed "s|sFiles=\"/home/\${USER}/Desktop/serverFiles\"|sFiles=${serverFiles}|g" cleanBukkitStart.sh2 >> cleanBukkitStart.sh && rm cleanBukkitStart.sh2

    mv newBukkitServer.sh newBukkitServer.sh2 && sed "s|sFiles=\"/home/\${USER}/Desktop/serverFiles\"|sFiles=${serverFiles}|g" newBukkitServer.sh2 >> newBukkitServer.sh && rm newBukkitServer.sh2

    mv newDownloadedBukkitServer.sh newDownloadedBukkitServer.sh2 && sed "s|sFiles=\"/home/\${USER}/Desktop/serverFiles\"|sFiles=${serverFiles}|g" newDownloadedBukkitServer.sh2 >> newDownloadedBukkitServer.sh && rm newDownloadedBukkitServer.sh2

    mv regBukkitStart.sh regBukkitStart.sh2 && sed "s|sFiles=\"/home/\${USER}/Desktop/serverFiles\"|sFiles=${serverFiles}|g" regBukkitStart.sh2 >> regBukkitStart.sh && rm regBukkitStart.sh2
#END SFILES
else
sleep 0
fi
#END BUKKIT
echo "Would you like to create a new server right away? [y/n]"
echo -n "New Server: "
read new
if [[ $new = y ]]
then
	eval bash ${serverFiles}/newServer.sh
else
sleep 0
fi
