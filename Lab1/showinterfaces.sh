#!/bin/bash


showroute=0
declare -A justip
declare -a justface
declare -a multiface

$multiface= ( ifconfig | cut -d' ' -f1 )

while [ $# -gt 0 ]; do
    case "$1" in
    -r|--route )
        showroute=1
        ;;
    *)
        justface+=("$1") 
        ;;
    esac
    shift
done