# Backing up a file"

A shell AND perl script (just in case you prefer one over the other)
to create a snapshot of the current state of your file.

Useful when you make too many mistakes and you want to
roll back to a previous version to start fresh.
Or just to keep a copy on your progress, I'm not judging.

## Shell
You can find the file [here](https://github.com/hsvu/scripts/blob/main/backup-file/backup-file.sh).

You can run this script using the command
```
sh backup-file.sh <file>
```

Alternatively, run the following command once
```
chmod +x backup-file.sh
```
and from then on you can run the script using
```
./backup-file.sh <file>
```

---
## Perl
You can find the file [here](https://github.com/hsvu/scripts/blob/main/backup-file/backup-file.pl).

You can run this script using the command
```
perl backup-file.pl <file>
```

Alternatively, run the following command once
```
chmod +x backup-file.pl
```
and from then on you can run the script using
```
./backup-file.pl <file>
```

Note: Tested on a device running MacOS Mojave (Version 10.14.4).
