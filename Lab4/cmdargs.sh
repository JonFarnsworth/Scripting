#!/bin/bash

# Loop through command line arguments

while [ $# -gt 0 ]; do
    
    # display each arguement on its own line
    echo "$1"
    
    # each time through the loop, shift the arguements left
    # this decrements the arguement count for us
    shift
done