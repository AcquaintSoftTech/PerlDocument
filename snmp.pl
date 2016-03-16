 #!/usr/local/lib/perl
 use lib "put lib path here" 
 use SNMP::Util;

 The SNMP::Util object is created as follows:

 $snmp = new SNMP::Util(-device => $IP,
                       -community => $community, 
                       -timeout => 5,             
                       -retry => 0,             
                       -poll => 'on',            
                       -poll_timeout => 5,        
                       -verbose => 'off',         
                       -errmode => 'return',    
                       -delimiter => ' ', 
                      )