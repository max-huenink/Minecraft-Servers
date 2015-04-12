#!/bin/sh

cd ${dir}
#Changes to directory of servers, defined in '*Server.sh'
ls -d --color=yes */
#Lists all directories, with color.
echo "Which server would you like to start?"
echo -n "Server: "
read server

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
else
        echo "Server does not exist, please try again"
fi
