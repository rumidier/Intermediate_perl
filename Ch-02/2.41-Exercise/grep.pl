#!/usr/bin/env perl

use 5.014;
use strict;
use warnings;

# my @lunch_choices = grep &is_edible($_), @gilligans_posessions.
# my @results = grep EXPR, @input_list;
# 반환값을 리스트로 받으면 모든 매치값을 받음
# my $count   = grep EXPR, @input_list;
# 반환값을 스칼라로 받으면 매치된 갯수를 받음

my @input_numbers         = (1, 2, 4, 8, 16, 32, 64);
my @bigger_than_10_list   = grep $_ > 10, @input_numbers;
my $bigger_than_10_scalar = grep $_ > 10, @input_numbers;
my @end_in_4              = grep /4$/, @input_numbers;

say "scalar   : $bigger_than_10_scalar";
say "list     : @bigger_than_10_list";
say "end_in_4 : @end_in_4";
