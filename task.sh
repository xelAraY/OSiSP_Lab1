#!/bin/bash
if [ $# -eq 3 ]
then
	find $2 -type f -printf "%s %p\n" -user $1 > $3.txt
else 
	echo "Error. Need 3 arguments"
fi
