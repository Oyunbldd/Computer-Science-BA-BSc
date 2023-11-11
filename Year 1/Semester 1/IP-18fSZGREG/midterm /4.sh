#!bin/bash

if [ $# -ne 1 ]
   then 	
 	echo "Missed argument:Please filename"
   exit 1
fi

#Check file
if [ ! -f $1 ]
     then 
	echo "The file $1 does not exist."
     exit 1
fi

awk 'NR % 2 == 1' $1 
