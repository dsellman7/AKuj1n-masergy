#!/usr/bin/perl

use strict;
use warnings;

if ($ARGV[0] eq undef) {
	print ("--->Please give a pattern then file name to search as command line arguments...<---\n");
	exit;
}

sub grep_file {
	my $pattern = shift;
	my $file = shift;
	open FILE, $file;
	while (my $line = <FILE>) {
		chomp $line;
		while ($line =~ m/$pattern/g) { print $line, "\n"};
	}
}

&grep_file(@ARGV);

