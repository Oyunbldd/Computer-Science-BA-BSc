#!bin/bash

if [ $# -ne 2 ]
   then 
      echo "Only 2 arguemnts bro!"
      exit 1
fi

if(( $1 > $2))
   then
      first=$2
      second=$1
   else 
      first=$1
      second=$2
fi

for(( i=first; i<=second; i++ ))
do
  square=$((i*i))
  ans+="$square " 
done

echo $ans


