#!/usr/bin/env perl

use 5.014;
use strict;
use warnings;

#my @under_size_1000 = grep -s $_ > 1000, @ARGV;
#
#my @four_space = map "    $_\n", @under_size_1000;
#say @under_size_1000;
#say @four_space;

my @smaller_than
print map { " $_\n" } grep { -s < 1000 } @ARGV;
