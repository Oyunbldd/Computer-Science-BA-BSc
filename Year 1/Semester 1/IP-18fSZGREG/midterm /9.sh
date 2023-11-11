#!bin/bash

if [ $# -ne 2 ]
    then
	echo "failed"
	exit 1
fi

for((i=1;i<=$2;i++))
do
  for((j=1;j<=$1;j++))
   do
   ans+="A"
   done
   echo $ans
   ans=""    
done

