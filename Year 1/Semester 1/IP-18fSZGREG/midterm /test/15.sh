#!bin/bash


total=0

while read -r word1 number word2
do
 total=$((total+number))
done<$1
echo $total
