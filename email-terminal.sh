#!/bin/sh
for file in "$@"
do
	echo -n "Address to e-mail these documents to? "
	read email
	echo -n "Message to accompany documents? "
	read message

    echo $message | mutt -s $file -e 'set copy=no' -a $file -- $email
	echo "$file sent to $email"
done
