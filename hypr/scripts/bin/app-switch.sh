#!/bin/bash
# Usage: app-switch.sh [path] [name]
pid=$(pidof $2)
if [ ! -z $pid ];then
	killall $2
else
	exec $1 
fi

