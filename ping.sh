#!/bin/bash
ip=$1

if ping -c 1 "$ip" > /dev/null 2>&1
then
  echo "$ip is alive"
else
  echo "$ip is not responding"
fi
