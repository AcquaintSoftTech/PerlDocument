package Person;
# Class for storing data about a person
#person4.pm
use warnings;
use strict;
sub new {
my $class = shift;
print '$class is a ', $class, " \n";
my $self = {@_};
print '$self is a ', ref $self, " \n";
bless($self, $class);
print '$self is a new ', ref $self, " \n";
return $self;
}

sub surname {
my $self = shift;
print '$self is a sur', ref $self, " \n";
print '$self->{surname} is a sur ', $self->{surname}, " \n";
return $self->{surname};
}
1;