#!c:\Perl64\bin\perl
# classatr1.plx
use warnings;
use strict;
use Person6;

print "In the beginning: ", Person->headcount, "\n";

my $object = Person->new (
    surname    => "Galilei",
    forename   => "Galileo",
    address    => "9.81 Pisa Apts.",
    occupation => "bombadier"
);
print "Population now: ", Person->headcount, "\n";
print "Surname now: ", $object->surname(), "\n";
print "forename now: ", $object->forename(), "\n";
print "address now: ", $object->address(), "\n";
print "occupation now: ", $object->occupation(), "\n";


my $object2 = Person->new (
    surname    => "Einstein",
    forename   => "Albert",
    address    => "9E16, Relativity Drive",
    occupation => "Plumber"
);

print "Population now: ", Person->headcount , "\n";
print "Surname now: ", $object2->surname(), "\n";
print "forename now: ", $object2->forename(), "\n";
print "address now: ", $object2->address(), "\n";
print "occupation now: ", $object2->occupation(), "\n";

print "Population now: ", Person->headcount, "\n";