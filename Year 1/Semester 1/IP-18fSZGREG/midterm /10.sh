#!bin/bash

if [ $# -ne 3 ]
  then
	echo "wrong"
	exit 1
fi

if [ ! -f $1 ] 
  then
	echo "wrong"
	exit 1
fi

filename=$1
oldWord=$2
newWord=$3

sed -i -e "s/^oldWord\>/$newWord/g" -e "s/\<$old
