package autobox::UndefAutoload;

use strict;
use warnings;

use parent 'autobox';

sub import {
    my ($class) = @_;

    $class->SUPER::import(UNDEF => 'autobox::UndefAutoload::UNDEF',);
}

package autobox::UndefAutoload::UNDEF;

use strict;
use warnings;

sub AUTOLOAD { undef }

1;
