#!/bin/bash
input="domain.txt"
while IFS= read -r line
do
  sleep 2
  echo "=============================================================="
  echo  $line
  ./cero -c 10000 -p 443,4443,8443,10443,587,25,444 "$line" > 3/"$line".txt
done < "$input"
