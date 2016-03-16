#!c:\Perl64\bin\perl

use strict;
use warnings;
use Introduction;

my $into = Introduction->new;

$into->set_fname('ASHISH');
$into->set_lname('GUPTA');
$into->set_contact('9409149197');

$into->set_age(6);

$into->print;

print $into->get_age; print "\n";
print $into->get_contact;
