#!bin/bash

if [ $# -ne 1 ]
   then
	echo "failed"
	exit 1
fi

ans=$(($1 * 2))
echo $ans
