#!/bin/bash

POD="pod/webserver"

CONTAINER_AVAILABLE=$(kubectl get $POD | awk 'NR>1 {print $2}')

IFS='/' read -r first second <<< "$CONTAINER_AVAILABLE"
DURATION=300
SECONDS=0
while [ $SECONDS -lt $DURATION ]; do

    if [ $first -eq $second ]; then
        echo "Containers are ready!"
        break
    else
        echo "Container are not ready!"
    fi

    sleep 15
done

echo "Finished checking for containers."