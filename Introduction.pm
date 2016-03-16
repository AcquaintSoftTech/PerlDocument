package Introduction;

use strict;
use warnings;

sub new {
    my($class,$args) = @_;
    my $self = {
        fname => $args->{fname},
        lname => $args->{lname},
        class => $args->{class},
        age   => $args->{age},
        contact => $args->{contact},
    };
    return bless $self,$class;
}


#Accessor methods
sub get_fname {
    my $self = shift;
    return $self->{fname};
}

sub set_fname {
    my ($self,$fname) = @_;
    $self->{fname} = $fname;
}


sub get_lname {
    my $self = shift;
    return $self->{lname};
}

sub set_lname {
    my ($self,$lname) = @_;
    $self->{lname} = $lname;
}

sub get_class {
    my $self = shift;
    return $self->{class};
}

sub set_class {
    my ($self,$class) = @_;
    $self->{class} = $class;
}

sub get_age {
    my $self = shift;
    return $self->{age};
}

sub set_age {
    my ($self,$age) = @_;
    $self->{age} = $age;
}


sub get_contact {
    my $self = shift;
    return $self->{contact};
}

sub set_contact {
    my ($self,$contact) = @_;
    $self->{contact} = $contact;
}

sub print {
    my $self = shift;
    my $name = $self->{fname}.' '.$self->{lname};
    print "Name : $name \n";
}


1;