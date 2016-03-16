#!c:\Perl64\bin\perl
# inherit1.plx
use warnings;
use strict;
use Employee1;

my $object = Employee->new (
surname    => "GUPTA",
forename   => "ASHISH",
address    => "I-202, Binori Park Ridge, Near Bopal Lake, Bopal.",
occupation => "Software Engineer"
);
$object->printletter("You owe me money. Please pay it.");