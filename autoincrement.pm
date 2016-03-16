package Autoincrement;
#autoincrement.pm
use warnings;
use strict;
sub TIESCALAR {
    my $class = shift; # No parameters
    my $realdata = 0;
    return bless \$realdata, $class;
}

sub FETCH {
my $self = shift;
return $$self++;
}

1;