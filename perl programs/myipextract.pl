#!/usr/bin/perl

use strict;
use warnings;
use 5.014;


open(FILE, $ARGV[0])
	or die "couldnt open file '$ARGV[0]'";
	
if(not defined $ARGV[0]) {
	die "no file given";
}
while(my $row = <FILE>) {
	if($row =~ /(?!0+\.0+\.0+\.0+$)(([01]?\d\d?|2[0-4]\d|25[0-5])\.([01]?\d\d?|2[0-4]\d|25[0-5])\.([01]?\d\d?|2[0-4]\d|25[0-5])\.([01]?\d\d?|2[0-4]\d|25[0-5]))/g) {
		$row =~ tr/0-9. \t\n\r//cd;
		$row =~ s/\s+/\n/g;
		print $row;
	}
}
print "\n";


