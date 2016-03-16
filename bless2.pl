#!c:\Perl64\bin\perl
# bless2.plx
use warnings;
use strict;
my $a = {};

print '$a is a ', ref $a, " reference\n";
bless($a, "Person");
print '$a is a ', ref $a, " reference\n";
bless($a, "Animal::Vertebrate::Mammal");
print '$a is a ', ref $a, " reference\n";

my $attribute = "green";
my $object = \$attribute;
print '$object is a ', ref $object, " reference\n";
bless($object, "Simple");
print '$object is a ', ref $object, " reference\n";


my $object2 = {
surname    => "Galilei",
forename   => "Galileo",
address    => "9.81 Pisa Apts.",
occupation => "bombadier",
};
print '$object2 is a ', ref $object2, " reference\n";
bless $object2, "Person";
print '$object2 is a ', ref $object2, " reference\n";