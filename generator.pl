#! /usr/bin/perl -slw
use strict;
use Math::Random::MT qw[ rand srand ];

sub n2dd { join '.', unpack 'C4', pack 'N', $_[0]   }

our $N //= 50e3;
our $S //= 1;

srand( $S );

my %uniq;

for( 1 .. $N ) {
    my $bits = 8 + int( rand( 8 ) + rand( 8 ) + rand( 8 ) );
    my $ip   = int( rand( 2 **32 ) );
    $ip &= ~( ( 1 << ( 32 - $bits ) ) -1 );
    $ip = n2dd( $ip );
    my $cidr = "$ip/$bits";
    redo if exists $uniq{ $cidr };
    $uniq{ $cidr } = undef;
    print $cidr;
}

