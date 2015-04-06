#!/bin/bash

# USAGE:
# script.sh machines.txt

# MACHINES example:
# 10.0.0.5|vm_example_name

# BASEDIR
BASEDIR='/BACKUP_FOLDER'

# FIELD SEPARATOR
IFS='|'

# DATE FORMAT
DATE=$( date '+%Y-%m-%d' )

# LOOP
while read ip machine
do
	echo "------------------------------------------------------------- "
	echo "- $machine machine has address $ip"
	echo "---- Creating folder $BASEDIR/$machine/$DATE "
	mkdir $BASEDIR/$machine/$DATE	
	echo "---- Launching Rsync... root@$ip "
	nice -n19 rsync -aAXv --exclude-from=/exclude.txt root@$ip:/* $BASEDIR/$machine/$DATE/
done <"$1"
