#!/usr/bin/env perl

use 5.014;
use strict;
use warnings;
use Data::Dumper;

my @input_numbers = (1, 2, 4, 8, 16, 32, 64);

my @result        = map $_ + 100, @input_numbers;
my $result_scalar = map $_ + 100, @input_numbers;
my @result_map    = map { $_, 3 * $_ } @input_numbers;
my %hash          = map { $_, 3 * $_ } @input_numbers;
my @result_split  = map { split //, $_ } @input_numbers;
my @result_digit  = map {
    my @digits = split //, $_;
    if ($digits[-1] == 4) {
        @digits;
    } else {
        ();
    }
} @input_numbers;


say "result        : @result";
say "result_scalar : $result_scalar";
say "result_map    : @result_map";
say Dumper \%hash;
say "result_split  : @result_split";
say "result_digit  : @result_digit";
