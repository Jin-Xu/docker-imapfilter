#!/bin/sh
INTERVAL=${INTERVAL:-300}
CONFIG=${CONFIG:-"/config.lua"}
CMD="/usr/local/bin/imapfilter -c $CONFIG $@"
if [ -z "$DAEMON" ]
then
	$CMD
	exit
fi
while [ True ]
do
	$CMD
	sleep $INTERVAL
done
