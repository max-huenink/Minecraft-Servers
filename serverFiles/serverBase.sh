#!/bin/sh

cd ${dir}
#Changes to directory of servers, defined in '*Server.sh'

if [[ ${server} = "" ]]; then
	ls -d --color=yes */
	#Lists all directories, with color.
	echo "Which server would you like to start?"
	echo -n "Server: "
	read server
fi

if [[ -e ${server} ]]; then
	cd ${server}
	echo ""
	ls -1 --color=yes *sh
	#Lists each sh file, one per line
	if [[ $sType = vanilla ]]; then
		echo "Which [type]Start.sh file would you like to use?"
		echo -n "Type: "
		read sh

		bash ${sh}Start.sh
		#Starts the correct Start.sh file
	elif [[ $sType = bukkit ]]; then
		echo "Which [type]BukkitStart.sh file would you like to use?"
		echo -n "Type: "
		read sh

		bash ${sh}BukkitStart.sh
		#Starts the correct Start.sh file
	elif [[ $sType = forge ]]; then
		echo "Which [type]ForgeStart.sh file would you like to use?"
		echo -n "Type: "
		read sh

		bash ${sh}ForgeStart.sh
		#Start the correct Start.sh file
	fi
elif [[ ${server} = new  ]]; then
	echo "Making a new Vanilla server."
	bash ${sFiles}/newServer.sh
elif [[ ${server} = newS || ${server} = newSnap || ${server} = newSnapshot  ]]; then
	echo "Making a new Snapshot server."
	bash ${sFiles}/newSnapshotServer.sh
elif [[ ${server} = newD || ${server} = newDown || ${server} = newDownload || ${server} = newDownloaded ]]; then
	echo "Making a new Downloaded Vanilla server."
	bash ${sFiles}/newDownloadedServer.sh
elif [[ ${server} = newDS || ${server} = newDownS || ${server} = newDownloadS || ${server} = newDownloadedS || ${server} = newDSnap || ${server} = newDownSnap || ${server} = newDownloadSnap || ${server} = newDownloadedSnap ]]; then
	echo "Making a new Downloaded Snapshot server."
	bash ${sFiles}/newDownloadedSnapshotServer.sh
else
	echo "Server ${server} does not exist, would you like to create it?"
	echo -n "Create? [y/n]: "
	read create
	if [[ ${create} = Y || ${create} = y || ${create} = yes || ${create} = Yes || ${create} = YES ]]; then
		echo "What type of server?"
		echo "Vanilla (v), Snapshot (s), Vanilla Downloaded (vd), Snapshot Downloaded (sd)?"
		read type
		if [[ ${type} = v || ${type} = V || ${type} = vanilla || ${type} = Vanilla || ${type} = VANILLA ]]; then
			echo "Making a new Vanilla server."
			bash ${sFiles}/newServer.sh
		elif [[ ${type} = s || ${type} = S || ${type} = snap || ${type} = snapshot || ${type} = Snap || ${type} = Snapshot ]]; then
			echo "Making a new Snapshot server."
			bash ${sFiles}/newSnapshotServer.sh
		elif [[ ${type} = vd || ${type} = vD || ${type} = VD || ${type} = Vd ]]; then
			echo "Making a new Downloaded Vanilla server."
			bash ${sFiles}/newDownloadedServer.sh
		elif [[ ${type} = sd || ${type} = sD || ${type} = SD || ${type} = Sd ]]; then
			echo "Making a new Downloaded Snapshot server."
			bash ${sFiles}/newDownloadedSnapshotServer.sh
		fi
	else
		#clear
		bash ${sFiles}/server.sh
	fi
fi
