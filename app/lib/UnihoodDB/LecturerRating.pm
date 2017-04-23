package UnihoodDB::LecturerRating;

use strict;
use warnings;

sub stringify {
    my $self = shift;
    sprintf '%s rates %s as a %s', $self->student, $self->lecturer, $self->lr_value
}

1;

