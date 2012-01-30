#!/usr/bin/env perl

use 5.014;
use strict;
use warnings;

my @input_numbers = (1, 2, 4, 8, 16, 32, 64);
my @odd_digit_sum = grep digit_sum_is_odd($_), @input_numbers;

say "odd_digit_sum : @odd_digit_sum";

sub digit_sum_is_odd {
    my $input = shift;
    my @digits = split //, $input;
    my $sum;
    $sum += $_ for @digits;

    return $sum % 2;
}
