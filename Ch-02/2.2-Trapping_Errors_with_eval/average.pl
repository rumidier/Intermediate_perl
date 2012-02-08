#!/usr/bin/env perl

use 5.014;
use strict;
use warnings;

my $total = 10;
my $count = 0;
#my $average = $total / $count;
#
#print "okay\n" unless /$match/;
#
#open MINNOW, '>ship.txt'
#or die "Cant't create 'ship.txt': $!";
#
#&implement($_) foreach @rescue_scheme;

eval { my $average = $total / $count };
print "Continunit after error: $@" if $@;

eval { &rescue_scheme_42 };
print "Continuing after error: $@" if $@;

# an average safely looks like this
my $average = eval { $total / $count };
