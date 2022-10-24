#!/bin/bash


# Usage: focus-window.sh [命令] [hyprland：window class name]
# focus-window.sh kitty kitty

s1=`hyprctl clients | grep -3 "($3)"`
s2=$(echo "$s1" | grep class:\ "$2")
echo "$s1"
echo "$s2"

if [ -z $s2 ];then
    hyprctl dispatch workspace $3
    hyprctl dispatch exec $1
else
    #hyprctl dispatch focuswindow "$2"
    hyprctl dispatch workspace $3
fi

