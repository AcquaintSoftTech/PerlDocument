#!c:\Perl64\bin\perl


use strict;
use warnings;
use LWP::UserAgent;
use JSON;
use MIME::Base64;
use Data::Dumper;

# Set the request parameters
my $url = 'https://acquaintsofthelp.zendesk.com/api/v2/groups.json';
my $credentials = encode_base64('ashishgupta@acquaintsoft.com:rama86rama');

# Create a user agent and make the request
my $ua = LWP::UserAgent->new(ssl_opts =>{ verify_hostname => 0 });
my $response = $ua->get($url, 'Authorization' => "Basic $credentials");

# Check for HTTP error codes
die 'http status: ' . $response->code . '  ' . $response->message
    unless ($response->is_success);

# Decode the JSON into a Perl data structure
my $data = decode_json($response->content);

# Example 1: Get the name of the first group in the list
print Dumper($data);
print "First group = " . $data->{'groups'}[0]{'name'} . "\n";

# Example 2: Get the name of each group in the list
my @groups = @{ $data->{'groups'} };
foreach my $group ( @groups ) {
    print $group->{"name"} . "\n";
}


# Filename    : rest-feedzilla.pl
# Description : Gets News from Feedzilla using it's REST API
###
#use REST::Client;
#use XML::Simple;
#use JSON;
#my $base_uri = "http://api.feedzilla.com";
## Creates an object for REST Client using Base URI
#my $client = REST::Client->new({ host => $base_uri });
## Gets OpenSource News in Atom format
#$client->GET("/v1/categories/16/subcategories/732/articles.atom?title_only=1&count=1&order=date");
#my $xmlobj = XML::Simple->new();
## Parses the response
#my $document = $xmlobj->XMLin($client->responseContent);
## Prints the Open Source News
#print $document->{'title'}->{'content'} . " - " . $document->{'entry'}->{'title'}->{'content'} . "\n";
## Gets India News in JSON format
#$client->GET("/v1/categories/19/subcategories/890/articles.json?title_only=1&count=1&order=date");
#my $jsonobj = JSON::from_json($client->responseContent);
## Prints the India News
#print $jsonobj->{'title'} . " - " . $jsonobj->{'articles'}[0]->{'title'} . "\n";

#use strict;
#use REST::Client;
#use MIME::Base64;
#
#$ENV{PERL_LWP_SSL_VERIFY_HOSTNAME}=0;  ### to ignore the SSL
#
#my $username	= 'root';
#my $password	= '';
#my $url		= "localhost/phpmyadmin";
#
#my $client = REST::Client->new();
#
#my $headers = {
#			"Accept"		=> "application/*+xml;version=1.5",
#			"Authorization"	=> 'Basic ' . encode_base64($username . ':' . $password),
#		};
#
#$client->POST($url,$headers);
#print $client->responseContent();


#===============================================================================
#         FILE:  sample-rest-client.pl
#        USAGE:  ./sample-rest-client.pl
#  DESCRIPTION:  Sample Perl rest client to access moodle 2 web services
#                In this sample, we create two users
#       AUTHOR:  Emmanuel Otton (EO), otton@mines-albi.fr
#                based on a post by Richard Gillette
#                ( http://moodle.org/mod/forum/discuss.php?d=182471 )
#      VERSION:  1.0
#      CREATED:  02/04/2012 16:30
#===============================================================================
#use strict;
#use warnings;
#use LWP::UserAgent; # web client
#use JSON;           # imports encode_json, decode_json, to_json and from_json.
#use Data::Dumper;   # to print the result variable
#
## --- These need to be changed for your site:
#my $url_ws = "http://www.yourmoodle.com/~jerome/Moodle_HEAD/webservice/rest/server.php";
#my $token  = "f95fe8ce5f6a4f01dc24ccdf333bba22";
#
## --- Function name and parameters
#my $functionname = "core_user_create_users";
#my $restformat = "json"; # Moodle rest server can also return xml
#my $params = {
#    'wstoken'                      => $token,
#    'wsfunction'                   => $functionname,
#    'moodlewsrestformat'           => $restformat,
#    'users[0][username]'           => 'testusername1',
#    'users[0][password]'           => 'Testpassword1!',
#    'users[0][firstname]'          =>  'testfirstname1',
#    'users[0][lastname]'           => 'testlastname1',
#    'users[0][email]'              => 'testemail1@moodle.com',
#    'users[0][timezone]'           =>  '-12.5',
#    'users[0][auth]'               =>  'manual',
#    'users[0][idnumber]'           =>  'testidnumber1',
#    'users[0][lang]'               =>  'en',
#    'users[0][theme]'              =>  'standard',
#    'users[0][mailformat]'         =>  '0',
#    'users[0][description]'        =>  'Hello World',
#    'users[0][city]'               =>  'testcity1',
#    'users[0][country]'            =>  'au',
#    'users[0][preferences][0][type]'  =>  'preference1',
#    'users[0][preferences][0][value]' =>  'preferencevalue1',
#    'users[0][preferences][1][type]'  =>  'preference2',
#    'users[0][preferences][1][value]' =>  'preferencevalue1',
#    'users[1][username]'           => 'testusername2',
#    'users[1][password]'           => 'Testpassword2!',
#    'users[1][firstname]'          =>  'testfirstname2',
#    'users[1][lastname]'           => 'testlastname2',
#    'users[1][email]'              => 'testemail2@moodle.com',
#    'users[1][timezone]'           =>  'Pacific/Port_Moresby',
#};
#
#my $ua = LWP::UserAgent->new;        # -- let's create our user agent
##$ua->ssl_opts(verify_hostname => 0); # be tolerant to self-signed certificates
#
#my $result = $ua->post( $url_ws, $params );;      # --- ..and send the get request
#
#if ( not $result->is_success ) {
#    print $result->status_line, "\n";   # --- it might not work...
#}
#
#my $jsondecoder = JSON->new->allow_nonref;  # --- decode the JSON result,
#my $userids = $jsondecoder->decode( $result->content );
#
#print Dumper($userids);
#
#__END__

#
#use v5.18;
#use REST::Client;
#use JSON;
# 
#my $cli = REST::Client->new;
#$cli->setHost('http://localhost/phpmyadmin');
#$cli->addHeader('MYCUSTOM' => 'abc');
# 
#say $cli->GET('/?a=1&b=2')->responseContent;
#say $cli->POST('/', 'a=1&b=2', {'Content-type' => 'application/x-www-form-urlencoded'})->responseContent;

#http://ashishhelp4u.blogspot.com/