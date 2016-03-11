#!/bin/bash

if [ ! "$count" ]; then
    read -p "What leter do you like?. " letter
    if [[ "$letter" =~ ^[a-z][A-Z]  ]]; then
        count=$letter
    else
        echo $letter
    fi
fi

    if [ ! "$number" ]; then
    read -p "What's your number?" number
            number=$number
        else
            echo $number * $number
    fi
fi