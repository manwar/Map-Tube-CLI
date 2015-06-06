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

eval { Map::Tube::CLI->new };
like($@, qr/Missing required arguments: end, map, start/);

eval { Map::Tube::CLI->new({ map => 'X' }) };
like($@, qr/Missing required arguments: end, start/);

eval { Map::Tube::CLI->new({ map => 'X', start => 'Y' }) };
like($@, qr/Missing required arguments: end/);

eval { Map::Tube::CLI->new({ map => 'X', end => 'Y' }) };
like($@, qr/Missing required arguments: start/);

eval { Map::Tube::CLI->new({ map => 'X', start => 'Y', end => 'Z' }) };
like($@, qr/ERROR: Unsupported map/);

eval { Map::Tube::CLI->new({ map => 'London', start => 'Y', end => 'Z' }) };
like($@, qr/ERROR: Invalid start station/);

eval { Map::Tube::CLI->new({ map => 'London', start => 'Baker Street', end => 'Z' }) };
like($@, qr/ERROR: Invalid end station/);

done_testing();
