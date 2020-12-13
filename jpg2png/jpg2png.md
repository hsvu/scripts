# JPG2PNG

A simple shell script to turn all JPG files in the directory to PNG files.


You do need to download the tool
[convert(1)](https://manpages.debian.org/buster/graphicsmagick-imagemagick-compat/convert.1.en.html){: target="_blank"}
which is basically the backbone of this script.

Not really useful in general considering almost everything
accepts JPG *and* PNG files, but just in case
(or for formatting purposes).

You can find the file [here](https://github.com/hsvu/scripts/blob/main/jpg2png.sh){: target="_blank"}.

You can run this script using the command
```
sh jpg2png.sh
```

Alternatively, run the following command once
```
chmod +x jpg2png.sh
```
and from then on you can run the script using
```
./jpg2png.sh
```

Note: Tested on a device running MacOS Mojave (Version 10.14.4).
