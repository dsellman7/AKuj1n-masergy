#!/usr/bin/perl

use strict;
use warnings;
use File::Glob qw(bsd_glob);
use Term::ANSIColor;

my @dirs;
my @dfiles;

sub print_dir {
	my $dir = shift;
	$dir =~ s/\\\s/ /g;
	my @files = bsd_glob("$dir/*");
	foreach my $file(@files) {
		$file =~ s/\/+/\//g;
			if(-d $file == 1) {
				push (@dirs,"-Dir-->  $file");
}
		    if(-d $file == 0) {
				push (@dfiles,$file);
		}
	}
}		
&print_dir(@ARGV);
	
my @sdirs = sort@dirs;
	foreach my $sdir(@sdirs) {
	print color('bold blue');
	print("$sdir\n");
} 
my @sfiles = sort@dfiles;
	foreach my $tfiles(@sfiles) {
	print color('bold yellow');
	print("$tfiles\n");
	print color('reset');
}