#!/bin/bash
echo "Would you like to make settings changes? [y/n]"
read SET
if [[ $SET = y ]]
	then
		clear
		echo '	op_perm_lvl="2"'
		sleep 0.3
		echo '		Operator Permission Level'
		sleep 0.4
		echo '		Value can be 1-4'
		echo '		'
		sleep 0.6
		echo '			1 - Ops can bypass spawn protection'
		echo '			'
		sleep 0.7
		echo '			2 - Ops can use /clear, /difficulty, /effect, /gamemode, /gamerule, /give, and /tp, and can edit command blocks'
		echo '			'
		sleep 0.7
		echo '			3 - Ops can use /ban, /deop, /kick, and /op'
		echo '			'
		sleep 0.7
		echo '			4 - Ops can use /stop'
		echo '			'
		echo -n 'op_perm_lvl='
			read s2
				if [[ $s2 = "1" ]]
					then
						s2=1
				elif [[ $s2 = "2" ]]
					then
						s2=2
				elif [[ $s2 = "3" ]]
					then
						s2=3
				elif [[ $s2 = "4" ]]
					then
						s2=4
				else
					s2=2
				fi
					op_perm_lvl=${s2}
		echo '	lvl_type="DEFAULT"'
		sleep 0.3
		echo '		The type of level that is generated'
		sleep 0.3
		echo '		Value can be:'
		echo '		'
		sleep 0.2
		echo '			DEFAULT - Standard world with hills, valleys, water, etc'
		echo '			'
		sleep 0.5
		echo '			FLAT - (Also known as superflat) A flat world with no features, meant for building, villages strongholds and netherfortresses still generate'
		echo '			'
		sleep 0.6
		echo '			LARGEBIOMES - Same as default but all biomes are larger'
		echo '			'
		sleep 0.7
		echo '			AMPLIFIED - Same as default but world-generation heigh limit is increased'
		echo '			'
		echo -n 'lvl_type='
			read s10
				if [[ $s10 = "DEFAULT" ]]
					then
						s10="DEFAULT"
				elif [[ $s10 = "default" ]]
					then
						s10="DEFAULT"
				elif [[ $s10 = "D" ]]
					then
						s10="DEFAULT"
				elif [[ $s10 = "d" ]]
					then
						s10="DEFAULT"
				elif [[ $s10 = "FLAT" ]]
					then
						s10="FLAT"
				elif [[ $s10 = "flat" ]]
					then
						s10="FLAT"
				elif [[ $s10 = "F" ]]
					then
						s10="FLAT"
				elif [[ $s10 = "f" ]]
					then
						s10="FLAT"
				elif [[ $s10 = "LARGEBIOMES" ]]
					then
						s10="LARGEBIOMES"
				elif [[ $s10 = "largebiomes" ]]
					then
						s10="LARGEBIOMES"
				elif [[ $s10 = "L" ]]
					then
						s10="LARGEBIOMES"
				elif [[ $s10 = "l" ]]
					then
						s10="LARGEBIOMES"
				elif [[ $s10 = "AMPLIFIED" ]]
					then
						s10="AMPLIFIED"
				elif [[ $s10 = "amplified" ]]
					then
						s10="AMPLIFIED"
				elif [[ $s10 = "A" ]]
					then
						s10="AMPLIFIED"
				elif [[ $s10 = "a" ]]
					then
						s10="AMPLIFIED"
				else
					s10="DEFAULT"
				fi
					lvl_type=${s10}
			echo '	force_gm="false"'
			sleep 0.3
			echo '		Force gamemode when user logs in'
			sleep 0.3
			echo '		Press the "ENTER" key for the default value that was given'
			sleep 0.4
			echo '		Value can be "true"/"false"'
			echo '		'
			echo -n 'force_gm='
				read s12
					if [[ $s12 = "true" ]]
						then
							s12="true"
					elif [[ $s12 = "false" ]]
						then
							s12="false"
					elif [[ $s12 = "t" ]]
						then
							s12="true"
					elif [[ $s12 = "f" ]]
						then
							s12="false"
					else
						s12="false"
					fi
						force_gm=${s12}
			echo '	seed=""'
			sleep 0.2
			echo '		The seed for the world'
			sleep 0.3
			echo '		Value can be anything as long as it is a valid minecraft seed'
			echo '		'
			echo -n 'seed='
				read s13
					seed=${s13}
			echo '	npc_spawns="true"'
			sleep 0.3
			echo '		NPC spawning'
			sleep 0.3
			echo '		Value can be "true"/"false"'
			echo '		'
			echo -n 'npc_spawns='
				read s16
					if [[ $s16 = "true" ]]
						then
							s16="true"
					elif [[ $s16 = "false" ]]
						then
							s16="false"
					elif [[ $s16 = "t" ]]
						then
							s16="true"
					elif [[ $s16 = "f" ]]
						then
							s16="false"
					else
						s16="true"
					fi
						npc_spawns=${s16}
			echo '	white_list="false"'
			sleep 0.25
			echo '		White listing'
			sleep 0.2
			echo '		Value can be "true"/"false"'
			echo '		'
			echo -n 'white_list='
				read s17
					if [[ $s17 = "true" ]]
						then
							s17="true"
					elif [[ $s17 = "false" ]]
						then
							s17="false"
					elif [[ $s17 = "t" ]]
						then
							s17="true"
					elif [[ $s17 = "f" ]]
						then
							s17="false"
					else
						s17="false"
					fi
						white_list=${s17}
			echo '	animal_spawns="true"'
			sleep 0.2
			echo '		Animal spawning'
			sleep 0.2
			echo '		Value can be "true"/"false"'
			echo '		'
			echo -n 'animal_spawns='
				read s18
					if [[ $s18 = "true" ]]
						then
							s18="true"
					elif [[ $s18 = "false" ]]
						then
							s18="false"
					elif [[ $s18 = "t" ]]
						then
							s18="true"
					elif [[ $s18 = "f" ]]
						then
							s18="false"
					else
						s18="true"
					fi
						animal_spawns=${s18}
			echo '	diff="1"'
			sleep 0.2
			echo '		Game difficulty'
			sleep 0.2
			echo '		Value can be:'
			echo '		'
			sleep 0.5
			echo '			0=Peaceful'
			echo '			'
			sleep 0.5
			echo '			1=Easy'
			echo '			'
			sleep 0.5
			echo '			2=Normal'
			echo '			'
			sleep 0.5
			echo '			3=Hard'
			echo '			'
			echo -n 'diff='
				read s24
					if [[ $s24 = "0" ]]
						then
							s24=0
					elif [[ $s24 = "1" ]]
						then
							s24=1
					elif [[ $s24 = "2" ]]
						then
							s24=2
					elif [[ $s24 = "3" ]]
						then
							s24=3
					else
						s24=1
					fi
						diff=${s24}
			echo '	idle_timeout="0"'
			sleep 0.2
			echo '		How long a player/user can be idle before being disconnected (in minutes)'
			sleep 0.3
			echo '		Value can be "n" (in minutes)'
			echo '		'
			echo -n 'idle_timeout='
				read s27_1
					if [[ $s27_1 != "" ]]
						then
							s27=${s27_1}
					else
						s27=0
					fi
						idle_timeout=${s27}
			echo '	gm="0"'
			sleep 0.2
			echo '		Gamemode'
			sleep 0.2
			echo '		Value can be:'
			echo '		'
			sleep 0.3
			echo '			0=Survival'
			echo '			'
			sleep 0.5
			echo '			1=Creative'
			echo '			'
			sleep 0.5
			echo '			2=Adventure'
			echo '			'
			sleep 0.5
			echo '			3=Spectator'
			echo '			'
			echo -n 'gm='
				read s26
					if [[ $s26 = 0 ]]
						then
							s26=0
					elif [[ $s26 = 1 ]]
						then
							s26=1
					elif [[ $s26 = 2 ]]
						then
							s26=2
					elif [[ $s26 = 3 ]]
						then
							s26=3
					else
						s26=0
					fi
						gm=${s26}
