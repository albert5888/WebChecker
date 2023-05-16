#!/bin/bash
echo "-----Start testing-----"
#filename='taipower.txt'
filename=$1
n=1
while read line; do
	timeout 3 curl -I $line > /dev/null 2>&1
	if [ $? -eq 0 ];then
		echo "$line OK"
	else
		echo "$line ERROR"
	fi
n=$((n+1))
done < $filename
