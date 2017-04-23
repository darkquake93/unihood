package UnihoodDB::Student;

use strict;
use warnings;

sub stringify {
    my $self = shift;
    sprintf '%s %s (Student)', $self->student_fname, $self->student_lname;
}

1;

