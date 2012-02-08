#!/usr/bin/env perl

use 5.014;
use strict;
use warnings;

chdir "/home/meadow/workspace";

while (1) {
    print "Please enter a regular expression> ";
    chomp( my $regex = <STDIN> );
    last unless( defined $regex && length $regex );

    print map { " $_\n" } grep{ eval{ /$regex/ } } glob( ".* *");
}
