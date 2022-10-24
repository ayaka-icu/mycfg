#! /usr/bin/env sh
# this is a example of .lessfilter, you can change it
mime=$(file -bL --mime-type "$1")
category=${mime%%/*}
if [ -d "$1" ]; then
    ls --color=always "$1"
elif [ "$category" = text ]; then
    bat -p --color=always "$1" | head -100
elif [ "$category" = image ]; then
    img2txt "$1"
fi
