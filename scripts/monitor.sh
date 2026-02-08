#!/bin/bash

# Docker ka full path use karna CronJob ke liye safe rehta hai
DOCKER_BIN=$(which docker)
CONTAINER="lara-project-web-1"
LOGFILE="/root/LARA-project/logs/lara_health.log"

# Status check
RUNNING=$($DOCKER_BIN inspect -f '{{.State.Running}}' $CONTAINER 2>/dev/null)

if [ "$RUNNING" != "true" ]; then
    echo "$(date): ALERT - $CONTAINER is DOWN. Restarting..." >> $LOGFILE
    $DOCKER_BIN start $CONTAINER
else
    echo "$(date): OK - $CONTAINER is running fine." >> $LOGFILE
fi
