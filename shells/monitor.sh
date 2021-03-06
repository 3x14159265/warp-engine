#!/bin/sh
if [ -f ~/warp-dist/RUNNING_PID ] && [ ! -d "/proc/$(tail -1 ~/warp-dist/RUNNING_PID)"]
then
    rm ~/warp-dist//RUNNING_PID
fi

if [ ! -f ~/warp-dist/RUNNING_PID ]
then
    echo 'not running. restarting...'
    # kill java to free resources
    pkill java
    sh ~/warp-engine/shells/start.sh
fi
exit 0

