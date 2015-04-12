#!/bin/bash
echo "Would you like to make settings changes? [y/n]"
read changes
op_perm(){
	echo '	op_perm_lvl="1"'
	sleep 0.1
	echo '		Operator Permission Level'
	sleep 0.1
	echo '		Value can be 1-4'
	echo '		'
	sleep 0.1
	echo '			1 - Ops can bypass spawn protection'
	echo '			'
	sleep 0.1
	echo '			2 - Ops can use /clear, /difficulty, /effect, /gamemode, /gamerule, /give, and /tp, and can edit command blocks'
	echo '			'
	sleep 0.1
	echo '			3 - Ops can use /ban, /deop, /kick, and /op'
	echo '			'
	sleep 0.1
	echo '			4 - Ops can use /stop'
	echo '			'
	echo -n 'op_perm_lvl='
		read s2
			if [[ $s2 = "1" ]]; then
				s2=1
			elif [[ $s2 = "2" ]]; then
				s2=2
			elif [[ $s2 = "3" ]]; then
				s2=3
			elif [[ $s2 = "4" ]]; then
				s2=4
			else
				s2=1
			fi
				op_perm_lvl=${s2}
}
lvl_type(){
	echo '	lvl_type="DEFAULT"'
	sleep 0.1
	echo '		The type of level that is generated'
	sleep 0.1
	echo '		Value can be:'
	echo '		'
	sleep 0.1
	echo '			DEFAULT - Standard world with hills, valleys, water, etc'
	echo '			'
	sleep 0.1
	echo '			FLAT - (Also known as superflat) A flat world with no features, meant for building, villages strongholds and netherfortresses still generate'
	echo '			'
	sleep 0.1
	echo '			LARGEBIOMES - Same as default but all biomes are larger'
	echo '			'
	sleep 0.1
	echo '			AMPLIFIED - Same as default but world-generation heigh limit is increased'
	echo '			'
	echo -n 'lvl_type='
		read s10
			if [[ $s10 = "DEFAULT" || $s10 = "default" || $s10 = "D" || $s10 = "d" ]]; then
				s10="DEFAULT"
			elif [[ $s10 = "FLAT" || $s10 = "flat" || $s10 = "F" || $s10 = "f" ]]; then
				s10="FLAT"
			elif [[ $s10 = "LARGEBIOMES" || $s10 = "largebiomes" || $s10 = "L" || $s10 = "l" ]]; then
				s10="LARGEBIOMES"
			elif [[ $s10 = "AMPLIFIED" || $s10 = "amplified" || $s10 = "A" || $s10 = "a" ]]; then
				s10="AMPLIFIED"
			else
				s10="DEFAULT"
			fi
				lvl_type=${s10}
}
seed(){
	echo '	seed=""'
	sleep 0.1
	echo '		The seed for the world'
	sleep 0.2
	echo '		Value can be anything as long as it is a valid minecraft seed'
	echo ''
	echo -n 'seed='
		read s11
			seed=${s11}
}
force_gm(){
	echo '	force_gm="false"'
	sleep 0.1
	echo '		Force gamemode when user logs in'
	sleep 0.1
	echo '		Press the "ENTER" key for the default value that was given'
	sleep 0.1
	echo '		Value can be "true"/"false"'
	echo '		'
	echo -n 'force_gm='
		read s12
			if [[ $s12 = "TRUE" || $s12 = "true" || $s12 = "T" || $s12 = "t" ]]; then
				s12="true"
			elif [[ $s12 = "FALSE" || $s12 = "false" || $s12 = "F" || $s12 = "f" ]]; then
				s12="false"
			else
				s12="false"
			fi
				force_gm=${s12}
}
npc_spawn(){
	echo '	npc_spawns="true"'
	sleep 0.1
	echo '		NPC spawning'
	sleep 0.1
	echo '		Value can be "true"/"false"'
	echo '		'
	echo -n 'npc_spawns='
		read s16
			if [[ $s16 = "TRUE" || $s16 = "true" || $s16 = "T" || $s16 = "t" ]]; then
				s16="true"
			elif [[ $s16 = "FALSE" || $s16 = "false" || $s16 = "F" || $s16 = "f" ]]; then
				s16="false"
			else
				s16="true"
			fi
				npc_spawns=${s16}
}
white_list(){
	echo '	white_list="true"'
	sleep 0.1
	echo '		White listing'
	sleep 0.1
	echo '		Value can be "true"/"false"'
	echo '		'
	echo -n 'white_list='
		read s17
			if [[ $s17 = "TRUE" || $s17 = "true" || $s17 = "T" || $s17 = "t" ]]; then
				s17="true"
			elif [[ $s17 = "FALSE" || $s17 = "false" || $s17 = "F" || $s17 = "f" ]]; then
				s17="false"
			else
				s17="true"
			fi
				white_list=${s17}
}
animal_spawn(){
	echo '	animal_spawns="true"'
	sleep 0.1
	echo '		Animal spawning'
	sleep 0.1
	echo '		Value can be "true"/"false"'
	echo '		'
	echo -n 'animal_spawns='
		read s18
			if [[ $s18 = "TRUE" || $s18 = "true" || $s18 = "T" || $s18 = "t" ]]; then
				s18="true"
			elif [[ $s18 = "FALSE" || $s18 = "false" || $s18 = "F" || $s18 = "f" ]]; then
				s18="false"
			else
				s18="true"
			fi
				animal_spawns=${s18}
}
hardcore(){
	echo '	hardcore="false"'
	sleep 0.1
	echo '		Hardcore mode'
	sleep 0.1
	echo '		Value can be "true/"false"'
	echo ''
	echo -n 'hardcore='
		read $s19
			if [[ $s19 = "TRUE" || $s19 = "true" || $s19 = "T" || $s19 = "t" ]]; then
				s19="true"
			elif [[ $s19 = "FALSE" || $s19 = "false" ||  $s19 = "F" || $s19 = "f" ]]; then
				s19="false"
			else
				s19="true"
			fi
				hardcore=${s19}
}
diff(){
	echo '	diff="1"'
	sleep 0.1
	echo '		Game difficulty'
	sleep 0.1
	echo '		Value can be:'
	echo '		'
	sleep 0.1
	echo '			0=Peaceful'
	echo '			'
	sleep 0.1
	echo '			1=Easy'
	echo '			'
	sleep 0.1
	echo '			2=Normal'
	echo '			'
	sleep 0.1
	echo '			3=Hard'
	echo '			'
	echo -n 'diff='
		read s24
			if [[ $s24 = "0" ]]; then
				s24=0
			elif [[ $s24 = "1" ]]; then
				s24=1
			elif [[ $s24 = "2" ]]; then
				s24=2
			elif [[ $s24 = "3" ]]; then
				s24=3
			else
				s24=1
			fi
				diff=${s24}

}
gm(){
	echo '	gm="0"'
	sleep 0.1
	echo '		Gamemode'
	sleep 0.1
	echo '		Value can be:'
	echo '		'
	sleep 0.1
	echo '			0=Survival'
	echo '			'
	sleep 0.1
	echo '			1=Creative'
	echo '			'
	sleep 0.1
	echo '			2=Adventure'
	echo '			'
	sleep 0.1
	echo '			3=Spectator'
	echo '			'
	echo -n 'gm='
		read s26
			if [[ $s26 = 0 ]]; then
				s26=0
			elif [[ $s26 = 1 ]]; then
				s26=1
			elif [[ $s26 = 2 ]]; then
				s26=2
			elif [[ $s26 = 3 ]]; then
				s26=3
			else
				s26=0
			fi
				gm=${s26}
}
idle_timeout(){
	echo '	idle_timeout="5"'
	sleep 0.1
	echo '		How long a player can be idle before being disconnected (in minutes)'
	sleep 0.1
	echo '		Value can be "n" (in minutes)'
	echo ''
	echo -n 'idle_timeout='
		read s27
			if [[ $s27 = "" ]]; then
				s27=5
			fi
				idle_timeout=${s27}
}
max_players(){
#	echo '	max_players="15"'
#	sleep 0.1
#	echo '		Maximum players allowed on the server'
#	sleep 0.1
#	echo '		Value can be "n"'
#	echo -n 'max_players='
#		read s28
#			if [[ $s28 = "" ]]; then
#				s28=15
#			fi
#				max_players=${s28}
			max_players=15
}
monster_spawn(){
	echo '	monster_spawns="true"'
	sleep 0.1
	echo '		Monster spawning'
	sleep 0.1
	echo '		Value can be "true"/"false"'
	echo '		'
	echo -n 'monster_spawns= '
		read s30
			if [[ $s30 = "TRUE" || $s30 = "true" || $s30 = "T" || $s30 = "t" ]]; then
				s30="true"
			elif [[ $s30 = "FALSE" || $s30 = "false" || $s30 = "F" || $s30 = "f" ]]; then
				s30="false"
			else
				s30="true"
			fi
				monster_spawns=${s30}
}
struct_gen(){
	echo '	struct_gen="true"'
	sleep 0.1
	echo '		Structure generation'
	sleep 0.1
	echo '		Value can be "true"/"false"'
	echo '		'
	echo -n 'struct_gen='
		read s31
			if [[ $s31 = "TRUE" || $s31 = "true" || $s31 = "T" || $s31 = "t" ]]; then
				s31="true"
			elif [[ $s31 = "FALSE" || $s31 = "false" || $s31 = "F" || $s31 = "f" ]]; then
				s31="false"
			else
				s31="true"
			fi
				struct_gen=${s31}
}
spawn_protect(){
	echo '	spawn_protect="0"'
	sleep 0.1
	echo '		Spawn protection'
	sleep 0.1
	echo '		Value can be "n"'
	echo '		'
	echo -n 'spawn_protect='
		read s33
			if [[ $s33 = "" ]]; then
				s33=0
			fi
				spawn_protect=${s33}
}
if [[ ${changes} = "YES" || ${changes} = "yes" || ${changes} = "Y" || ${changes} = "y" ]]; then
	op_perm
	lvl_type
	seed
	force_gm
	npc_spawn
	white_list
	animal_spawn
	hardcore
	diff
	idle_timeout
	gm
	max_players
	monster_spawn
	struct_gen
	spawn_protect
