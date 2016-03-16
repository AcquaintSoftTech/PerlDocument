#!c:\Perl64\bin\perl -w
#use Net::SMTP;
#my $smtp = Net::SMTP->new('mailhost');
#$smtp->mail($ENV{USER});
#if ($smtp->to('postmaster')) {
# $smtp->data();
# $smtp->datasend("To: postmaster\n");
# $smtp->datasend("\n");
# $smtp->datasend("A simple test message\n");
# $smtp->dataend();
#} else {
# print "Error: ", $smtp->message();
#}
#$smtp->quit;

use Mail::Mailer;
$type = 'sendmail';
$mailprog = Mail::Mailer->new($type);

print $mailprog;