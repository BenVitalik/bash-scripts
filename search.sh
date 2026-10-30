#!/bin/bash
word=$1
file=$2

if [ -f "$file" ]
then
  count=$(grep -c "$word" "$file")
  if [ "$count" -gt 0 ]
  then
    echo "Found '$word' $count times"
  else
    echo "Not found"
  fi
else
  echo "File not found"
fi
