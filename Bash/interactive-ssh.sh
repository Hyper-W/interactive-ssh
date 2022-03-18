#!/bin/bash

cat ~/.ssh/config | grep "^Host " | grep -v "github" | cut -d ' ' -f 2 | nl -w 3 -s ':'

echo ""

read -p "Select Connect Host Number: " SSH_Num

export SSH_HOST=$(cat ~/.ssh/config | grep "^Host " | grep -v "github" | cut -d ' ' -f 2 | nl -w 3 -s ':' | grep " $SSH_Num:" | cut -d ':' -f 2)

if [ -z "$SSH_HOST" ]; then

    echo ""
    echo "An invalid value was entered."
    echo ""
    read -p "Please press any key."
    exit 1

fi

echo "Connecting $SSH_HOST ..."
sleep 2
reset
ssh $SSH_HOST

exit 0