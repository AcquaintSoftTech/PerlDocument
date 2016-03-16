#!c:\Perl64\bin\perl
# utility1.plx
use warnings;
use strict;
use Person9;
my $object = Person->new (
surname    => "Galilei",
forename   => "Galileo",
address    => "9.81 Pisa Apts.",
occupation => "bombadier"
);
$object->printletter("I Love My india.","You owe me money. Please pay it.");