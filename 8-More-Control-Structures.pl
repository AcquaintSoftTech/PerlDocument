#!c:\Perl64\bin\perl

#Listing 8.1. A program that uses single-line conditional statements to copy one file to another.
#die ("Can't open input\n") unless (open(INFILE, "infile"));
#die ("Can't open output\n") unless (open(OUTFILE, ">outfile"));
#print OUTFILE ($line) while ($line = <INFILE>);
#close (INFILE);
#close (OUTFILE);

#Listing 8.2. A program that loops using a single-line conditional statement.
#$count = 7;
#print ("IF - $count\n") if ($count++ < 5);
#print ("Unless - $count\n") unless ($count++ < 5);
#print ("Until - $count\n") until ($count++ < 5);
#print ("While - $count\n") while ($count++ < 5);


#$count =1;
#while($count <= 5){
#    print $count."\n";
#    $count++;
#}

#for($count=1;$count<=5;$count++){
#    print $count."\n";
#}

#when you forget $count++ then that going to infinite
#for ($count = 1; $count <= 5; ) {
#print ("$count\n");
#}

#$line = <STDIN>;
#$count = 1;
#while ($count <= 3) {
#    print ($line);
#    $line = <STDIN>;
#    $count++;
#}


#for ($line = <STDIN>, $count = 1; $count <= 3;
#    $line = <STDIN>, $count++) {
#    print ($line);
#}

#Listing 8.5. A demonstration of the foreach statement.
#@words = ("Here", "is", "a", "list.");
#foreach $word (@words) {
#    print ("$word\n");
#}

#Listing 8.6. A program that uses the same name inside and outside a foreach statement.
#$temp = 1;
#@list = ("This", "is", "a", "list", "of", "words");
#print ("Here are the words in the list: \n");
#foreach $temp (@list) {
#    print ("$temp ");
#    print ("\n");
#}
#print("\n");
#print("The value of temp is now $temp\n");


#@list = (1, 2, 3, 4, 5);
#foreach $temp (@list) {
#    if ($temp == 2) {   
#        $temp = 20;
#    }
#}
#print @list;

#
#foreach $temp ("This", "is", "a", "list") {
#print("$temp ");
#}


#Listing 8.7. A program that prints out the words in a line in reverse-sorted order.
#$line = <STDIN>;
#$line =~ s/^\s+//;
#$line =~ s/\s+$//;
#foreach $word (reverse sort split(/[\t ]+/, $line)) {
#print ("$word ");
#}
#print ("\n");


#Listing 8.8. A simple example of a do statement.
#$count = 1;
#do {
#print ("$count\n");
#$count++;
#} until ($count > 5);


#Listing 8.9. A program that exits using the last statement.
#$total = 0;
#while (1) {
#$line = <STDIN>;
#if ($line eq "") {
#last;
#}
#chop ($line);
#@numbers = split (/[\t ]+/, $line);
#foreach $number (@numbers) {
#if ($number =~ /[^0-9]/) {
#print STDERR ("$number is not a number\n");
#}
#$total += $number;
#}
#}
#print ("The total is $total.\n");


#Use of Last Keywords
#foreach (1..10){
#    print "First - start".$_."\n";
#    foreach($_ ..5)  {
#        print "second - start".$_."\n";
#        last if ($_ == 2);
#        print "second - last".$_."\n";
#    }
#    print "First - End".$_."\n";
#}

#Use of Next Keywords
#foreach (1..10){
#    print "First - start".$_."\n";
#    foreach($_ ..5)  {
#        print "second - start".$_."\n";
#        last if ($_ == 2);
#        print "second - last".$_."\n";
#    }
#    print "First - End".$_."\n";
#}


#Use of Redo Keywords
#foreach (1..10){
#    print "First - start".$_."\n";
#    foreach($_ ..5)  {
#        print "second - start".$_."\n";
#        redo if ($_ == 2);
#        print "second - last".$_."\n";
#    }
#    print "First - End".$_."\n";
#}


#Listing 8.10. A program that sums the numbers from 1 to a specified number and also sums the even numbers.
#print ("Enter the last number in the sum:\n");
#$limit = <STDIN>;
#chop ($limit);
#$count = 1;
#$total = $eventotal = 0;
#for ($count = 1; $count <= $limit; $count++) {
#$total += $count;
#if ($count % 2 == 1) {
## start the next iteration if the number is odd
# next;
# }
#$eventotal += $count;
# }
#print("The sum of the numbers 1 to $limit is $total\n");
#print("The sum of the even numbers is $eventotal\n");

#$count = 0;
#while ($count <= 10) {
#if ($count == 5) {
#    #print "Next Count : $count \n";
#    $count++;
#    next;
#}
#print $count;
#$count++;
#}


#Listing 8.11. A word-counting program that uses the next statement.
#$total = 0;
#while ($line = <STDIN>) {
#$line =~ s/^[\t ]*//;
#$line =~ s/[\t ]*\n$//;
#next if ($line eq "");
#@words = split(/[\t ]+/, $line);
#$total += @words;
#}
#print ("The total number of words is $total\n");


#Listing 8.12. A word-counting program that uses the redo statement.
#$total = 0;
#for ($count = 1; $count <= 3; $count++) {
#$line = <STDIN>;
#if ($line eq ""){
#    print "Last\n";
#    last;
#}
#$line =~ s/^[\t ]*//;
#$line =~ s/[\t ]*\n$//;
#if ($line eq ""){
#    print "redo\n";
#    redo;
#}
#@words = split(/[\t ]+/, $line);
#$total += @words;
#}
#print ("The total number of words is $total\n");


#Listing 8.13. A program that counts the words in three non-blank lines of input without using the redo statement.
#$nonblanklines = 0;
#while (1) {
#    $line = <STDIN>;
#    last if ($line eq "");
#    $line =~ s/^[\t ]*//;
#    $line =~ s/[\t ]*\n$//;
#    if ($line ne "") {
#        $nonblanklines += 1;
#        @words = split(/[\t ]+/, $line);
#        $total += @words;
#    }
#    last if ($nonblanklines == 3);
#};
#print ("The total number of words is $total\n");



#Listing 8.14. A program that uses a label.
#$total = 0;
#$firstcounter = 0;
#DONE: while ($firstcounter < 10) {
#    $secondcounter = 1;
#    while ($secondcounter <= 10) {
#        $total++;
#        print "FirstValue : $firstcounter\n";
#        print "SecondValue : $secondcounter\n";
#        if ($firstcounter == 4 && $secondcounter == 4)
#            {                
#                last DONE;
#            }
#            $secondcounter++;
#        }
#    $firstcounter++;
#    }
#    print ("$total\n");


#$count = 0;
#DONE: while($count < 10){
#    print $count."\n";       
#    if($count == 5){
#        #print $count."\n";               
#        $count++;
#        #next DONE;
#        #next DONE;
#        #last DONE;
#        
#    }
#    $count++;
#}


#$i = 1;
#while ($i <= 10) {
#print ("$i\n");
#}
#continue {
#$i = $i+2;
#}

#Listing 8.15. A program that uses the goto statement.
NEXTLINE: $line = <STDIN>;
if ($line ne "") {
print ($line);
goto NEXTLINE;
}