#			echo '	max_users="15"'
#			sleep 0.1
#			echo '		Maximum users/players allowed on the server'
#			sleep 0.1
#			echo '		Value can be "n"'
#			echo -n 'max_users='
#				read s28_1
#					if [[ $s28_1 != "" ]]
#						then
#							s28=${s28_1}
#					else
#						s28=15
#					fi
#						max_users=${s28}
						max_users=20
			echo '	monster_spawns="true"'
			sleep 0.3
			echo '		Monster spawning'
			sleep 0.3
			echo '		Value can be "true"/"false"'
			echo '		'
			echo -n 'monster_spawns='
				read s29
					if [[ $s29 = "true" ]]
						then
							29="true"
					elif [[ $s29 = "false" ]]
						then
							29="false"
					elif [[ $s29 = "t" ]]
						then
							29="true"
					elif [[ $s29 = "f" ]]
						then
							s29="false"
					else
						s29="true"
					fi
						monster_spawns=${29}
			echo '	struct_gen="true"'
			sleep 0.3
			echo '		Structure generation'
			sleep 0.2
			echo '		Value can be "true"/"false"'
			echo '		'
			echo -n 'struct_gen='
				read s30
					if [[ $s30 = "true" ]]
						then
							s30="true"
					elif [[ $s30 = "false" ]]
						then
							s30="false"
					elif [[ $s30 = "t" ]]
						then
							s30="true"
					elif [[ $s30 = "f" ]]
						then
							s30="false"
					else
						s30="true"
					fi
						struct_gen=${s30}
			echo '	spawn_protect="15"'
			sleep 0.3
			echo '		Spawn protection'
			sleep 0.3
			echo '		Value can be "n"'
			echo '		'
			echo -n 'spawn_protect='
				read s32_1
					if [[ $s32_1 != "" ]]
						then
							s32=${s32_1}
					else
						s32=15
					fi
						spawn_protect=${s32}
							> server.properties
								echo "#Minecraft server properties" >> server.properties

								echo "#$(date +%c)" >> server.properties

								echo "generator-settings=" >> server.properties

								echo "op-permission-level=${op_perm_lvl}" >> server.properties

								echo "level-name=world" >> server.properties

								echo "allow-flight=false" >> server.properties

								echo "announce-player-achievements=true" >> server.properties

								echo "server-port=25565" >> server.properties

								echo "max-world-size=29999984" >> server.properties

								echo "level-type=${lvl_type}" >> server.properties

								echo "force-gamemode=${force_gm}" >> server.properties

								echo "level-seed=${seed}" >> server.properties

								echo "server-ip=" >> server.properties

								echo "network-compression-threshold=256" >> server.properties

								echo "max-build-height=256" >> server.properties

								echo "spawn-npcs=${npc_spawns}" >> server.properties

								echo "white-list=${white_list}" >> server.properties

								echo "spawn-animals=${animal_spawns}" >> server.properties

								echo "snooper-enable=true" >> server.properties

								echo "online-mode=true" >> server.properties

								echo "resource-pack=" >> server.properties

								echo "pvp=true" >> server.properties

								echo "difficulty=${diff}" >> server.properties

								echo "enable-command-block=true" >> server.properties

								echo "player-idle-timeout=${idle_timeout}" >> server.properties

								echo "gamemode=${gm}" >> server.properties

								echo "max-players=${max_users}" >> server.properties

								echo "spawn-monsters=${monster_spawns}" >> server.properties

								echo "view-distance=10" >> server.properties

								echo "generate-structures=${struct_gen}" >> server.properties

								echo "spawn-protection=${spawn_protect}" >> server.properties

								echo "motd=A Minecraft Server" >> server.properties

	else
		echo 'Creating server.properties'
			op_perm_lvl="2"
			lvl_type="DEFAULT"
			force_gm="false"
			seed=""
			npc_spawns="true"
			white_list="false"
			animal_spawns="true"
			diff="1"
			idle_timeout="0"
			gm="0"
			max_users="20"
			monster_spawns="true"
			struct_gen="true"
			spawn_protect="15"
				> server.properties
						echo "#Minecraft server properties" >> server.properties

						echo "#$(date +%c)" >> server.properties

						echo "generator-settings=" >> server.properties

						echo "op-permission-level=${op_perm_lvl}" >> server.properties

						echo "level-name=world" >> server.properties

						echo "allow-flight=false" >> server.properties

						echo "announce-player-achievements=true" >> server.properties

						echo "server-port=25565" >> server.properties

						echo "max-world-size=29999984" >> server.properties

						echo "level-type=${lvl_type}" >> server.properties

						echo "level-seed=${seed}" >> server.properties

						echo "force-gamemode=${force_gm}" >> server.properties

						echo "server-ip=" >> server.properties

						echo "network-compression-threshold=256" >> server.properties

						echo "max-build-height=256" >> server.properties

						echo "spawn-npcs=${npc_spawns}" >> server.properties

						echo "white-list=${white_list}" >> server.properties

						echo "spawn-animals=${animal_spawns}" >> server.properties

						echo "snooper-enable=true" >> server.properties

						echo "online-mode=true" >> server.properties

						echo "resource-pack=" >> server.properties

						echo "pvp=true" >> server.properties

						echo "difficulty=${diff}" >> server.properties

						echo "enable-command-block=true" >> server.properties

						echo "gamemode=${gm}" >> server.properties

						echo "player-idle-timeout=${idle_timeout}" >> server.properties

						echo "max-players=${max_users}" >> server.properties

						echo "spawn-monsters=${monster_spawns}" >> server.properties

						echo "view-distance=10" >> server.properties

						echo "generate-structures=${struct_gen}" >> server.properties

						echo "spawn-protection=${spawn_protect}" >> server.properties

						echo "motd=A Minecraft Server" >> server.properties

fi
