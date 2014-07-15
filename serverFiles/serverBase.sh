#!/bin/sh

cd ${dir}
#Changes to directory of servers, defined in '*Server.sh'
ls -d --color=yes */
#Lists all directories, with color.
echo "Which server would you like to start?"
sleep 0.1
echo -n "Server: "
read server

cd ${server}
echo ""
ls -1 --color=yes *sh
#Lists each sh file, one per line
echo "Which [type]Start.sh file would you like to use?"
echo -n "Type: "
read sh

bash ${sh}Start.sh
#Starts the correct Start.sh file
