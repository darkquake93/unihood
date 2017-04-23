package UnihoodDB::ModuleRating;

use strict;
use warnings;

sub stringify {
    my $self = shift;
    sprintf '%s rates %s as a %s', $self->student, $self->module, $self->mr_value
}

1;

