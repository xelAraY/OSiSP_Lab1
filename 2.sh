#!/bin/bash
if [ $# -eq 3 ]
then
  if [ -d $2 ]
  then 
  find $2 -name "*.$3" > $1.txt
  else
    echo Error. Second parametr is not directory
  fi
else 
  echo Error. Need 3 arguments
fi

