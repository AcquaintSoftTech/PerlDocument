#!\c:\Perl64\bin\perl

#print "Hello World!!!\n";

#my $person = {
#surname    => "Galilei",
#forename   => "Galileo",
#address    => "9.81 Pisa Apts.",
#occupation => "bombadier"
#};
#
#print "Address : $person->{'address'}\n";
#
#$person->address("Campus Mirabilis, Pisa, Italy");
#
#print "Address : ", $person->address(), "\n";


# ftp.plx
use warnings;
use strict;
use Net::FTP;
use Data::Dumper;

my $ftp = Net::FTP->new("ftp.cpan.org")
or die "Couldn't connect: $@\n";

print Dumper($ftp)."\n";
$ftp->login("anonymous");
#print Dumper($ftp->login("anonymous"))."\n";
$ftp->cwd("/pub/CPAN");
$ftp->get("README.html");
#print Dumper($ftp->get("README.html"))."\n";
$ftp->close;