#!/usr/bin/perl
use File::Copy;

$next_backup = 0;
$filename = $ARGV[0];
while ('true'){
    if ( ! -e ".${filename}.${next_backup}"){
        last;
    }
    $next_backup++;
}

copy($filename, ".${filename}.${next_backup}");

print "Backup of '$filename' saved as '.$filename.$next_backup'\n"
