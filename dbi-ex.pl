#!c:\Perl64\bin\perl

    #use DBI;
    #
    #my $data_source = "dbi:mysql:rookery";
    #my $username = 'root';
    #my $auth = '';
    #
    #
    #my $dbh = DBI->connect($data_source, $username, $auth,
    #    {RaiseError => 1, PrintError => 0,
    #    ShowErrorStatement => 1, AutoCommit => 0});
    #my $gremlins = 0;  # Failure from gremlins.
    ## Read lots of records, insert them into the database.
    #{
    #    local $dbh->{HandleError} = sub {
    #    $gremlins++ if $_[0] =~ /gremlin/i;
    #    return 0;
    #};
    #    print "Database Connected.\n";
    ##while (<>) {
    ##    eval {
    ##        $dbh->begin_work;
    ##        chomp;
    ##        @fields = split;
    ##        $dbh->do("INSERT into birds
    ##        VALUES (?, ?, ?, ?)",
    ##        undef, @fields);
    ##$dbh->do("INSERT into credit VALUES (?, ?)",
    ##undef, $fields[0],30);
    ##$dbh->commit;
    ##};
    ##if ($@) { print "FAILED: $_\n"; }
    ##}
    #}
    #print "$gremlins records failed due to gremlin attacks.\n";
    
    #my $username = 'root';
    #my $password = '';
    #my $database = 'rookery';
    #open(SELECT, "mysql -u $username -p$password $database -e
    #      `SELECT * from staff` |")
    #      or die "Failed for some reason: $!";
    #my @results =<SELECT>;
    #close SELECT;
    
    #system( `mysql -u $username -p$password $database -e`
    #"INSERT INTO staffphone (StaffID, PhoneNumber)
    #VALUES (12345, '02 2222 2222')"  
    #);
    #die "Error: $?" if $?;
    
    
    #use Net::MySQL;
    #use DBD::mysql;
    #my $hostname = "localhost";
    ## Load in module
    ## Create a handle to our mysql instance
    #my $mysql = Net::MySQL->new("localhost", "rookery", "root", "") || die("Failed connecting to ".$hostname); 
    #hostname => '127.0.0.1',
    #database => 'rookery',
    #user     => 'root',
    #password => ''
    #);
    ###############
    # INSERT example
    ###############
    #$mysql->query(q{INSERT INTO staffphone (StaffID, PhoneNumber) VALUES (12352, '02 32323232') });
    #printf "Affected rows: %d\n", $mysql->get_affected_rows_length;
    ###############
    ## SELECT example
    ###############
    #$mysql->query(q{SELECT StaffID, PhoneNumber FROM staffphone});
    ## Create a handle to our results
    #my $record_set = $mysql->create_record_iterator;
    ## Iterate over each result printing out what we got.
    #while (my $record = $record_set->each) {
    #    printf "StaffID: %s PhoneNumber: %s\n",
    #    $record->[0], $record->[1];
    #}
    #$mysql->close;
    
    
    
    use strict;
    use DBI;
    my $driver   = "mysql";
    my $dsn      = "database=rookery";
    my $username = "root";
    my $passwd   = "";
    
    my $dbh = DBI->connect("dbi:$driver:$dsn", $username, $passwd, { AutoCommit => 1 }) or die "Failed to connect to database: $DBI::errstr";;
    $dbh->ping or die "Database has fallen over - $DBI::errstr.";
    #
    #$dbh->do("INSERT INTO staff (StaffID, FirstName, LastName,Address,City,State,Position,Wage) VALUES (12352, 'Ashish','Gupta','I-202 Binori','AHM','GUJ','SE','300')") or die "Failed to insert row: " . $dbh->errstr;
    #$dbh->do("UPDATE staff SET Address = 'I-204, Kanpur' WHERE StaffID = 12352") or die "Failed to update row: " . $dbh->errstr;
    #$dbh->do("DELETE FROM staffphone WHERE StaffID = 12351 AND PhoneNumber = '02 9999 9999'") or die "Failed to delete row: " . $dbh->errstr;
    
    #my $sth = $dbh->prepare(q{
    #    SELECT FirstName, LastName, ProjectName, Allocation
    #    FROM staff s, projects p
    #    WHERE s.StaffID = p.StaffID AND
    #    ProjectName = ?
    #    ORDER BY ProjectName
    #}) or die "Failed in statement prepare: " . $dbh->errstr;
    #
    #my $data;
    #
    #foreach my $project('ABC', 'XYZ', 'NMO') {
    #$sth->execute($project) or die "Failed to execute statement: ". $dbh->errstr;
    ## fetch result and continue.
    #$data = $sth->dump_results();
    #}
    #print "Record Data : $data\n";
    #print "Records are successfully updated\n ";
        
    #my $sth = $dbh->prepare(q{select StaffID,Position,Wage from staff}) or die "Failed in statement prepare: " . $dbh->errstr;
    #$sth->execute();
    #my $data = $sth->dump_results();
    #print "Record Data : $data\n";
    
    #my $sth = $dbh->prepare(q{select StaffID, PhoneNumber from staffphone}) or die "Failed in statement prepare :" .$dbh->errstr;
    #$sth->execute();
    #my $data = $sth->dump_results();
    #print "Table StaffNumber : $data \n";
    
        
    #Manager:180
    #Admin:130
    #Devel:120
    my $data;
    #my $sth = $dbh->prepare(q{select StaffID,FirstName,LastName,Address,City,State,Position,Wage from staff where Position = ? }) or die "Failed in prepare statement:". $dbh->errstr;
    #foreach my $position ('Manager','Admin','Devel') {
    #    $sth->execute($position);
    #    $data = $sth->dump_results();
    #    print "Table Staff $position : $data\n";
    #}    
    #my $rows = $sth->rows;
    #print "No of rows affected $rows\n";
    
    
    
    #Print names for all of our employees
    #my $sth = $dbh->prepare("SELECT FirstName, LastName FROM staff") or die $dbh->errstr;
    #$sth->execute() or die $dbh->errstr;
    #while(my @name = $sth->fetchrow_array) {
    #    print "$name[1] $name[0]\n";
    #}
    
    
    #Print names for all of our employees
    #my @data_dump;
    #my $sth = $dbh->prepare("SELECT FirstName, LastName FROM staff") or die $dbh->errstr;    
    #$sth->execute() or die $dbh->errstr;
    #while(my $name = $sth->fetchrow_arrayref) {
    #    #print "$name->[0] $name->[1]\n";
    #    push (@data_dump,[@$name]);
    #}
    #
    #print "Data Dump - ".$data_dump[0][0]."\n";
    
    
    #use Storable qw(dclone);
    #my @stored_data;
    #while(my $result = $sth->fetchrow_arrayref) {
    #    push @stored_data, dclone $result;
    #}
    #print "Data Dump - ".$stored_data[0][0]."\n";
    
    
    
    
    #hashref -> data fetch method
    #my $sth = $dbh->prepare("SELECT FirstName, LastName FROM staff") or die $dbh->errstr;
    #$sth->execute() or die $dbh->errstr;
    #while(my $name = $sth->fetchrow_hashref) {
    #    print "$name->{FirstName} $name->{LastName}\n";
    #}
    
    
    
    #dbi method -> selectrow_array
    #my @row = $dbh->selectrow_array($statement, \%attr, @bind_values);
    my $staffid = '12345';
    #my @result = $dbh->selectrow_array(
    #"SELECT FirstName, LastName, Wage
    #FROM staff
    #WHERE StaffID = ?",
    #undef,
    #$staffid)
    #or die "Failed to select row:". $dbh->errstr;
    ## print FirstName:
    #print @result;
    
    
    #selectrow_arrayref
    #my $row = $dbh->selectrow_arrayref($statement, \%attr, @bind_values);
    #my $result = $dbh->selectrow_arrayref(
    #"SELECT FirstName, LastName, Wage
    #FROM staff
    #WHERE StaffID = ?",
    #undef,
    #$staffid)
    #or die "Failed to select row:". $dbh->errstr;
    ## print FirstName:
    #print $result->[0];
    
    
    #selectrow_hashref
    #my $row = $dbh->selectrow_hashref($statement, \%attr, @bind_values);
    #my $result = $dbh->selectrow_hashref(
    #"SELECT FirstName, LastName, Wage
    #FROM staff
    #WHERE StaffID = ?",
    #undef,
    #$staffid)
    #or die "Failed to select row:". $dbh->errstr;
    ## print FirstName:
    #print $result->{LastName};
    
    
    #$ary_ref = $dbh->selectcol_arrayref($statement, \%attr, @bind_values);
    my $wage = 170;
    #my $result = $dbh->selectcol_arrayref(
    #"SELECT LastName
    #FROM staff
    #WHERE Wage > ? order by Wage",
    #undef,
    #$wage)
    #or die "Failed to select column:". $dbh->errstr;
    ## Print richest and poorest
    #print "All Records: ",scalar @{$result},"\n";
    #print "Poorest: $result->[0], Richest: $result->[1], Richest: $result->[2]\n";
    
    
    my $city= 'Sydney';
    #my %staff;
    #my $staff = $dbh->selectall_hashref(
    #"SELECT StaffID, FirstName, LastName, Wage
    #FROM staff
    #WHERE City = ?",
    #"StaffID", # hash key
    #undef,
    #$city) or die "Failed to select data:". $dbh->errstr;
    ## Do something with $staff
    #foreach my $staffid (keys %$staff) {
    #    #print "$staffid \n";
    #    print "$staff->{$staffid}->{FirstName} :  $staff->{$staffid}->{LastName}\n";
    #}    
        
    
    #selectall_arrayref    
    #my $staff = $dbh->selectall_arrayref(
    #"SELECT StaffID, FirstName, LastName, Wage
    #FROM staff
    #WHERE City = ?",
    ##"StaffID", # hash key
    #undef,
    #$city) or die "Failed to select data:". $dbh->errstr;
    ## Do something with $staff
    #foreach my $staffid (@{$staff}) {        
    #    print "$staffid->[1] :  $staffid->[2]\n";            
    #}    
    
    
    #fetchall_arrayref    
    #my $sth = $dbh->prepare(
    #"SELECT StaffID, FirstName, LastName, Wage
    #FROM staff
    #WHERE City = ?") or die "Failed to select data:". $dbh->errstr;
    #$sth->execute() or die $dbh->errstr;    
    #while(my $row = $sth->fetchall_arrayref) {
    #    print "$row->[1] :  $row->[2]\n";            
    #}
    
    ## Do something with $staff
    #foreach my $staffid (@{$staff}) {        
    #    print "$staffid->[1] :  $staffid->[2]\n";            
    #}
    
    use Data::Dumper;
    use SQL::Abstract;
    my $sql = SQL::Abstract->new();
    #print Dumper($sql)."\n";
    
    #my @fname = qw(ashish nipul bhupat nirav jatin savan hardik pratik ashish dilip manish mukesh ahmed praveen);
    #my @lname = qw(gupta bhogayata bheda bhut panchal makvana patel patel soni bhai patel ram bhai bhai);
    #my @address = qw(601-Shpath 601-Shpath 601-Shpath 601-Shpath 601-Shpath 601-Shpath 601-Shpath 601-Shpath 601-Shpath 601-Shpath 601-Shpath 601-Shpath 601-Shpath 601-Shpath );
    #my @city = qw(Ahmedabad Ahmedabad Ahmedabad Ahmedabad Ahmedabad Ahmedabad Ahmedabad Ahmedabad Ahmedabad Ahmedabad Ahmedabad Ahmedabad Ahmedabad Ahmedabad );
    #my @state = qw(GUJARAT GUJARAT GUJARAT  GUJARAT  GUJARAT  GUJARAT  GUJARAT  GUJARAT  GUJARAT  GUJARAT  GUJARAT  GUJARAT  GUJARAT  GUJARAT );
    #my @position = qw(JSE SSE ADMIN CEO PM TL JSE SSE ADMIN CEO PM TL JSE SSE);
    #my @wage = qw(20000 30000 40000 50000 60000 20000 30000 40000 50000 60000 20000 30000 40000 50000);
    
    #print "Count FNAME", scalar @fname,"\n";
    #print "Count LNAME", scalar @lname,"\n";
    #print "Count ADDRESS", scalar @address,"\n";
    #print "Count CITY", scalar @city,"\n";
    #print "Count STATE", scalar @state,"\n";
    #print "Count POSITION", scalar @position,"\n";
    #print "Count WAGE", scalar @wage,"\n";
    
    #my $count = scalar @fname -1;
    
    #foreach (0..$count){
        
        ##Hash ref produce as a input ....    
        #my %record = (
        #    FirstName => 'Ashish',  #"$fname[$_]",
        #    LastName => 'Gupta',    #"$lname[$_]",
        #    Address => 'Address',   #"$address[$_]",
        #    City => 'City',         #"$city[$_]",
        #    State => 'State',       #"$state[$_]",
        #    Position => 'Position', #"$position[$_]",
        #    Wage => 'Wage'          #$wage[$_]
        #);
        #
        #
        ##Array ref produce as a input ....
        #
        #my @record = (undef, 'Rakesh','Nainani','Clearon', 'Pune','Maharastra','SSE',60000);
        #my ($stmt, @bind) = $sql->insert('staff',\@record);
        ##my ($stmt, @bind) = $sql->insert('staff',\%record);        
        #print "Statement : $stmt \n";
        #print "Bind Argument : @bind \n";        
        #my $sth = $dbh->prepare($stmt);
        #$sth->execute(@bind);    
   # }
   
    #my ($stmt, @bind) = $sql->select($table, \@fields, \%where, \@order);
    
    my @fields = qw(FirstName LastName);
    my %where = (
                 City => 'Ahmedabad',
                 Position => ['JSE','SSE','CEO','Admin'],                 
                 );
    
    my ($stmt, @bind) = $sql->select('staff',\@fields,\%where);
    print "Statement : $stmt \n";
    print "Bind Argument : @bind \n";        
    my $sth = $dbh->prepare($stmt);
    $sth->execute(@bind);    
    while(my $data = $sth->fetchrow_arrayref) {
        print "FirstName : ".$data->[0]."\n";
        print "LastName : ".$data->[1]."\n";
    }
    
     #Alternatively:
    #$dbh->do($stmt,undef,@bind);
    
    
    
    
   # $dbh->disconnect();    