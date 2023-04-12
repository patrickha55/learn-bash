#!/bin/bash

# sleep is used to slow down the loop.

myvar=1

# while [ $myvar -le 10 ]; do
#   echo $myvar
#   myvar=$((myvar+1))
# 
#   sleep 0.5
# done

while [ -f ./tempFile ]; do
  echo "$(date): File exists"
  sleep 2
done

echo "$(date): File does not exist"