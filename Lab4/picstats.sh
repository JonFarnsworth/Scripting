#!/bin/bash
#Displays how many files are ~/pictures and how much space they use, and size and names of the 3 largest files.


echo -n "There are "
find ~/workspace/Pictures -type f | wc -l | xargs echo -n
echo " files in the ~Pictures directory"

echo "The pictures in the Pictures directory uses (in Mbytes)"
du -sh ~/workspace/Pictures

echo "The three largest files are"
du -h ~/workspace/Pictures/* | sort -hr | head -n3

function error_exit {
    echo "$1" >&2  
    exit "${2:-1}" 
}

[[ $TRESHOLD =~ []+$ ]] || error_exit "Nope, not what I'm looking for."