#!/bin/bash
#This script saves all changes

git add -A
git commit -m "$1"
git push
