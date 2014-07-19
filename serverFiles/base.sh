#!/bin/bash

#Example of json syntax for operators
#echo '[{"uuid":"12345678-1234-1234-1234-123456789abc","name":"ign","level":4}]' >> ops.json
#Replace ign and the uuid "123456..." with your minecraft name and uuid

#Example of json syntax for whitelisted users
#echo '[{"uuid":"12345678-1234-1234-1234-123456789abc","name":"ign"}]' >> ops.json

#Separate users (which are defined by {}) with a comma
#So '[{"uuid":"test","name":"ign"},{"uuid":"test2","name":"ign2"}]

sFiles="/home/${USER}/Desktop/serverFiles"
#Directory for all server files
dots="bash ${sFiles}/dots.sh"
dots1="bash ${sFiles}/dots1.sh"
dots2="bash ${sFiles}/dots2.sh"
dots3="bash ${sFiles}/dots3.sh"
#dots* shows "..." between 'echo' commands.
#The "dir" variable is enherited from parent scripts "new*Server.sh"

echo "What is the name of the new server?"
read WORLD
export WORLD
#Gets server name, exports for child scripts that are used.

mkdir ${dir}/${WORLD}
echo "Creating server directory: ${dir}/${WORLD}"
${dots2}

cd ${dir}/${WORLD}
echo "Changing directory to: ${dir}/${WORLD}"
${dots2}

########################################
################files.sh################
########################################

	###############################
	########server-icon.png########
	###############################
		cp ${sFiles}/server-icon.png server-icon.png
		echo "Copying server-icon.png"
		#This server icon is the minecraft-logo
		#You can get any 64x64 image to be the server icon
		#As long as it is named "server-icon.png"
		${dots2}
	###################################
	########end server-icon.png########
	###################################

	#####################
	########jsons########
	#####################

		####ops.json####
		echo '["uuid":"1b7ffd7a-6c9a-463e-8910-60c7a531b2a4","name":"maxh76",level:4}]' >> ops.json
		echo "Creating ops.json"
		#Change the contents of '[]' to add someone to the op file.
		#Syntax at beginning of file
		${dots2}
		####end####

		####whitelist.json####
		echo '[]' >> whitelist.json
		echo "Creating whitelist.json"
		#Change the contents of '[]' to add someone to the whitelist
		#See example at beginning of file
		${dots2}
		####end####

		####banned-ips.json####
		echo '[]' >> banned-ips.json
		echo "Creating banned-ips.json"
		${dots2}
		####end####

		####banned-players.json####
		echo '[]' >> banned-players.json
		echo "Creating banned-players.json"
		${dots2}
		####end####

		####usercache.json####
		echo "Creating usercache.json"
		#The usercache contains everyone's UUID and IGN
		${dots2}
		####end####

	#########################
	########end jsons########
	#########################

	#################################
	########Server Properties########
	#################################

		####Creates server.properties file####
		bash ${sFiles}/sPropsCreate.sh
		#The file that creates 'server.properties'
		####end####

		####Sets level-name####
		sed -i "s|level-name=world|level-name=${WORLD}|g" server.properties
		echo "Changing level-name=world to level-name="${WORLD} "in server.properties"
		sleep 0.8
		${dots}
		####end####

		####Sets motd####
		echo "What would you like the MOTD to be?"
		sleep 0.5
		echo "Use this \\\\\\\\u00A7 for format codes."
		sleep 0.4
		echo "Black: 0 | Dark Blue: 1 | Dark Green: 2 | Dark Aqua: 3 | Dark Red: 4"
		sleep 0.4
		echo "Dark Purple: 5 | Gold: 6 | Gray: 7 | Dark Gray: 8 | Blue: 9 | Green: a"
		sleep 0.4
		echo "Aqua: b | Red: c | Light Purple: d | Yellow: e | White: f"
		sleep 0.4
		echo "Obfuscated: k | Bold: l | Strikethrough: s | Underline: n | Italic: o | Reset: r"
		sleep 0.4
		echo -n "motd="
		read MOTD
		sed -i "s|motd=A Minecraft Server|motd=${MOTD}|g" server.properties
		motd2=$(cat server.properties | grep motd=)
		echo "Editing motd to "${motd2}
		${dots2}
		####end####

	#####################################
	########end Server Properties########
	#####################################

