#!/bin/bash
if [ $# -eq 3 ]
then
	if  [ -d $2 ]
	then
		find $2 -type f -printf "%p %f %s\n" -user $1 > $3.txt
		echo -n "Total count of files is "
		wc -l < $3.txt

	else 
		echo "Error. Second argument should be directory">&2
	fi
else 
	echo "Error. Need 3 arguments">&2
	echo "Command format: $0 name_of_user directory new_file">&2
fi
