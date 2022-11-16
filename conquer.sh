#!/bin/bash
# Author: Drian
# bash conquer.sh
# Ex. bash conquer.sh BR

URL="https://patoacademy.network/hit/kryptic-00001";

echo "Starting..."
for cc in $(cat "country-codes.txt");	
	do 
	printf "\nTrying $cc\n"
	curl $URL -x USER:PASSWORD-country-$cc@la.residential.rayobyte.com:8000	
done
