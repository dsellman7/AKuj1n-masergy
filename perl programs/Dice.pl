#!/usr/bin/perl

use warnings;
use strict;

print "\n\n=======Dice Roller======\n\n";
print "How many sides on the die?\n";
my $sides = <>;
chomp($sides);
print "What is the modifier?\n";
my $mod = <>;
chomp($mod);
print "========================\n\n";


my ($roll, $mroll) = &droll($sides, $mod);
		

print "Your roll is $roll\n";
print "With a modifier of $mod\n";
print "========================\n\n";
print "Your final roll is $mroll\n\n";


sub droll {
	my $fsides = shift;
	my $fmod = shift;
	my $roll = int(rand($fsides));
	my $mroll = $roll + $fmod;
	return ($roll, $mroll);
}
