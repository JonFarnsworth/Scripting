#!/bin/bash

#How to pull up the IP address and Default gateway


# MAIN
##############
ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}'
ifconfig lo | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}'
route -n | awk '{ $1=""; $3=""; $4=""; $5=""; $6=""; $7=""; $8=""; print}' | sed '3!d'