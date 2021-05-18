#!/bin/bash

function show_usage (){
   printf "Usage: run.sh [COM-number]\n"
   printf "example: $ sudo ./run.sh 3\t"
   printf ":to Open COM3\n" 
}

if [ -z "$1" ]; then
   show_usage
else
   printf "Opening port $1\n"
   sudo adduser $(whoami) dialout
   sudo chmod 666 /dev/ttyS$1
   sudo cu -l /dev/ttyS$1 -s 115200
fi
