package UnihoodDB::Usage;

use strict;
use warnings;

sub stringify {
    my $self = shift;
    sprintf '%s uses %s', $self->lecturer, $self->tm
}

1;

