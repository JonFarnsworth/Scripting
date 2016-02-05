#!/bin/bash
#
#
#
#VARIABLES
colours=("red" "green" "blue" "purple") 
declare -A animals
animals=([red]="cardinal" [green]="frog" [blue]="lobster" [purple]="crab")

#MAIN
#########

read -p "Give me a number from 0-3: " num
echo "index $num in colours has ${colours[$num]} in it"
animalkey="${colours[num]}"
echo "The corrisponding animal is a ${animals[$animalkey]}"
