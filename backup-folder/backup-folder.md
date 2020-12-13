# Backing up a folder"

A shell AND perl script (just in case you prefer one over the other)
to create a snapshot of the current state of your ENTIRE FOLDER.

Useful when you make too many mistakes and you want to
roll back to a previous version to start fresh.
Or just to keep a copy on your progress, I'm not judging.

## Shell
There are two scripts written in shell.

`snapshot-save.sh` will essentially "save" your folder and create a backup folder.

`snapshot-load.sh` will create a backup of your current folder
**AND** RE-WRITE over your current folder with a previous backed up version.

### snapshot-save.sh
You can find the file [here](https://github.com/hsvu/scripts/blob/main/backup-folder/snapshot-save.sh).

You can run this script using the command
```
sh snapshot-save.sh
```

Alternatively, run the following command once
```
chmod +x snapshot-save.sh
```
and from then on you can run the script using
```
./snapshot-save.sh
```

### snapshot-load.sh
You can find the file [here](https://github.com/hsvu/scripts/blob/main/backup-folder/snapshot-load.sh).

You can run this script using the command
```
sh snapshot-load.sh <number associated with snapshot>
```
e.g. `sh snapshot-load.sh 0` will load `.snapshot.0`

Alternatively, run the following command once
```
chmod +x snapshot-load.sh
```
and from then on you can run the script using
```
./snapshot-load.sh <number associated with snapshot>
```

---
## Perl
The perl script is similar to the shell script except it's all compiled in
a single file.

You can find the file [here](https://github.com/hsvu/scripts/blob/main/backup-folder/snapshot.pl).

To back up your folder, you need to run
```
perl snapshot.pl save
```

To load a previous version, you need to run
```
perl snapshot.pl load <number associated with snapshot>
```

Alternatively, run the following command once
```
chmod +x snapshot.pl
```
and from then on you can run the script using
```
./snapshot.pl save
./snapshot.pl load <number associated with snapshot>
```

Note: Tested on a device running MacOS Mojave (Version 10.14.4).
