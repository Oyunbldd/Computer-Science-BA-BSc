#!bin/bash

if [ $# -ne 1 ]
 then 
   echo "wrong value"
 exit 1
fi

if [ ! -f $1 ]
 then
    echo "file not found"
  exit 1
fi

total=0
while read -r word1 number word2
do
 total=$((total + number))
done < $1

echo $total
