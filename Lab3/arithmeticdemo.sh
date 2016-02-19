#!/bin/bash
#
# This script is how to do basic math
#
#MAIN
########
read -p "Pick two numbers: " x y

ans1=$(( x + y ))
ans2=$(( x - y ))
ans3=$(( x * y ))
ans4=$(( x / y ))
ans5=$(( x % y ))

echo "$x + $y = $ans1"
echo "$x - $y = $ans2"
echo "$x * $y = $ans3"
echo "$x / $y = $ans4"
echo "$x % $y = $ans5"