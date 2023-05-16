#!/bin/bash
echo " _       __     __    ________              __            
| |     / /__  / /_  / ____/ /_  ___  _____/ /_____  _____
| | /| / / _ \/ __ \/ /   / __ \/ _ \/ ___/ //_/ _ \/ ___/
| |/ |/ /  __/ /_/ / /___/ / / /  __/ /__/ ,< /  __/ /    
|__/|__/\___/_.___/\____/_/ /_/\___/\___/_/|_|\___/_/     
                                                          ver1.0"

echo -e "\n-----Start testing----- \n"
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
echo -e "\n-----Test end----- \n"