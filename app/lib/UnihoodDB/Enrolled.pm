package UnihoodDB::Enrolled;

use strict;
use warnings;

sub stringify {
    my $self = shift;
    sprintf '%s is enrolled in %s', $self->student, $self->module;
}

1;

