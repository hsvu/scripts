#!/usr/bin/perl
use File::Copy;

$next_backup = 0;
$cmd=$ARGV[0];
while ('true') {
    if ( ! -e ".snapshot.${next_backup}") {
        last;
    }
    $next_backup++;
}

mkdir(".snapshot.${next_backup}");

my @files = <*>;
foreach my $file (@files) {
    if ($file ne "snapshot.pl"){
        copy($file, ".snapshot.${next_backup}");
    }
}

print "Creating snapshot $next_backup\n";

if ($cmd eq "load"){
    $snapshot_num=$ARGV[1];

    my @files = <*>;
    foreach my $file (@files) {
        if ($file ne "snapshot.pl"){
            unlink($file);
        }
    }

    my @files = <.snapshot.${snapshot_num}/*>;
    foreach my $file (@files) {
        copy($file, ".");
    }

    print "Restoring snapshot $snapshot_num\n"
