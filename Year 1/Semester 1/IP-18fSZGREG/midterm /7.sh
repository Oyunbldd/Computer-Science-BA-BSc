#!bin/bash

if [ $# -ne 2 ]
 then
   echo "wrong arguments" 
	exit 1
fi

if [ ! -f $1 ]
   then
     echo "file not found"
    exit 1
fi

count=$(grep -c "^$2" $1)
echo "answer is : $count"
