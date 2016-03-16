Solution :

Chat is a useful application that allows a number of people on the World Wide Web to talk to one another simultaneously. Now You can easily make chat using PERL script, there are so many options are available for this.

To make this possible, you must have following cpan module install on your system.

IO::Socket;
IO::Socket::INET;

Then create 2 .pl file, named recieve.pl and sender.pl, to recieve message and send message accordingly.

Put the following code in recieve.pl

my $reciever = new IO::Socket::INET (
        LocalHost => 'localhost',  # can be ip addr of machine if u r 
                                                      using another machine
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

Put the following code in sender.pl

my $sender = new IO::Socket::INET (
        PeerAddr => 'localhost', # ip addr of machine if u r 
                                                      using another machine
        PeerPort => '9000', # port should be same
        Proto => 'tcp', );
    die "Could not create socket: $!\n" unless $sender;

print $sender "Hi Reciever ";
close($sender);
