#!c:\Perl64\bin\perl

#use Net::SMS::160By2;
# 
#my $obj = Net::SMS::160By2->new(); # or Net::SMS::160By2->new({debug => 1, verbose => 1});
#$obj->login($username, $password);
# 
## Send SMS to one mobile number 
## country code is optional in mobile number
#my ($msg1, $to1) = ('Test Msg', 1111111111);
#$obj->send_sms($msg1, $to1);
# 
## Send SMSes to Many mobile numbers
#my ($msg1, $to1, $msg2, $to2) = ('Test Msg 1', 2222222222, 'Test Msg 2', 3333333333);
#my @array = ( 
#  [ $msg2, $to2 ], 
#  [ $msg3, $to3 ],
#  # include as many as your want
#);
# 
#$obj->send_sms_multiple(\@array);
# 
## logout from 160by2.com
#$obj->logout();
# 
## send additional params will print WWW::Mechanize detailed request and
## responses

#use Net::SMS::WAY2SMS;
# 
#my $s = Net::SMS::WAY2SMS->new(
#        'user' => '8401361415' ,
#        'password' => 'ramarama',
#        'mob'=>['9409149197', '8488849506']
#);
# 
#$s->send('Hello World');


use IO::Socket;
use IO::Socket::INET;

#Then create 2 .pl file, named recieve.pl and sender.pl, to recieve message and send message accordingly.

#Put the following code in recieve.pl

my $reciever = new IO::Socket::INET (
        LocalHost => 'localhost',  # can be ip addr of machine if u r using another machine
        LocalPort => '9000',  # port should be same
        Proto => 'tcp',
        Listen => 1,
        Reuse => 1,
     ); die "Could not create socket: $!\n" unless $reciever;

my $new_sock = $reciever->accept();
while(<$new_sock>) {
    print $_;
}
close($reciever);

#Put the following code in sender.pl

my $sender = new IO::Socket::INET (
        PeerAddr => 'localhost', # ip addr of machine if u r using another machine
        PeerPort => '9000', # port should be same
        Proto => 'tcp', );
    die "Could not create socket: $!\n" unless $sender;

print $sender "Hi Reciever ";
close($sender);