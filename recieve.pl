#!c:\Perl64\bin\perl
use IO::Socket;
use IO::Socket::INET;
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