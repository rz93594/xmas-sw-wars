#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

if [ -z "${XIP}" ]
then 
	echo "Unable to find \$XIP"
	echo "...exiting..."
	sleep 1
	exit
else
	echo "Found ESP32 at $XIP"
	### Santitize input to only IP, need to add private_ip4_check
	IP="$(echo $XIP  | awk '/^[0-9.]+[.][0-9]+$/{if(!a[$0]++)print $0}')"
fi

while :
do
	echo -e "${RED}Red Laser - AT-AT ${NC}- 7 seconds"
 	echo -e "${RED}Playing Music on RPi ${NC}- 23 seconds"
 	#curl -o /dev/null -s "http://192.168.1.213:5000/webhook"
	curl -o /dev/null -s "$AIP/webhook"
 	curl -o /dev/null -s "$IP/win&PL=4"
	sleep 7 
	echo -e "${GREEN}Green Laser - Santa ${NC} - 4 seconds"
	curl -o /dev/null -s "$IP/win&PL=1"
	sleep 4
	echo -e "${RED}Red Laser - AT-AT ${NC}- 5 seconds"
	curl -o /dev/null -s "$IP/win&PL=4"
	sleep 5
	echo -e "${GREEN}Green Laser - Santa ${NC}- 3 seconds"
	curl -o /dev/null -s "$IP/win&PL=1"
	sleep 3
	echo "Fireburst for 8 seconds"
	curl -o /dev/null -s "$IP/win&PL=6"
	sleep 8
	echo "Lights Off for 3 seconds"
	curl -o /dev/null -s "$IP/win&PL=5"
	sleep 3
done
