#!perl

use strict;
use warnings;

use Test::NeedsDisplay ':skip_all';
use Test::More;

plan tests => 1;

use_ok('Padre::Plugin::Perl6');
diag("Testing Padre::Plugin::Perl6 $Padre::Plugin::Perl6::VERSION, Perl $], $^X");
