package UnihoodDB;

use strict;
use warnings;

use base qw/Mojolicious::Plugin::Tables::Model/;

sub connect_info { [ 'dbi:Pg:dbname="unihood";host=""', 'unihood', 'unihood' ] }

sub glossary { +{
    avg   => 'Average',
    fname => 'First Name',
    lname => 'Last Name',
    mr    => 'Module Rating',
    lr    => 'Lecturer Rating',
    tm    => 'Teaching Method',
} }

1;


