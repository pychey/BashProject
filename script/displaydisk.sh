#!/usr/bin/env bash

echo "Display Disk Usage"
read -p "Enter directory: " dir

df -h "$dir"
./script/logOperation.sh "display disk usage of $dir"
