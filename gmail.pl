 (13) How to fetch gmail content?
Solution :

Now you can access gmail contents via PERL scripting and can put content accordingly.

use WWW::Mechanize;
$mech = WWW::Mechanize->new;
$mech->get( "https://www.gmail.com/" );
$mech->content();
$mech->submit_form(
form_number => '1',
fields => {
Email => $username,
Passwd => $password,
}
);

my $inbox_url = "https://mail.google.com/mail/?ui=html&zy=e";
$mech->get($inbox_url);
$mailbox = $mech->content();