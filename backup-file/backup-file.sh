#!/bin/sh
next_backup=0
filename=$1
while true
do
    if [ ! -f ".$filename.$next_backup" ]; then
        break
    fi
    next_backup=$(( $next_backup+1 ))
done

cp $filename .$filename.$next_backup
echo "Backup of '$filename' saved as '.$filename.$next_backup'"
