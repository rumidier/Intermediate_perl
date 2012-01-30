#!/usr/bin/env perl

use 5.014;
use strict;
use warnings;

print 'Two castaways are ', 'Gilligan', ' and', 'Skipper', "\n";

my @castways = sort qw/
  Gilligan
  Skipper
  Ginger Professor
  Mary-Ann
  /;

say "@castways";

@castways = reverse qw/
  Gilligan
  Skipper
  Ginger Professor
  Mary-Ann
  /;

say "@castways";
