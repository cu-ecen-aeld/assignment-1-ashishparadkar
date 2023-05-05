#!/bin/bash
#Assignement-1: writer.sh
#Author: Ashish Paradkar

writefile=$1
writestr=$2
DIR=""

if [ -z "$writefile" ] || [ -z "$writestr" ]; then
	echo -e "Invalid arguments\nUsage: ./finder.sh <full path to a file> <string to be written in the file>"
	exit 1
fi

DIR=`echo $writefile | xargs dirname`

if [ -f "$writefile" ]; then 
	echo "$writestr" > $writefile
	exit 0
else
	if [ ! -d $DIR ];then
		mkdir -p $DIR
		if [ $? -ne 0 ]; then
			echo "folder could not be created... Exiting now !!!"
			exit 1
		fi
	fi

	touch $writefile
	if [ $? -ne 0 ]; then
		echo "file could not be created... Exiting now !!!"
		exit 1
	fi	
        echo "$writestr" > $writefile
	exit 0
fi


