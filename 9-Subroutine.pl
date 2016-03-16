#!c:\Perl64\bin\perl

#Listing 9.1. A program that uses a subroutine.
#$total = 0;
#&getnumbers;
#foreach $number (@numbers) {
#    $total += $number;
#}
#    print ("the total is $total\n");
#sub getnumbers {
#    $line = <STDIN>;
#    $line =~ s/^\s+|\s*\n$//g;
#    @numbers = split(/\s+/, $line);
#}


#Listing 9.4. A program that uses a return value as an array subscript.
#srand();
#print ("Random number tester.\n");
#for ($count = 1; $count <= 100; $count++) {
#$randnum[&intrand] += 1;
#}
#print ("Totals for the digits 0 through 9:\n");
#print ("@randnum\n");
#sub intrand {
#    $num = int(rand(20));
#}


#Listing 9.5. A program illustrating a potential problem with return values from subroutines.
#$total = &get_total;
#print("The total is $total\n");
#sub get_total {
#    $value = 0;
#    $inputline = <STDIN>;
#    $inputline =~ s/^\s+|\s*\n$//g;
#    @subwords = split(/\s+/, $inputline);
#    $index = 0;
#    while ($subwords[$index] ne "") {
#        $value += $subwords[$index++];
#    }
# $value;
#}


##Listing 9.7. A program that uses the return statement.
#$total = &get_total;
#if ($total eq "error") {
#    print ("No input supplied.\n");
#} else {
#    print("The total is $total.\n");
#}
#
#sub get_total {
# $value = 0;
# $inputline = <STDIN>;
# $inputline =~ s/^\s+|\s*\n$//g;
# if ($inputline eq "") {
# return ("error");
#}
#
#@subwords = split(/\s+/, $inputline);
#$index = 0;
#while ($subwords[$index] ne "") {
# $value += $subwords[$index++];
#}
#    $retval = $value;
#}


#$var=4;
#print $var, "\n";
#&sub_routine1;
#print $var, "\n";
#&sub_routine2;
#print $var, "\n";
#
##subroutine
#sub sub_routine1 {
#    local $var = 10;
#    print $var, "\n";
#    &sub_routine2;
#    print $var, "\n";
#}

#sub sub_routine2 {
#    $var++;
#}

#Differce between my, local and global

#sub visible {
#    print "var has value $var\n";
#}
#
#sub dynamic {
#    local $var = 'local';   # new temporary value for the still-global
#    visible();              #   variable called $var
#}
#
#sub lexical {
#    my $var = 'private';
#    # new private variable, $var
#    visible();              # (invisible outside of sub scope)
#}
#
#$var = 'global';
#visible();              # prints global
#dynamic();              # prints local
#lexical();              # prints global


#print &split(20,10,10,20);
#
#sub split {
#    my($total);
#    print ("The numbers you entered: ");
#    print ("$_[0] $_[1] $_[2]\n");
#    $total = $_[0] + $_[1] + $_[2];
#    print ("The total: $total\n");
#}


#Listing 9.10. Another example of a subroutine with arguments passed to it.
#$wordcount = $charcount = 0;
#$charpattern = "";
#$wordpattern = "\\s+";
#while ($line = <STDIN>) {
#    $charcount += &count($line, $charpattern);
#    $line =~ s/^\s+|\s+$//g;
#    $wordcount += &count($line, $wordpattern);
# }
#print ("Totals: $wordcount words, $charcount characters\n");
#
#sub count {
#my ($line, $pattern) = @_;
#my ($count);
#if ($pattern eq "") {
#    @items = split (//, $line);
#} else {
#    @items = split (/$pattern/, $line);
#}
#    $count = @items;
#}
#
#sub a 
#{
#   print "localVar is : $localVar \n"; 
#   print "myVar : $myVar \n"
#}
#
#sub b
#{
#    local ($localVar);
#    my ($myVar);
#    
#    $localVar = "I am localVar.";
#    $myVar = "I am myVar.";
#    print "myVar : $myVar \n";
#    &a;
#}
#
## main
#
#&b;
#print "EXECUTE Command start :";
#exec "dir";
#print "Hello Sir.";


#print "System Command start :";
#system("dir");
#

#$data = `DIR | Date`;
#print "$data";


#sub addlist {
#my (@list) = @_;
#    $total = 0;
#    foreach $item (@list) {
#        $total += $item;
#    }
#        print ("The total is $total\n");
#}
#&addlist ("14", "6", "11");


#Listing 9.11. An example of a nested subroutine.
#!/usr/local/bin/perl

#($wordcount, $charcount) = &getcounts(3);
#print ("Totals for three lines: ");
#print ("$wordcount words, $charcount characters\n");
#sub getcounts {
#    my ($numlines) = @_;
#    my ($charpattern, $wordpattern);
#    my ($charcount, $wordcount);
#    my ($line, $linecount);
#    my (@retval);
#    $charpattern = "";
#    $wordpattern = "\\s+";
#    $linecount = $charcount = $wordcount = 0;
# while (1) {
#    $line = <STDIN>;
#    last if ($line eq "");
#    $linecount++;
#    $charcount += &count($line, $charpattern);
#    $line =~ s/^\s+|\s+$//g;
#    $wordcount += &count($line, $wordpattern);
#    last if ($linecount == $numlines);
# };
#    @retval = ($wordcount, $charcount);
#}
#
#sub count {
# my ($line, $pattern) = @_;
# my ($count);
# if ($pattern eq "") {
# @items = split (//, $line);
# } else {
# @items = split (/$pattern/, $line);
#}
#$count = @items;
#}
#


#@array1 = (1, 2, 3);
#@array2 = (4, 5, 6);
#&two_array_sub (*array1, *array2);
#sub two_array_sub {
#my (*subarray1, *subarray2) = @_;        
#    foreach (@subarray1) {
#        $_= $_+ $_;
#    }
#    print $_;
#}


##Listing 9.13. A program that demonstrates aliasing.
#    $foo = 26;
#    @foo = ("here's", "a", "list");
#    &testsub (*foo);
#    print ("The value of \$foo is now $foo\n");
#
#sub testsub {
#    local (*printarray) = @_;
#    foreach $element (@printarray) {
#    print ("$element\n");
#    }
#    $printarray = 61;
#}

#@data = (1,2,3,4,5,6,5,4,87,41);
#print sort {$a <=> $b}@data;
#
#@data = ('ashish','manish','bhupat','nipul','mukesh','rajesh','vikas','rajendra','ramesh','ahmad');
#print sort {$a cmp $b}@data;

#BEGIN {
#    print("Hi! Welcome to Perl!\n");
#}
#
#die("Prepare to die!\n");
#END {
#    print("Ha! You can't kill me!\n");
#}

#Listing 9.15. A program that uses AUTOLOAD.
&nothere("hi", 46);
AUTOLOAD {
    print("subroutine $AUTOLOAD not found\n");
    print("arguments passed: @_\n");
}
