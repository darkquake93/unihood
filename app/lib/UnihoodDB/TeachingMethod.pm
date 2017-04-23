package UnihoodDB::TeachingMethod;

use strict;
use warnings;

sub stringify {
    my $self = shift;
    sprintf '%s (Teaching Method)', $self->tm_name
}

1;

