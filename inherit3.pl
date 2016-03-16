#!c:\Perl64\bin\perl
# inherit3.plx
use warnings;
use strict;
use Employee3;

my $dilbert = Employee->new (
    surname    => "Dilbert",
    employer   => "Dogbert",
    salary     => "43000"
);

print "SurName :", $dilbert->surname, "\n";
print "employer :", $dilbert->employer->surname, "\n";
print "salary :", $dilbert->salary, "\n";

my $boss = $dilbert->employer;
$boss->address("3724 Cubeville");

print "Address :", $boss->address, "\n";
print "employer :", $boss->surname, "\n";


my $dogbert = Employee->new (
surname    => "Dogbert",
employer   => "PHB",
salary     => $dilbert->salary*2
);
$dilbert->employer($dogbert);


print "surname :", $dogbert->surname, "\n";
print "employer :", $dogbert->employer->surname, "\n";
print "salary :", $dogbert->salary, "\n";