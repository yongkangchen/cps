#!/bin/bash

# exit if no command is given
if [ -z "$1" ]; then
  echo -e -n "\033[0;31m" # set color to red
  echo "Error: no command given."
  exit 1
fi

keyword=Suggestion:

command=$(echo "" | gh copilot suggest -t shell "$@" 2>/dev/null | grep $keyword -A2 | grep -v $keyword)
if [ -z "$command" ]; then
    #echo -e -n "\033[0;31m" # set color to red
    echo "Error from copilot"
    echo "Aborted."
    exit 1
fi

# echo the command
echo -e -n "\033[0;31m" # set color to red
echo $command

# make the user confirm the command
echo -e -n "\033[0;34m" # set color to blue
read -n 1 -s -r -p "Press any button to continue, or n to cancel: "

# if the user presses n, exit the script
if [[ $REPLY =~ ^[Nn]$ ]]
then
    echo -e -n "\033[0;31m" # set color to red
    echo $REPLY
    echo "Aborted."
    exit 0
fi
echo -e -n "\033[0;32m" # set color to green
echo $REPLY
echo "Executing command..."
echo ""

# execute the command
echo -e "\033[0m" # reset color
eval "$command"
