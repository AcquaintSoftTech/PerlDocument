#!c:\Perl64\bin\perl

use strict;
use warnings;
use feature qw /say/;
use Shape;
use Time::Piece;

## create a new Shape Object
#my $shape = Shape->new;

# pass colorm length and width arguments to the constructor
#my $shape = Shape->new({
#    color => 'red',
#    length => 2,
#    width => 2,
#});

# pass color, length and width arguments to the constructor
#my $red_shape = Shape->new({
#    color => 'red',
#});

# use the default attribute value
#my $black_shape = Shape->new;

#print the shape object attributes
#say $red_shape->{color};
#say $black_shape->{color};

#Dynamically adding attributes

#$red_shape = Shape->new({
#    color => 'red',
#    length => 2,
#    width => 2,
#});

# calculate the area of $red_shape
#my $area = $red_shape->{length} * $red_shape->{width};

#insert the area attribute and value into $red_shape
#$red_shape->{area} = $area;

#say $red_shape->{area};

#say $red_shape->get_area;

# pass color argument to the constructor
#my $shape = Shape->new({
#    color => 'red',
#});

# print the shape color using get_color method
#say $shape->get_color;

# set the shape color to blue
#$shape->set_color('blue');

# print the shape color using get_color method
#say $shape->get_color;

my $shape = Shape->new;

# get datetime;
say $shape->get_datetime;



