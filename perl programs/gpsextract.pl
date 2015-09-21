#!/usr/bin/perl

use strict;
use warnings;



sub extract {
	my $file = shift;
	open FILE, $file;
	while (my $line = <FILE>) {
		chomp $line;
		while ($line =~ m/({.*})/g) { print $1, "\n"};
	}
}

&extract(@ARGV);