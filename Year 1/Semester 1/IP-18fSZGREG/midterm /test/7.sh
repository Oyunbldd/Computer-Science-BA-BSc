#!bin/bash

if [ ! -f $1 ]
   then
    echo "file not found"
   exit 1
fi

counts=$(grep -c "^$2" $1)

echo $counts
