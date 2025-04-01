#!/usr/bin/env bash

read -p "Enter directory: " dir
df -h "$dir"
./script/logOperation.sh "display disk usage of $dir"
