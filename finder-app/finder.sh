#!/bin/bash
#Assignement-1: finder.sh
#Author: Ashish Paradkar

filesdir=$1
searchstr=$2
X=0
Y=0


if [ -z "$filesdir" ] || [ -z "$searchstr" ]; then
	echo -e "Invalid arguments\nUsage: ./finder.sh <path to a directory on the filesystem> <search string>"
	exit 1
fi

if [ ! -d $filesdir ];then
       echo "directory not present!!!"
       exit 1       
fi

X=$(grep -inrl $searchstr $filesdir  |wc -l)
Y=$(grep -inr $searchstr $filesdir |wc -l)

echo "The number of files are ${X} and the number of matching lines are ${Y}"


