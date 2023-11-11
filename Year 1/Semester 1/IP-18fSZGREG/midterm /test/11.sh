#!bin/bash

if [ $# -eq 0 ]
    then
      echo "needed arguments"
    read n
    else
    n=$1
fi

echo $((n*2))
