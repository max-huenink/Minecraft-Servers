#!/bin/bash

#Example of json syntax for operators
#echo '[{"uuid":"12345678-1234-1234-1234-123456789abc","name":"ign","level":4}]' >> ops.json
#Replace ign and the uuid "123456..." with your minecraft name and uuid

#Example of json syntax for whitelisted users
#echo '[{"uuid":"12345678-1234-1234-1234-123456789abc","name":"ign"}]' >> ops.json

#Separate users (which are defined by {}) with a comma
#So '[{"uuid":"test","name":"ign"},{"uuid":"test2","name":"ign2"}]

dots="bash ${sFiles}/dots.sh"
dots1="bash ${sFiles}/dots1.sh"
dots2="bash ${sFiles}/dots2.sh"
dots3="bash ${sFiles}/dots3.sh"
dots4="bash ${sFiles}/dots4.sh"
#dots* shows "..." between 'echo' commands.
#The "dir" variable is enherited from parent scripts "new*Server.sh"

if [[ $world = "" ]]; then
echo "What is the name of the new server?"
read world
fi
export world
#Gets server name, exports for child scripts that are used.


mkdir ${dir}/${world}
echo "Creating server directory: ${dir}/${world}"
${dots3}

cd ${dir}/${world}
echo "Changing directory to: ${dir}/${world}"
${dots3}

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
		${dots3}
	###################################
	########end server-icon.png########
	###################################

	#####################
	########jsons########
	#####################

		####ops.json####
		echo '[{"uuid":"1b7ffd7a-6c9a-463e-8910-60c7a531b2a4","name":"maxh76",level:4}]' >> ops.json
		echo "Creating ops.json"
		#Change the contents of '[]' to add someone to the op file.
		#Syntax at beginning of file
		${dots4}
		####end####

		####whitelist.json####
		echo '[{"uuid":"1b7ffd7a-6c9a-463e-8910-60c7a531b2a4","name":"maxh76"}]' >> whitelist.json
		echo "Creating whitelist.json"
		#Change the contents of '[]' to add someone to the whitelist
		#See example at beginning of file
		${dots4}
		####end####

		####banned-ips.json####
		echo '[]' >> banned-ips.json
		echo "Creating banned-ips.json"
		${dots4}
		####end####

		####banned-players.json####
		echo '[]' >> banned-players.json
		echo "Creating banned-players.json"
		${dots4}
		####end####

		####usercache.json####
		echo "Creating usercache.json"
		#The usercache contains everyone's UUID and IGN
		${dots4}
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
		echo "Changing level-name=world to level-name=${WORLD} in server.properties"
		sleep 0.8
		${dots3}
		####end####

		####Sets motd####
		echo "What would you like the MOTD to be?"
		sleep 0.1
		echo "Use this \\\\\\\\u00A7 for format codes."
		sleep 0.1
		echo "Black: 0 | Dark Blue: 1 | Dark Green: 2 | Dark Aqua: 3 | Dark Red: 4"
		sleep 0.1
		echo "Dark Purple: 5 | Gold: 6 | Gray: 7 | Dark Gray: 8 | Blue: 9 | Green: a"
		sleep 0.1
		echo "Aqua: b | Red: c | Light Purple: d | Yellow: e | White: f"
		sleep 0.1
		echo "Obfuscated: k | Bold: l | Strikethrough: s | Underline: n | Italic: o | Reset: r"
		sleep 0.1
		echo -n "motd="
		read MOTD
		sed -i "s|motd=A Minecraft Server|motd=${MOTD}|g" server.properties
		motd2=$(cat server.properties | grep motd=)
		echo "Editing motd to "${motd2}
		${dots3}
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

if [[ ${DOWNLOAD} = yes ]]; then
#Checks if the DOWNLOAD variable from parent script is set to yes
#Downloads world file if yes
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
fi
#Downloads world file

