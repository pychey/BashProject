#!/usr/bin/env bash

echo "Compress File"
read -p "Enter file or directory: " dir
baseName=$(basename "$dir")

if [ -f "$dir" ]; then
	zip "$baseName.zip" "$dir"
	./script/logOperation.sh "compressed $dir"
elif [ -d "$dir" ]; then
	zip -r "$baseName.zip" "$dir"
	./script/logOperation.sh "compressed folder $dir"
else 
	echo "Compress Error: $dir Dont Exist"
	./script/logOperation.sh "Compress Error: $dir Dont Exist"
fi
