#!bin/bash 

if [ $# -eq 0 ]
  then
    echo "enter your argument"
   read P
  else
  P=$1
fi
ans=$((5*$P*$P+3*$P+1))

echo $ans

