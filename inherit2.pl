#!c:Perl64\bin\perl
# inherit2.plx
use warnings;
use strict;
use Employee2;

my $object = Employee->new (
    surname    => "Galilei",
    forename   => "Galileo",
    address    => "9.81 Pisa Apts.",
    occupation => "bombadier"
);

$object->salary("12000");
$object->position("SSE");

print "Initial salary: ", $object->salary, "\n";
print "Salary after raise: ", $object->raise->position, "\n";