#!/bin/bash

log_file="operation.log"

log_message() {
	echo "$(date '+%Y-%m-%d %H:%M:%S') -$1" >> "$log_file"
}
if [ ! -f "log_file" ]; then
	touch "$log_file"
	log_message "Log file created"
fi

echo "Count file"
read -p "Enter Directory " dir
ls -l "$dir" | grep -c "^-"
log_message "counted file in $dir "