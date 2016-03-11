#!/bin/bash

function error_exit {
    echo "$1" >&2   ## Send message to stderr. Exclude >&2 if you don't want it that way.
    exit "${2:-1}"  ## Return a code specified by $2 or 1 by default.
}

[[ $TRESHOLD =~ []+$ ]] || error_exit "Nope, not what I'm looking for."