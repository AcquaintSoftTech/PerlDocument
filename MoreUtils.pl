#!c:\Perl64\bin\perl

    use strict;
    use warnings;
    use 5.010;
    #use List::MoreUtils qw(first_index);
    # 
    #my @planets = qw(
    #   Mercury
    #   Venus
    #   Earth
    #   Mars
    #   Ceres
    #   Jupiter
    #   Saturn
    #   Uranus
    #   Neptune
    #   Pluto
    #   Charon
    #);
    # 
    #say first_index { $_ eq 'Mars' } @planets;
    
    
    #example 2.
    
       
    #my @planets = qw(
    #   Mercury
    #   Venus
    #   Earth
    #   Mars
    #   Ceres
    #   Jupiter
    #   Saturn
    #   Uranus
    #   Neptune
    #   Pluto
    #   Charon
    #);
    # 
    #use List::MoreUtils qw(first_index);
    # 
    #my @input = qw(Mars Pluto Ashish Venus);
    # 
    #my @indexes;
    #foreach my $place (@input) {
    #    push @indexes, first_index { $_ eq $place } @planets;
    #}
    # 
    #use Data::Dumper qw(Dumper);
    #print Dumper \@indexes;
    #
    #foreach my $val (@indexes) {
    #    say $planets[$val];
    #}
    #
    #my ($index) = grep { $planets[$_] eq 'Mars' } (0 .. @planets-1);
    #say defined $index ? $index : -1;
    #
    #    my %planet_index = map { $planets[$_] => $_ } reverse 0 .. @planets-1;
    #my @idxs = map { $planet_index{$_} // -1 } @input;
    #
    #say dumper(%planet_index);
    #say dumper(@idxs);
    
    
    my @numbers = (1..5);
    print "@numbers\n";       # 1 2 3 4 5
    my @doubles = map {$_ * 2} @numbers;
    print "@doubles\n";       # 2 4 6 8 10
    
    
    my @squares = map { $_ * $_ } @numbers;
     print "@squares\n";
     
    #my $counter ;
    #sub count {
    #state $counter = 0;
    #$counter++;
    #return $counter;
    #}
    # 
    #say count();
    #say count();
    #say count();
    # 
    #say $counter;
    
    
    sub count {
    state $counter = say "world";
    $counter++;
    return $counter;
    }
    
    #say "myName";
    #say "hello";
    say count();
    say count();
    say count();
        