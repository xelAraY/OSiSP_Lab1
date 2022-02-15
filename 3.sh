#!/bin/bash 
gcc $1 -o $2 2> error.txt
if [ -s error.txt ]
then
  echo Error
else 
  ./$2
fi
