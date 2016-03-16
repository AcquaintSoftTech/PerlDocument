#!c:\Perl64\bin\perl
use IO::Socket;
use IO::Socket::INET;
my $sender = new IO::Socket::INET (
        PeerAddr => 'localhost', # ip addr of machine if u r using another machine
        PeerPort => '9000', # port should be same
        Proto => 'tcp', );
    die "Could not create socket: $!\n" unless $sender;

print $sender "Hi Reciever ";
close($sender);