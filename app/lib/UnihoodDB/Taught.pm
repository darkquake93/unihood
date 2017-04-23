package UnihoodDB::Taught;

use strict;
use warnings;

sub stringify {
    my $self = shift;
    sprintf '%s taught by %s', $self->module, $self->lecturer;
}

1;

