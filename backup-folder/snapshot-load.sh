#!/bin/dash

next_backup=0
while true
do
    if [ ! -d ".snapshot.$next_backup" ]; then
        break
    fi
    next_backup=$(( $next_backup+1 ))
done

mkdir .snapshot.$next_backup
for files in `ls`
do
    if [ ! $files = "snapshot-save.sh" ] && [ ! $files = "snapshot-load.sh" ]; then
        cp $files .snapshot.$next_backup
    fi
done

echo "Creating snapshot $next_backup"

for files in `ls`
do
    if [ ! $files = "snapshot-save.sh" ] && [ ! $files = "snapshot-load.sh" ]; then
        rm $files
    fi
done

for files in `ls .snapshot.$1`
do
        cp .snapshot.$1/$files .
done

echo "Restoring snapshot $1"
