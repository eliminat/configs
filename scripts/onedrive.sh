#!/bin/bash

if ps -C onedrive >/dev/null
    then 
        echo "OneDrive is running"
    else
        onedrive --force-http-2 --monitor --force &> ~/logs/onedrivepersonal.log &
        onedrive --force-http-2 --monitor --force --confdir="~/.config/OneDriveWork" &> ~/logs/onedrivework.log &
fi
