#!c:\Perl64\bin\perl

use strict;
use warnings;
use 5.010;
 
#my @words = ('Foo', 'Bar', 'Baz');
# 
#say @words;
#say localtime();
#
#
#@words = ('Foo', 'Bar', 'Baz');
#my $names = @words;
#say $names;
#
#say scalar @words;
#say scalar localtime();
#
#my $time = scalar localtime();
#say scalar $time;
#
#my @new_words = 0 + @words;
#
#say @new_words;
#
#my $scalar = ('list', 'of', 'values');
#say $scalar;
#
#
#($scalar) = ('list', 'of', 'values');
#say $scalar;
#
#use Data::Dumper qw(Dumper);
# 
#my @names = ("Foo", "Bar", "Baz");
#say Dumper \@names;
#
#
#    @names = ("Foo", "Bar", "Baz");
#    foreach my $n (@names) {
#      say $n;
#    }
#    
#    
#    @names = ("Foo", "Bar", "Baz");
#    say $#names;

#my %args = @_;
#my ($a, $b, $c) = @args{'a', 'b', 'c'};
#print $a{0};

#wantarray
#
#my @array = (1,2,3,4,5);
#my $exp = 10;
#
#sub fibo {
#   if (wantarray) {
#       say "Array";
#   } elsif (defined wantarray) {
#       say  "Hello";
#   } else {
#       say  'VOID';
#   }
#}
# 
#say fibo($exp);  # LIST
#my $value   = fibo();  # SCALAR
#fibo();                # VOID


#sub context_read {
#    if(wantarray){
#        say "This is a array value";
#    }
#    if(defined wantarray) {
#        say "This is a scalar value";
#    }
#}
#
#say context_read();


#sub foo {
#    return( wantarray() ? qw(A , B , C) : '1' );
#}
#
#my $result  = foo();    # scalar context
#my @result = foo();    # array context
#
#print("foo() in a  scalar context: $result\n");
#print("foo() in an array  context: @result\n");

#write FILEHANDLE;


#my $string = 'the cat sat on the mat.';
#
## This will generate a upper case string
#$string =~ y/a-z/A-Z/;
#
#print "$string\n";



#my $Y = 30;
#my $X = 60;
#
#my $ret_val = atan2($Y, $X );
#
#print "atan2 of 30/60 is : $retval\n";


#sub display(){
#return(wantarray() ? qw(A B C) : '1' );
#}
#
#my @ab = display();
#my $bd = display();
#
#say @ab;
#say $bd;


#my @A = (1,2, 2,4, 3, 4, 5) ;
#my %hash ;
#
#foreach(@A){
#    print "ArrayElemnt".$_."\n";
#$hash{$_} = $_;
#}
#
#my @b = keys %hash;
#print @b;


#how to remove duplicate values

#my @vals = (1,1,2,3,4,3,2,1,5,6,4);
#my %hash;
#
#foreach(@vals){
#    $hash{$_} = $_;
#}
#
#my @uniq = keys %hash;
#print @uniq;


#my @a = ( 1 ,4,2, 9,10 );
#
##print reverse @a;
#my $length = scalar @a;
#my @b;
#for(my $i=0;$i<=$length;$i++)
#{
#    my $j = $a[$length - $i];
#    push(@b, $j);
#}
#print @b;


#my $str = "  Hello This is a big boss house.  ";
#$str =~ s/^\s+$//;
#$str =~ s/\s+$//;
#print $str;
#
#my $string = "Just another Perl Hacker";
#my $first_char = substr( $string, 0, 1 ); # 'J'
#say $first_char;

use Net::SMS::WAY2SMS;

my $s = Net::SMS::WAY2SMS->new(
'user' => '8401361415' ,
'password' => 'ramarama',
'mob'=>['9409149197'],
);

$s->send('Hello World');

#To send sms you need a gateway that is willing to accept your message and dispatch to the respective networks. For this you need to register and stuff which is a tedious process.
#
#It is very simple to send a SMS from perl script, there are so many ways to do that. Out of them i am going to post some of the ways for the same.
#
#(1) Send SMS via 160By2
#
#To use this script only 2 thing are required :
#
#(i) CPAN module Net::SMS::160By2
#(ii) An A/C with http://www.160by2.com/
#
#use Net::SMS::160By2;
#
#my $obj = Net::SMS::160By2->new($username, $password);
#
#$obj->send_sms($msg, $to);
#
#This is how you can send SMS to any mobile number in
#India, Kuwait, UAE, Saudi, Singapore, Philippines & Malaysia at present.
#
#(2) Send SMS via Way2SMS
#
#To use this script only 2 thing are required :
#
#(i) CPAN module Net::SMS::WAY2SMS;
#(ii) An A/C with http://www.way2sms.com/
#
#use Net::SMS::WAY2SMS;
#
#my $s = Net::SMS::WAY2SMS->new(
#'user' => 'xyz' ,
#'password' => 'xyzpassword',
#'mob'=>['98********', '9**********']
#);
#
#$s->send('Hello World');