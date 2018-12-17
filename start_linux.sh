#!/bin/bash
cd "$(dirname "$0")"
if ! screen -list | grep -q "mc"; then
	echo "Server is starting!"
	sudo screen -dmS mc sudo java -server -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -XX:+CMSIncrementalPacing -XX:ParallelGCThreads=5 -XX:+AggressiveOpts -Xms1G -Xmx8G -jar forge-1.12.2-14.23.5.2768-universal.jar nogui
else
	echo "Server already started!";
fi
