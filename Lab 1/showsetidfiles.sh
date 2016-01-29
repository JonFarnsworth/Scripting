#!/bin/bash
#this script shows the uid and gid files for /usr

echo "Setuid file sin /usr"
echo "==============="
find /usr -perm -4000 -type f -ls 

echo "Setgid file sin /usr"
echo "====================="
find /usr -perm -2000 -type f -ls