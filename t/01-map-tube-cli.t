#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Capture::Tiny ':all';
use Map::Tube::CLI;
use Test::More;

my $min_tcm = 0.72;
eval "use Map::Tube::London $min_tcm";
plan skip_all => "Map::Tube::London $min_tcm required" if $@;

is(capture_stdout { Map::Tube::CLI->new({ map => 'London', start => 'Baker Street', end => 'Euston Square' })->run },
   "Baker Street (Circle, Hammersmith & City, Bakerloo, Metropolitan, Jubilee), Great Portland Street (Circle, Hammersmith & City, Metropolitan), Euston Square (Circle, Hammersmith & City, Metropolitan)\n");

done_testing();
