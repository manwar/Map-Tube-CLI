#!/usr/bin/perl

use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME               => 'Map::Tube::CLI',
    AUTHOR             => q{Mohammad S Anwar <mohammad.anwar@yahoo.com>},
    VERSION_FROM       => 'lib/Map/Tube/CLI.pm',
    ABSTRACT_FROM      => 'lib/Map/Tube/CLI.pm',
    LICENSE            => 'artistic_2',
    EXE_FILES          => [ 'script/map-tube' ],
    PL_FILES           => {},
    MIN_PERL_VERSION   => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES      => {
        'Test::More'    => '1.001014',
        'Capture::Tiny' => '0.28',
    },
    PREREQ_PM                  => {
        'Types::Standard'      => '1.000005',
        'MooX::Options'        => '4.018',
        'Module::Pluggable'    => '5.1',
        'Moo'                  => '2.000000',
        'namespace::clean'     => '0.24',
        'MIME::Base64'         => '3.14',
        'Map::Tube::Exception' => '3.03',
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Map-Tube-CLI-*' },
    (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (META_MERGE => {
        'meta-spec' => { version => 2 },
        resources => {
            repository => {
                type => 'git',
                url  => 'https://github.com/Manwar/Map-Tube-CLI.git',
                web  => 'https://github.com/Manwar/Map-Tube-CLI',
            },
        }})
     : ()
    ),
);
