#!/bin/sh
for images in *.jpg
do
    filename=`echo "$images" | cut -d'.' -f1`
    if [ -e "$filename.png" ]; then
        echo "$filename.png" already exists >&2
        exit 1
    fi
    convert "$filename.jpg" "$filename.png"
	rm "$filename.jpg"
done
