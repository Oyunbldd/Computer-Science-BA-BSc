#!bin/bash

if [ $# -ne 3 ]
    then 
      echo "wrong input"
      read -p  "First number: " num1
      read -p "Second number: " num2
      read -p "Third number: " num3
    else 
    num1=$1
    num2=$2
    num3=$3
fi

echo -e "$num1\n$num2\n$num3" | sort -n
    
