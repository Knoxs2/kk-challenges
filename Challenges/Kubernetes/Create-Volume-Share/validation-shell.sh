#!/bin/bash

set -e

POD="pod/volume-share-nautilus"
CONTAINER1="volume-container-nautilus-1"
CONTAINER2="volume-container-nautilus-2"
VOLUME_MOUNT1="/tmp/official"
VOLUME_MOUNT2="/tmp/cluster"
TEST_FILE="official.txt"

kubectl exec "$POD" -c "$CONTAINER1" -- sh -c "echo shared-test > $PATH1/$TEST_FILE"

echo "Checking file is in container: $CONTAINER2"

if kubectl exec "$POD" -c "$CONTAINER2" -- sh -c "test -f $PATH2/$TEST_FILE"; then

    echo "Volume is shared correctly"
    exit 0
else

    echo "Volume is NOT shared."
    exit 1
fi

