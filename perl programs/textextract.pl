#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

my @ips;
my $iplisting;

open(FILE, $ARGV[0])
	or die "couldnt open file '$ARGV[0]'";
if(not defined $ARGV[0]) {
	die "no file given";
}
while(my $row = <FILE>) {
	while($row =~ /(\d+\.\d+\.\d+\.\d+)/g) {
		my $myip = $1;
		push@ips, $myip;
	}
}
my @sortedips = sort { $a <=> $b } @ips;
foreach $iplisting(@sortedips) {
	print $iplisting, "\n";
}
close FILE;

