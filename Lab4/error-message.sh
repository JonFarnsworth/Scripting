#!/bin/bash

function error_exit {
    echo "$1" >&2 
    exit "${2:-1}"
}

[[ $TRESHOLD =~ []+$ ]] || error_exit "Nope, not what I'm looking for."