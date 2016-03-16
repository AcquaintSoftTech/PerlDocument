#!c:\Perl64\bin\perl
# accessor1.plx
use Person5;
my $object = Person->new (
surname    => "Galilei",
forename   => "Galileo",
address    => "9.81 Pisa Apts.",
occupation => "bombadier"
);
print '$object is a obj', ref $object, " \n";
print "This person's surname: ", $object->surname(), "\n";
print "This person's surname: ", $object->address(), "\n";
$object->address("Campus Mirabilis, Pisa, Italy");
print "New address: ", $object->address(), "\n";