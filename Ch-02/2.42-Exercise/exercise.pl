#!/usr/bin/env perl

use 5.014;
use strict;
use warnings;

while (1) {
    print "입력값을 입력하시오: ";
    chomp (my $regex = <STDIN>);

    last unless ( defined $regex && length $regex );

    map { say "[$_]"; } grep { eval { /$regex/ } } glob (".* *");
}
