package QRadioButton;

use strict;
use vars qw($VERSION @ISA);

require DynaLoader;
require QGlobal;

require QButton;

@ISA = qw(DynaLoader QButton);

$VERSION = '1.03';
bootstrap QRadioButton $VERSION;

1;
__END__

=head1 NAME

QRadioButton - Interface to the Qt QRadioButton class

=head1 SYNOPSIS

C<use QRadioButton;>

Inherits QButton.

=head2 Member functions

new,
isChecked,
setChecked

=head2 Overridden functions

drawButton,
drawButtonLabel,
hitButton,
mouseReleaseEvent,
sizeHint

=head1 DESCRIPTION

What you see is what you get.

=head1 AUTHOR

Ashley Winters <jql@accessone.com>
