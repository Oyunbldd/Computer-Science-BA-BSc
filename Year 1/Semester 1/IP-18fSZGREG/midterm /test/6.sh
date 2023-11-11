#!bin/bash

if [ $# -ne 3 ]
   then 
     echo "needed 3 arguments"
   read num1
   read num2
   read num3
  else
  num1=$1
  num2=$2
  num3=$3
fi

echo -e "$num1\n$num2\n$num3" | sort -n
