package Person;
# Class for storing data about a person
#person3.pm
use warnings;
use strict;
sub new {
my $class = shift;
print '$class is a ', ref $class, " reference\n";
my $self = { @_ };
print '$self is a ', ref $self, " reference\n";
bless($self, $class);
print '$self is a ', ref $self, " reference\n";
return $self;
}
1;