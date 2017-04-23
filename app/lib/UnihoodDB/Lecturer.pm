package UnihoodDB::Lecturer;

use strict;
use warnings;

sub stringify {
    my $self = shift;
    sprintf '%s (Lecturer)', $self->lecturer_name
}

1;

