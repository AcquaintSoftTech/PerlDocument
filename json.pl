#!c:\Perl64\bin\perl

use CGI;
use DBI;
use DBD::mysql;

$dbh = DBI->connect("DBI:mysql:rookery","root","") or die dbi::stderr;
#if($dbh){
#    print "Database Connected";
#}

# initialize CGI
$query = new CGI;

#Print the HTTP header.

print $query->header;

print "<h1> This is a simple Perl script. </h1>";

$query = "select ID, Common_Name, Genus, Species, Cultivar FROM Plants where ID = 1";
$sth = $dbh->prepare($query);
$sth->execute;

while(($id,$common_name,$genus,$species,$cultivar) = $sth->fetchrow()){
    print "$id, $common_name, $genus, $species, $cultivar";
}

# End the HTML.
#print $query->end_html;