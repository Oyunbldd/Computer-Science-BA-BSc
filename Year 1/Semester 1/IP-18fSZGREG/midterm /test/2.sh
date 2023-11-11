#!bin/bash

case $1 in 
         -g) 
         echo "this is greetings"
         ;;
	-l)
	echo ls
       ;;
	-w)
	echo who
	;; 
	-?)
	echo "-g command , -l ls command, -w who command"
	;;
esac
