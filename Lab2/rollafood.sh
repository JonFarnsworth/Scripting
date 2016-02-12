#!/bin/bash
# Array of foods
foods=("Apple" "Banana" "Peach" "Grape" "Melon" "Squash" "Pizza" "Ice Cream" "Tacos" "Turkey" "Fish")
# MAIN
################
die1=$(($RANDOM % 6 + 1))
die2=$(($RANDOM % 6 + 1))
diceroll=$(($die1 + $die2))
index=$(($diceroll - 2))
echo "We chose a ${foods[$index]} because we rolled a $die1 and a $die2 for a $diceroll"