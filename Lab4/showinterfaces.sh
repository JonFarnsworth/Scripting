#!/bin/bash

#How to pull up the IP address and Default gateway


# MAIN
##############
eth0=$(ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}')
echo "The ethernet connection has the address of $eth0"

lo=$(ifconfig lo | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}')
echo "The loopback address is $lo"

route=$(route -n | awk '{$1=""; $3=""; $4=""; $5=""; $6=""; $7=""; $8=""; print}' | sed '3!d')
echo "The default gateway has the address of $route"

function error_exit {
    echo "$1" >&2   ## Send message to stderr. Exclude >&2 if you don't want it that way.
    exit "${2:-1}"  ## Return a code specified by $2 or 1 by default.
}

[[ $TRESHOLD =~ []+$ ]] || error_exit "Nope, not what I'm looking for."