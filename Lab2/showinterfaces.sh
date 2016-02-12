#!/bin/bash

#How to pull up the IP address and Default gateway


# MAIN
##############
interfaces=('ifconfig | grep '^[A-Za-z]' | awk "{print $1}"')

eth0=$(ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}')
echo "The ethernet connection has the address of $eth0"
lo=$(ifconfig lo | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}')
echo "The loopback address of $lo"
route=$(route -n | awk '{$1=""; $3=""; $4=""; $5=""; $6=""; $7=""; $8=""; print}' | sed '3!d')
echo "The default gateway has the address of $route"