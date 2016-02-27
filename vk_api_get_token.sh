#!/bin/bash
#print token to $VK_PATH/vk_common_token.sh
#Update token every 1h
source vk_common.sh
SLEEP_TIME=1h

while [ 1 ] ; do
	TOKEN=`python vk_auth.py $VK_EMAIL $VK_PASS`
	echo "ACCESS_TOKEN=$TOKEN" > $VK_TOKEN_FILE
	echo $TOKEN
	sleep $SLEEP_TIME
done
