#!c:\Perl64\bin\perl

use strict;
use warnings;
use 5.010;
 
my $str = "The black cat climbed the green tree";
#say index $str, 'cat';             # 10
#say index $str, 'dog';             # -1
#say index $str, "The";             # 0
#say index $str, "the";             # 22

say substr $str, 4, 1;

$str = "The black cat climbed the green tree";
say substr $str, 4, 4;   

my @names = ('Ashish','Nirav','Nipul','Jatin','Tejas','Pratik','Dilip');

my %name_sort;

foreach my $var (@names) {
   my $chr = substr $var, 2,1;
    $name_sort{"$chr"} = "$var";
}

my @new_array;
foreach my $key (sort keys %name_sort) {
    push(@new_array,$name_sort{$key});
}

say @new_array;

my @data = system('dir');

#my @data = exec('dir');

say "Hello Mam \n";
#my $data = `dir`;
#say $data;
#my @data = split(/\n/,$data);
#say scalar @data;
#say $data[40];