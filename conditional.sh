#!/bin/bash

# -ne is not equal
# -eq is equal
# -gt is greater than
# -lt is less than
# -ge is greater than or equal to
# -le is less than or equal to

myNum=201

if [ $myNum -ne 200 ]
then
  echo "The condition is true."
else
  echo "Not equal to 200"s  
fi