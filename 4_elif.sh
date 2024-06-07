#!/bin/bash

NUM=$(ip addr show | grep -v LOOPBACK | grep -ic mtu)

if [ $NUM -eq 1 ]
then
    echo "1 Active network interface found"
elif [ $NUM -gt 1 ]
then
    echo "Multiple Active network interface found"
else
    echo "No active network interface found"
fi