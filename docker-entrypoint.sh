#!/bin/sh
INTERVAL=${INTERVAL:-300}
while [ True ]; do
	/usr/local/bin/imapfilter $@
	sleep $INTERVAL
done
