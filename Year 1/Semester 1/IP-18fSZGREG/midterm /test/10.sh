#!bin/bash

filename="$1"
findword="$2"
repword="$3"

sed -i -e "s/\<$findword\>/$repword/g" -e "s/$findword/>/$repword/g" -e "s/\<$findword/$repword/g" "$filename"

echo "'$findword'    __ '$repword' in the file '$filename'"

