#!/bin/bash
result=$(ls | grep $1 | sed -e "s/$1//g" | sed -e "s/.$2//g" | sort -n | tail -n 1)
max=$((result+1)) 
if [ -z "$max" ]
then
    max=1
fi
limit=$((max+25))
while [ $max -lt $limit ]
do
    touch "$1$max.$2" 
    max=$((max+1))
done