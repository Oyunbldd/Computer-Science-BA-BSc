#!bin/bash

if [ $# -eq 0 ]
    then
        echo "no arg given..."
    exit 1
fi

case $1 in
       -g)   
  	    echo "Hello this is greeting "
	    ;;
       -l) 
	    echo
            ls	
	    ;;
       -w)
	  echo
 	   who
	  ;;

       -?) 
          echo "-g for greetings, -l for dir, -w for who 
esac        
