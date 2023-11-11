#!bin/bash

for((i=0;i<$1;i++))
 do
 value=$((3+i*4))
 ans+="$value "
 done

echo $ans
