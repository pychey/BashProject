#!/bin/bash

log_file="operation.log"

log_message() {
	echo "$(date '+%Y-%m-%d %H:%M:%S') -$1" >> "$log_file"
}
if [ ! -f "log_file" ]; then
	touch "$log_file"
	log_message "Log file created"
fi

echo "Display Disk Usage"
read -p "Enter directory" dir
echo "Used	File"
du -sh "$dir"

log_message "display disk usage of $dir"
