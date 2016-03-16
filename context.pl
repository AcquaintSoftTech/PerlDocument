#!c:\Perl64\bin\perl

use Data::Dumper;

# Example 1.
# @now will be (40, 51, 20, 9, 0, 109, 5, 8, 0)
#@now = localtime();
#
#print Dumper(@now);
##print @now;
#
## Example 2.
## $now will be "Fri Jan  9 20:51:40 2009"
#$now = localtime();
#
#print Dumper($now);
#
##system `perl -e "@now = localtime(); for $now(@now) {print $now;}"`
#
#my ($x) = localtime();     # Example 4
#print Dumper($x);
#
#my $x = localtime();       # Example 5
#print Dumper($x);
#
#my %h = ( now => localtime() );
#print "Hash Value".$h{now};
#
#%h = ( now => scalar localtime() );
#print "Hash Value".$h{now};
#
#
#%h = ( now => [ localtime() ] );
#print "Hash Value Array".$h{now};
#my @data_name = @{$h{now}};
#print "Update-Time-data". @data_name;

my @list = (1, 2, 3);
my $scalar1 = "hello";
my $scalar2 = "there";
my @newlist = @list;

#@newlist = @list[1,2];
#print @newlist;
#print "\n";
#
#@newlist = reverse(@list[1,2]);
#print @newlist;
#print "\n";
#
#@newlist = ($scalar1, @list[1,1]);
#print @newlist;
#print "\n";
#
#(my $dummy, @newlist) = @list;
#print @newlist;
#print "\n";
#print $dummy;
#print "\n";

#@newlist[2,1,3] = @list[1,2,1];
#print @newlist;
#
#print "\n";


#my $hashArrayRef;
#
#$hashArrayRef = [{
#              'dateOfBirh' => '22 March 1971',
#              'firstName' => 'Ronnie',
#              'lastName' => 'Smith'
#            },
#            {
#              'timeNow' => '14 April 1972',
#              'firstName' => 'Claudia',
#              'lastName' => 'Winkleman'
#            }];
#
#        
#print Dumper(\$hashArrayRef);
#print "\n";
#            
#my @deRefHashArray = @$hashArrayRef;
#
#print Dumper(@deRefHashArray);
#print "\n";
#print scalar @deRefHashArray;
#print "\n";
#
#my %resultHash;
#my    $countResult =     $#deRefHashArray;
#print $countResult;
#print "\n";
#
#for (my $counter = 0; $counter < $countResult; $counter++) {
#        %resultHash = {$deRefHashArray[$counter]};
#        while ( my ($key, $value) = each(%resultHash) ) {
#        print "$key => $value\n";
#    }
#}


use sort 'stable';

@old = ('Ashish', 'Manish','Abhishek','Abam','Mamta');
#@new = sort { substr($a, 3, 5) cmp substr($b, 3, 5) } @old;
#@new = sort {$a cmp $b } @old;
@sorted = map { $_->[2] } @old;

Hari, Mahesh , Kabir
sort Mahesh, Hari

print @sorted;