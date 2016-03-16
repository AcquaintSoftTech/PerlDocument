package Person;
# Class for storing data about a person
#person2.pm
use warnings;
use strict;
sub new {
my $self = {};
print '$self is a ', ref $self, " reference\n";
bless ($self, "Person");
print '$self is a ', ref $self, " reference\n";
return $self;
}
1;