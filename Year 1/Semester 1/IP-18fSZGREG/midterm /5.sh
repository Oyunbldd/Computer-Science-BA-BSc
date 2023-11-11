#!bin/bash

if [ $# -ne 1 ]
   then 
     echo "we need argument bro"
 	exit 1
fi

if [ ! -f $1 ]
   then	
	echo "bro your file not in here"
	exit 1
fi

sed -i 's/^[0-9]\{3\}$//' $1