if [[ ${VERSION} = reg ]]; then
#Checks the version from the parent script
	################################################
	################regStartFiles.sh################
	################################################

		cp ${sFiles}/regStart.sh regStart.sh
		echo "Copying regStart.sh"
		${dots4}

		cp ${sFiles}/backupStart.sh backupStart.sh
		echo "Copying backupStart.sh"
		${dots4}

	if [[ ${DOWNLOAD} = yes ]]; then
		cp ${sFiles}/cleanStart.sh cleanStart.sh
		echo "Copying cleanStart.sh"
		${dots4}
	fi

		echo "regStart.sh" >> sType
		echo "Marking server as vanilla"
		${dots4}

		echo "Accepting EULA"
		echo "eula=true" >> eula.txt
		${dots4}

		sType=$(cat sType)
		echo "Starting server with ${sType}"
		${dots4}
		bash ${sFiles}/${sType}

	####################################################
	################end regStartFiles.sh################
	####################################################
elif [[ ${VERSION} = snap ]]; then
	#################################################
	################snapStartFiles.sh################
	#################################################

		cp ${sFiles}/snapshotStart.sh snapshotStart.sh
		echo "Copying snapshotStart.sh"
		${dots4}

		cp ${sFiles}/backupStart.sh backupStart.sh
		echo "Copying backupStart.sh"
		${dots4}

	if [[ ${DOWNLOAD} = yes ]]; then
		cp ${sFiles}/cleanStart.sh cleanStart.sh
		echo "Copying cleanStart.sh"
		${dots4}
	fi

		echo "snapshotStart.sh" >> sType
		echo "Marking server as snapshot"
		${dots4}

		echo "Accepting EULA"
		echo "eula=true" >> eula.txt
		${dots4}

		sType=$(cat sType)
		echo "Starting server with ${sType}"
		${dots4}
		bash ${sFiles}/${sType}

	#####################################################
	################end snapStartFiles.sh################
	#####################################################
elif [[ ${VERSION} = bukkit ]]; then
	######################################################
	#################BukkitStartFiles.sh##################
	######################################################

		cp ${sFiles}/regBukkitStart.sh regBukkitStart.sh
		echo "Copying regBukkitStart.sh"
		${dots4}

		cp ${sFiles}/backupBukkitStart.sh backupBukkitStart.sh
		echo "Copying backupBukkitStart.sh"
		${dots4}

	if [[ ${DOWNLOAD} = yes ]]; then
		cp ${sFiles}/cleanBukkitStart.sh cleanBukkitStart.sh
		echo "Copying cleanBukkitStart.sh"
		${dots4}
	fi

		echo "Accepting EULA"
		echo "eula=true" >> eula.txt
		${dots4}

		echo "Starting server with regBukkitStart.sh"
		${dots4}
		bash ${sFiles}/regBukkitStart.sh

	##########################################################
	##################end BukkitStartFiles.sh#################
	##########################################################
elif [[ ${VERSION} = forge ]]; then
	##########################################################
	####################forgeStartFiles.sh####################
	##########################################################

		cp -r ${sFiles}/forgeLibraries libraries/
		echo "Copying libraries to: ${dir}/libraries/"
		${dots4}

		mkdir mods
		echo "Making mods folder: ${dir}/mods/"
		${dots4}

		cp ${sFiles}/regForgeStart.sh regForgeStart.sh
		echo "Copying regForgeStart.sh"
		${dots4}

		cp ${sFiles}/backupForgeStart.sh backupForgeStart.sh
		echo "Copying backupForgeStart.sh"
		${dots4}

	if [[ ${DOWNLOAD} = yes ]]; then
		cp ${sFiles}/cleanForgeStart.sh cleanForgeStart.sh
		echo "Copying cleanForgeStart.sh"
		${dots4}
	fi

		echo "Accepting EULA"
		echo 'eula=true' >> eula.txt
		${dots4}

		echo "Starting server with regForgeStart.sh"
		${dots4}
		bash ${sFiles}/regForgeStart.sh
	#########################################################
	##################end forgeStartFiles.sh#################
	#########################################################
fi
