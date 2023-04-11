#!/bin/bash

# -v is a command
# -x is an executable

# sudo apt update is a command, it updates the list of available packages 
# and their versions from the repositories and "updates" them 
# to get information on the newest versions of packages and their dependencies.

# sudo apt install -y is a command, it installs the package from the repositories.

# htop is a command, it is a system monitor.

# [] is a conditional statement, it is used to test conditions.
# test is a command, it is used to check file types and compare values.
# Can use test instead of [] for conditional statements. It's a ternery conditional operator.

command=htop

if command -v $command; then
  echo "$command is available, let's run it..."
else
  echo "$command is not available, let's install it..."
  sudo apt update && sudo apt install -y $command
fi

$command