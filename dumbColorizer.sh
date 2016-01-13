#!/bin/sh
filename="$1"
while read -r line
do
	if [[ $line == *'debug'* ]]; then
		printf "\033[1;37m ${line}\n"
	else
	if [[ $line == *'info'* ]]; then
		printf "\033[1;32m ${line}\n"
	else
	if [[ $line == *'Warning'* ]]; then
		printf "\033[1;36m ${line}\n"
	else
	if [[ $line == *'Error'* ]]; then
		printf "\033[1;31m ${line}\n"
	else
		printf "\033[1;33m ${line}\n"
	fi
	fi
	fi
	fi
done
