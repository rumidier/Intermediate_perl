#!/usr/bin/env perl

use 5.014;
use strict;
use warnings;

my $sum;
eval '$sum = 2 + 2';
print "The sum is $sum\n";

foreach my $operator ( qw( + - * / ) ) {
    my $result = eval "2 $operator 2";
    print "2 $operator 2 is $result\n";
}

print 'The quotient is ', eval '5 /', "\n";
warn $@ if $@;
