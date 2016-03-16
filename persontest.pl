#/usr/bin/perl
# persontest.plx
use warnings;
use strict;
use Person2;
my $person = Person->new();
print '$person is a ', ref $person, " reference\n";
