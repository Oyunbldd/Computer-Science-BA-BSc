#!bin/bash

if(($1 > $2))
  then 
   first=$2
   second=$1
  else
   first=$1
   second=$2
fi

for((i=first;i<=second;i++))
do
square+="$((i*i)) "
done

echo $square

