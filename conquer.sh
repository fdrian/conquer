#!/bin/bash
# Author: Drian
# bash conquer.sh 

URL="https://patoacademy.network/hit/kryptic-00001";
PROXY="USERNAME:PASSWORD-country-$cc@la.residential.rayobyte.com:8000"

conquered='"success":true'

echo "Hello friend! Lets conquer!"
for cc in $(cat "country-codes.txt");	
	do 		
	response=$(curl -s $URL --proxy $PROXY)
	echo $response
		
	if [[ $response == *"$conquered"* ]]; then
		printf "\nSuccess, $cc conquered!"		
		echo $cc >> success-log.txt		
	fi
done
