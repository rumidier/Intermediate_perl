#!/usr/bin/env perl

use 5.014;
use strict;
use warnings;

#my @results = grep {
#    block;
#    of;
#    code;
#} @input_list;
#
#my $count = grep {
#    block;
#    of;
#    code;
#} @input_list;

my @input_numbers = (1, 2, 4, 8, 16, 32, 62);
my @odd_digit_sum = grep {
    my $input = $_;
    my @digits = split //, $input; # Assume no nondigit characters
    my $sum;

    $sum += $_ for @digits;
    $sum % 2;
} @input_numbers;


my @odd_digit_sum_upgrade = grep {
    my $sum;
    $sum += $_ for split //;
    $sum % 2;
} @input_numbers;

my @odd_digit_sum_exist = grep {
    my $input = $_;
    my $sum += split //, $input;
    $sum % 2;
} @input_numbers;
# 코드 상의 오류로 인한 문제 발생 다른분께도 보여주면 좋을듯
# 활용은 홀수 1, 100, 10000, 자리수들만 골라내는 용도로 괜찮아 보임

say "odd_digit_sum         : [ @odd_digit_sum ]";
say "odd_digit_sum_upgrade : [ @odd_digit_sum_upgrade ]";
say "odd_digit_sum_exist   : [ @odd_digit_sum_exist ]";
