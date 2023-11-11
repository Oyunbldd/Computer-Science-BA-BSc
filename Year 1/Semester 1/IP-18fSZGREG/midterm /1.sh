#!/bin/bash

if [ $# -eq 0 ]
    then
         echo "no argument given, enter argument: "
         read P
    else
         P=$1
fi

result=$((5*P*P + 3*P+1))

echo "argument is $P and result is $result"
