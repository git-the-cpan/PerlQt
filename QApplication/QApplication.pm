package QApplication;

use strict;
use vars qw($VERSION @ISA @EXPORT);

require Exporter;
require DynaLoader;
require QGlobal;

require QClipboard;
require QCursor;
require QEvent;
require QFont;
require QFontMetrics;
require QObject;
require QPalette;
require QPoint;
require QWidget;

@ISA = qw(DynaLoader QObject);
@EXPORT = qw(%ColorSpec);

$VERSION = '1.01';
bootstrap QApplication $VERSION;

1;
__END__

=head1 NAME

QApplication - Interface to the Qt QApplication class

=head1 SYNOPSIS

C<use QApplication;>

Inherits QObject.

Requires QClipboard, QCursor, QEvent, QFont, QFontMetrics, QPalette, QPoint,
and QWidget.

A QApplication is automatically created when you C<use Qt;> and will be
automatically exported into your namespace as $qApp.

=head2 Member functions

new,
beep,
clipboard,
closingDown,
desktop,
enter_loop,
exec,
exit,
exit_loop,
flushX,
focusWidget,
font,
fontMetrics,
mainWidget,
notify,
overrideCursor,
palette,
postEvent,
processEvents,
quit,
restoreOverrideCursor,
sendEvent,
setFont,
setMainWidget,
setOverrideCursor,
setPalette,
setStyle,
startingUp,
style,
syncX,
widgetAt

=head2 Overridable functions

notify

=head1 DESCRIPTION

What you see is what you get.

=head1 SEE ALSO

qapplication(3qt) qobject(3qt) QObject(3) QGlobal(3)

=head1 NOTES

The Qt class automatically creates and exports a QApplication. None of the
other classes in Qt actually uses the Qt class, so if a user's application
doesn't S<'use Qt;'>, no QApplication will be created. This is meant to allow
sub-classing QApplication or allowing a different interface to use the
PerlQt classes, like S<'use KDE;'>. The QGlobal class is included in
all PerlQt classes, instead of Qt.

=head1 AUTHOR

Ashley Winters <jql@accessone.com>
