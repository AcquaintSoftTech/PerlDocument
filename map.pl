#!c:\Perl64\bin\perl
use Perl6::Junction qw( any );
use Data::Dumper;
my @cat = qw( 1 2 3 4 5 6 7 8 9);
#use strict;

#print scalar @cat;
#
#my @days[3,4,5];
#
#@days{'a','c'};

my @AoA;
#for my $x (1 .. 10) {
#    for my $y (1 .. 10) {
#        for my $z (1 .. 10) {
#            print "value x - $x \n";
#            print "value y - $y \n";
#            print "value z - $z \n";
#            $AoA[$x][$y][$z] = $x ** $y + $z;
#            print "$AoA[$x][$y][$z]\n";
#        }
#    }
#}

my @array = [];
my %hash ={};

#$array[7][12];                   #    # array of arrays
#$array[7]{string};                   # array of hashes
#$hash{string}[7];                    # hash of arrays
#$hash{string}{'another string'};     # hash of hashes

    @AoA = ( [2, 3], [4, 5, 7], [0] );
    #print $AoA[1][2]."\n";
    #print $AoA[1][1]."\n";
    #print $AoA[0][0]."\n";
    #print @AoA."\n";


#for my $i (1..10) {
#    my @array = somefunc($i);
#    $AoA[$i] = scalar @array;      # WRONG!
#    print "AoA : $AoA[$i]\n";
#}
#
#for my $i (1..10) {
#    @array = somefunc($i);
#    $AoA[$i] = [ @array ];
# }


#for my $i (1..10) {
#    @array = 0 .. $i;
#    #print "$i\n";
#    #print "@array \n";
#    #@{$AoA[$i]} = @array;    
#    #print "@{$AoA[$i]} \n";
#    #print "Data Value :",Dumper(@AoA),"\n";
#
#    $AoA[$i] = [ @array ];     # usually best
#    $AoA[$i] = \@array;        # perilous; just how my() was that array?
#    @{ $AoA[$i] } = @array;    # way too tricky for most programmers
#    print "Data Value\$AoA\[\$i\]-1 :",Dumper($AoA[$i]),"\n";
#    print "Data Value\$AoA\[\$i\]-2 :",Dumper($AoA[$i]),"\n";
#    print "Data Value@\{ \$AoA[\$i] }-3 :",Dumper(@{ $AoA[$i] }),"\n";
#}


#my $aref = [
#    [ "fred", "barney", "pebbles", "bambam", "dino", ],
#    [ "homer", "bart", "marge", "maggie", ],
#    [ "george", "jane", "elroy", "judy", ],
#  ];

#foreach (0.. scalar $aref) {
#    print "$$aref[$_][$_]\n";
#}
  
  #print "Data Value : ", Dumper($$aref[0][4]),"\n";

#$aref->[2][2]       # clear
#$$aref[2][2]        # confusing




#my $all_cats = \@cat;
#
#print " All values : ", Dumper($all_cats), "\n";
#
#print " Dreference All values : ", @$all_cats, "\n";
#
#my @cats_filtered = grep { $_->{id} eq any( qw(1 2 3 4) )} @$all_cats;
#
#print "Hello Dumper : ", Dumper(@cats_filtered), "\n";
#
##my @cats_filtered = qw(1 2 3 4);
#
#my @cat_ids = map { $_->{id} } @cats_filtered;
#
#foreach (@cat_ids) {
#
#print "category : $_ \n";
#    
#}


@AoA = (
    [ "fred", "barney" ],
    [ "george", "jane", "elroy" ],
    [ "homer", "marge", "bart" ],
);

## reading from file
#while ( <> ) {
#    push @AoA, [ split ];
#}
#
# # calling a function
# for $i ( 1 .. 10 ) {
#     $AoA[$i] = [ somefunc($i) ];
# }
#
# # using temp vars
# for $i ( 1 .. 10 ) {
#     @tmp = somefunc($i);
#     $AoA[$i] = [ @tmp ];
# }
#
# # add to an existing row
# push @{ $AoA[0] }, "wilma", "betty";
# 
# print "Data Value :", Dumper(@AoA),"\n";


#	 # one element
#	 $AoA[0][0] = "Fred";
#	
#	 # another element
#	 $AoA[1][1] =~ s/(\w)/\u$1/;
#	
#	 # print the whole thing with refs
#	 for $aref ( @AoA ) {
#     print "\t [ @$aref ],\n";
#	 }
#	
#	 # print the whole thing with indices
#	 for $i ( 0 .. $#AoA ) {
#	     print "\t [ @{$AoA[$i]} ],\n";
#	 }
#	
#	 # print the whole thing one at a time
#	 for $i ( 0 .. $#AoA ) {
#	     for $j ( 0 .. $#{ $AoA[$i] } ) {
#	         print "elt $i $j is $AoA[$i][$j]\n";
#	     }
# }
#



my @tgs = (
    ['article series', 'sed & awk', 'troubleshooting', 'vim', 'bash'],
    ['ebooks', 'linux 101', 'vim 101', 'nagios core', 'bash 101' ]
);

print "$0 \n";

foreach ( @tgs ) {
    foreach (@$_) {
        print $tgs[$_][$_]."\n";        
    }
}
