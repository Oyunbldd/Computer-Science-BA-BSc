#!bin/bash

start(){
 if [ -z $1 ]
   then 
      echo "file not found $0"
   exit 1
   else
   pid=$RANDOM
   echo "$pid S $1" >> actuals.dat
   echo "Process started: $1 PID:$pid"
 fi
}

stop(){
  if [ -z $1 ]
    then 
      echo "pid needed"
     exit 1
    else
    sed -i  "/^$1 / s/S/T/" actuals.dat
    echo "Process stopped: PID -> $1" 
  fi
}

kill(){
  if [ -z $1 ]
    then 
      echo "pid needed"
     exit 1
    else
    sed -i  "/^$1 /d" actuals.dat
    echo "Process killed: PID -> $1" 
  fi
}


list(){
  echo "List of the Process:"
  cat actuals.dat
}


case $1 in 
           -start)
               start $2
               ;;
           -stop)
               stop $2
               ;;
           -kill)
               kill $2
               ;;
           -list)
               list
               ;;
             *)
              echo "Invalid option"
              echo "Usage: $0  -start process_name or  $0{-stop|-kill|-list} PID "
              exit 1
              ;;
esac






