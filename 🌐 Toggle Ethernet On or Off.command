#!/bin/bash

# Get the current status of the Ethernet connection
# Change en7 to your network interface
STATUS=$(ifconfig en7 | grep "status:" | awk '{print $2}')

if [ "$STATUS" == "inactive" ]; then
    echo "Turning Ethernet on..."
    sudo ifconfig en7 up
else
    echo "Turning Ethernet off..."
    sudo ifconfig en7 down
fi
