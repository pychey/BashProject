#!/usr/bin/env bash

echo "Count File"
read -p "Enter Directory: " dir
ls -l "$dir" | grep -c "^-"
./script/logOperation.sh "counted file in $dir "