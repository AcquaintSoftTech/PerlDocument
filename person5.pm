package Person;
# Class for storing data about a person
#person5.pm
use warnings;
use strict;
use Carp;
sub new {
my $class = shift;
my $self = {@_};
bless($self, $class);
return $self;
}

sub surname {
my $self = shift;
unless (ref $self) {
croak "Should call surname() with an object, not a class";
}
return $self->{surname};
}


sub address {
    my $self = shift;
    unless (ref $self) {
        croak "Should call address() with an object, not a class";
    }
    # Receive more data
    my $data = shift;
    # Set the address if there's any data there.
    print '$data update address: ', $data, "\n";
    $self->{address} = $data if defined $data;
    print '$self->{address} update address: ', $self->{address}, "\n";
    return $self->{address};
}


1;