#!bin/bash

if [ $# -ne 2 ]
 then
   echo "wrong arguments"
  exit -1
fi
if [ ! -f $1 ]
 then
   echo "wrong"
 exit 1
fi

grep "^$2" $1
