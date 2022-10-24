#!/bin/bash
pids=$(pgrep -f wofi)
arr=(${pids// / })
echo $arr
if [ ${#arr[@]} -ge 2 ];then
	for i in $arr; do
		kill $i
	done
else
	exec wofi $@
fi

