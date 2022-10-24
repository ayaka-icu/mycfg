#!/bin/bash
now=$(light -G)
i=${now%.*}
f=${now#*.}
if [ "$1" == "up" ]; then
	light -S `expr $i + 3`.$f
elif [ "$1" == "down" ]; then
	 light -S `expr $i - 3`.$f
fi
