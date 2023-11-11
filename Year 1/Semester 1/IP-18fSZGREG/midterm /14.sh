#!bin/bash

if [ $# -ne 1 ]
 then
     echo "failed"
	exit 1
fi

# square top section
for((i=1;i<=$1;i++))
do
ans+="A"
done
echo $ans

#middle part
for((i=2;i<$1;i++))
do
 for((j=1;j<=$1;j++))
 do
 if((j==1 || j==$1))
   then
   mid+="A"
   else
   mid+=" "
 fi
   done
  echo "$mid"
mid=""
done

echo $ans
