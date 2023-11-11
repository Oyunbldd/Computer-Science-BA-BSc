#!bin/bash

if [ $# -ne 2 ]
    then
 	echo "wrong arguments"
	eixt 1
fi

gcd (){
 if [ $2 -eq 0 ]
    then
	echo $1
    else
  gcd $2 $(( $1 % $2  ))
fi
}


result="$(gcd $1 $2)"
echo $result
