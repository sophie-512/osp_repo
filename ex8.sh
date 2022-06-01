#!/bin/bash
# copies files from directory1 - into the directory2
# A new directory is created every hour

DIR1=test1/dir1
DIR2=test1/dir2

while true;do
	DATE=`date +%Y%m%d`
	HOUR=`date +%H`
	mkdir $DIR2/"$DATE"
	while [ $HOUR -ne "00" ]; do
		DESTDIR=$DIR2/"$DATE"/"$HOUR"
		mkdir "$DESTDIR"
		mv $DIR1/*.txt "$DESTDIR"
		sleep 3600
		HOUR=`date +%H`
	done
done
