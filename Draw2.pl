#!\c:\Perl64\bin\perl

use strict;
use warnings;
use feature qw/say/;
use Circle;

my $circle = Circle->new;

say $circle->get_datetime;
say $circle->get_radius;

#my $circle = Circle->new;
#
##get datetime - inherited method
#say $circle->get_datetime;
#
## try new Circle methods
#say $circle->get_radius;
#say $circle->get_circumfrence;
#say $circle->get_area;


