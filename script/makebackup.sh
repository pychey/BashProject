#!/bin/bash

log_file="operation.log"

log_message() {
	echo "$(date '+%Y-%m-%d %H:%M:%S') -$1" >> "$log_file"
}
if [ ! -f "log_file" ]; then
	touch "$log_file"
	log_message "Log file created"
fi

echo "Making Backup"
read -p "Enter file or directory " source
read -p "Enter backup location " des
mkdir "$des"

if [[ ! -e "$source" ]]; then
	echo -n "Error: '$source' Source does not exist"
	log_message "error making backup"
	exit 1
fi

if [[ -f "$source" ]]; then
	echo "backing up file"
	cp -v "$source" "$des"
	log_message "backup $source to $des"
elif [[ -d "$source" ]]; then
	echo "backing up a directory"
	log_message "backup $soure to $des" 
	cp -rv "$source" "$des"
fi
