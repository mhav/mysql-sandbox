use strict;
use warnings;
use lib './t';
use Test_Helper;
use MySQL::Sandbox;

confirm_version('5.6.6','5.7.99');
$ENV{'GTID_FROM_FILE'}=undef;
test_sandbox( 'test_sandbox --user_test=./t/replication_gtid.sb.pl', 13);
