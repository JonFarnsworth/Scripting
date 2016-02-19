#!/bin/bash

if [ ! "$count" ]; then
    read -p "How many dice? [1-5]. Default is 2: " numdice
    if [[ "$numdice" =~ ^[1-5]$ ]]; then
        count=$numdice
    else
        count=2
        echo "Using 2 since a number between 1 and 5 was not used"
    fi
fi

if [ ! "$sides" ]; then
    read -p "How many sides? [4-20].  Default is 6: " numsides
    if [[ "$numsides" =~ ^[1-9][0-9]*$ ]]; then
        if [ $numsides -ge 4 -a $numsides -le 20 ]; then
            sides=$numsides
        else
            sides=6
            echo "Using 6 since you're not giving a right number"
        fi
    fi
fi