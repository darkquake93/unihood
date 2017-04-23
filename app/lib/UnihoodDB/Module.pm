package UnihoodDB::Module;

use strict;
use warnings;

sub stringify {
    my $self = shift;
    sprintf '%s - %s', $self->module_code,$self->module_name ;
}

1;

