#!bin/bash

for((i=1;i<=$1;i++))
  do
  ans+="A"
  done
echo $ans

for((i=2;i<$1;i++))
 do
  for((j=1;j<=$1;j++))
  do 
  	if((j==1 || j==$1))
  	 then
   	test+="A"
  	else
 	test+=" "
	fi
done
echo "$test"
test=""
done
echo $ans