else
	op_perm_lvl="1"
	lvl_type="DEFAULT"
	seed=""
	force_gm="false"
	npc_spawns="true"
	white_list="true"
	animal_spawns="true"
	hardcore="false"
	diff="1"
	idle_timeout="5"
	gm="0"
	max_players="15"
	monster_spawns="true"
	struct_gen="true"
	spawn_protect="0"
fi
echo "Creating server.properties"
> server.properties
	echo "#Minecraft server properties" >> server.properties
	echo "#$(date +%c)" >> server.properties
	echo "generator-settings=" >> server.properties
	echo "op-permission-level=${op_perm_lvl}" >> server.properties
	echo "allow-nether=true" >> server.properties
	echo "resource-pack-hash=" >> server.properties
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
	echo "hardcore=${hardcore}" >> server.properties
	echo "snooper-enabled=true" >> server.properties
	echo "online-mode=true" >> server.properties
	echo "resource-pack=" >> server.properties
	echo "pvp=true" >> server.properties
	echo "difficulty=${diff}" >> server.properties
	echo "enable-command-block=true" >> server.properties
	echo "gamemode=${gm}" >> server.properties
	echo "player-idle-timeout=${idle_timeout}" >> server.properties
	echo "max-players=${max_players}" >> server.properties
	echo "max-tick-time=60000" >> server.properties
	echo "spawn-monsters=${monster_spawns}" >> server.properties
	echo "generate-structures=${struct_gen}" >> server.properties
	echo "view-distance=10" >> server.properties
	echo "spawn-protection=${spawn_protect}" >> server.properties
	echo "motd=A Minecraft Server" >> server.properties

