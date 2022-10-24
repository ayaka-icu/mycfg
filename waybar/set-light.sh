#!/bin/bash
now=$(light -G)
i=${now%.*}
f=${now#*.}
if [ "$1" == "up" ]; then
	doas light -S `expr $i + 1`.$f
elif [ "$1" == "down" ]; then
	doas light -S `expr $i - 1`.$f
fi