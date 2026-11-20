#!/bin/bash

INPUT_FILE=$1
RFOLD=$(cat /dev/urandom | head -c10 | base64 | tr -dc 'A-Za-z0-9')
FOLDER="/tmp/$RFOLD"
echo $FOLDER
if [ ! -f $INPUT_FILE ]; then
	echo "$INPUT_FILE not found"
	exit 1
fi

unzip $1 -d $FOLDER

echo "Extracting $1"


