#!bin/bash

if [ ! -f $1 ]
   then
    echo "file not found"
   exit 1
fi

grep "^$2" $1
