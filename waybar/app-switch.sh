#!/bin/bash


# Usage: app-switch.sh [path] [name]
pid=$(pidof $2)
if [ ! -z $pid ];then
	kill $pid
else
	exec $1 
fi

