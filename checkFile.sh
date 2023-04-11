#!/bin/bash

# -f is a file
# -d is a directory
# -e is a file or directory

if [ -f ./myfile ]; then
  echo "File exists."
else
  echo "File does not exist."
fi

if [ -d ~/Bash ]; then
  echo "Directory exists."
else
  echo "Directory does not exist."
fi