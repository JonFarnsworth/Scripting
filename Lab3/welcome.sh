#!/bin/bash
#
#this script will print out a welcome message in a predefinded format
#
# VARIABLES
myname="Jon"
mytitle="Commandant"
hostname=`hostname`
weekday=$(date +%A)

#MAIN
################
echo Welcome to planet $hostname, $mytitle!
echo Today is $weekday

