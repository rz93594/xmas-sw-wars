#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

while :
do
	echo -e "${RED}Red Laser - AT-AT ${NC}- 7 seconds"
	curl -o /dev/null -s "192.168.1.71/win&PL=4"
	sleep 7 
	echo -e "${GREEN}Green Laser - Santa ${NC} - 4 seconds"
	curl -o /dev/null -s "192.168.1.71/win&PL=1"
	sleep 4
	echo -e "${RED}Red Laser - AT-AT ${NC}- 5 seconds"
	curl -o /dev/null -s "192.168.1.71/win&PL=4"
	sleep 5
	echo -e "${GREEN}Green Laser - Santa ${NC}- 3 seconds"
	curl -o /dev/null -s "192.168.1.71/win&PL=1"
	sleep 3
	echo "Fireburst for 8 seconds"
	curl -o /dev/null -s "192.168.1.71/win&PL=6"
	sleep 8
	echo "Lights Off for 3 seconds"
	curl -o /dev/null -s "192.168.1.71/win&PL=5"
	sleep 3
done
