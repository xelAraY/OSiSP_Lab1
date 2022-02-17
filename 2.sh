#!/bin/bash
if [ $# -eq 3 ]
then
  if [ -d $2 ]
  then 
    find $2 -name "*.$3" -printf '%f\n' > $1.txt
  else
    echo "Error. Second parametr is not directory">&2
  fi
else 
  echo "Error. Need 3 arguments">&2
  echo "Command format: $0 name_of_file directory extension">&2 
fi

