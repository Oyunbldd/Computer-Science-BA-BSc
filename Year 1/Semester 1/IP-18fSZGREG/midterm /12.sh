#!bin/bash

if [ $# -eq 0 ]
   then
     echo "No arguments supplied"
   read N
   else
   N=$1
fi

n=3
for(( i=1; i<=$N; i++ ))
do 
 ans+="$n "
 n=$((n+4))
done
echo $ans 