#server-icon.png
#.json files
#server.properties file

############################################
################end files.sh################
############################################

if [ ${DOWNLOAD} = yes ]
#Checks if the DOWNLOAD variable from parent script is set to yes
#Downloads world file if yes
	then
		###########################################
		################download.sh################
		###########################################

			echo "What is the download URL?"
			echo -n "URL: "
			read URL

			wget -O file.zip ${URL}
			echo "Downloading file"

			unzip file.zip
			echo "Unzipping"

			FILE=$(unzip -l file.zip | sed -n 4p | cut -c 31-400)
			echo "Getting world name"
			${dots3}

			mv "${FILE}" ${WORLD}
			echo "Renaming world file to correct name"
			${dots3}

			rm file.zip
			echo "Removing downloaded file"
			${dots3}

			zip -r ${WORLD}.zip ${WORLD}
			echo "Zipping world file"

		###############################################
		################end download.sh################
		###############################################
else
sleep 0
fi
#Downloads world file

if [[ ${VERSION} = reg ]]
#Checks the version from the parent script
	then
		################################################
		################regStartFiles.sh################
		################################################

			ln -s ${sFiles}/regStart.sh
			echo "Copying regStart.sh"
			${dots3}

			ln -s ${sFiles}/backupStart.sh
			echo "Copying backupStart.sh"
			${dots3}

			ln -s ${sFiles}/cleanStart.sh
			echo "Copying cleanStart.sh"
			${dots3}

			echo "regStart.sh" >> sType
			echo "Marking server as vanilla"
			${dots3}

			echo "Accepting EULA"
			echo "eula=true" >> eula.txt
			${dots3}

			sType=$(cat sType)
			echo "Starting server with ${sType}"
			${dots3}
			bash ${sFiles}/${sType}

		####################################################
		################end regStartFiles.sh################
		####################################################
elif [[ ${VERSION} = snap ]]
	then
		#################################################
		################snapStartFiles.sh################
		#################################################

			ln -s ${sFiles}/snapshotStart.sh
			echo "Copying snapshotStart.sh"
			${dots3}

			ln -s ${sFiles}/backupStart.sh
			echo "Copying backupStart.sh"
			${dots3}

			ln -s ${sFiles}/cleanStart.sh
			echo "Copying cleanStart.sh"
			${dots3}

			echo "snapshotStart.sh" >> sType
			echo "Marking server as snapshot"
			${dots3}

			echo "Accepting EULA"
			echo "eula=true" >> eula.txt
			${dots3}

			sType=$(cat sType)
			echo "Starting server with ${sType}"
			${dots3}
			bash ${sFiles}/${sType}

		#####################################################
		################end snapStartFiles.sh################
		#####################################################
elif [ ${VERSION} = bukkit ]
	then
		######################################################
		################regBukkitStartFiles.sh################
		######################################################

			ln -s ${sFiles}/regBukkitStart.sh
			echo "Copying regBukkitStart.sh"
			${dots3}

			ln -s ${sFiles}/backupBukkitStart.sh
			echo "Copying backupBukkitStart.sh"
			${dots3}

			ln -s ${sFiles}/cleanBukkitStart.sh
			echo "Copying cleanBukkitStart.sh"
			${dots3}

			echo "Accepting EULA"
			echo "eula=true" >> eula.txt
			${dots3}

			echo "Starting server with regBukkitStart.sh"
			${dots3}
			bash ${sFiles}/regBukkitStart.sh

		##########################################################
		################end regBukkitStartFiles.sh################
		##########################################################


else
sleep 0
fi
#Copies start files for vanilla servers
#Marks server as vanilla
#Starts server
