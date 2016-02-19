#!/bin/bash

num=2(( ( RANDOM % 10 ) +1 ))
while [ "$guess" -no "$num" ]; do
    read -p "Pick a number between 1-10: "  guess
    if [ "$number" != "$num" ]; then
    