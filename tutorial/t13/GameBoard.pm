package GameBoard;

use Qt qw($app %Weight);

use CannonField;
use LCDRange;

use slots 'fire()', 'hit()', 'missed()', 'newGame()';

@ISA = qw(QWidget);

sub new {
    my $self = shift->SUPER::new(@_);

    $self->setMinimumSize(500, 355);

    my $quit = QPushButton->new('Quit', $self, 'quit');
    $quit->setFont(QFont->new('Times', 18, $Weight{Bold}));

    $app->connect($quit, 'clicked()', 'quit()');

    my $angle = LCDRange->new('ANGLE', $self, 'angle');
    $angle->setRange(5, 70);

    my $force = LCDRange->new('FORCE', $self, 'force');
    $force->setRange(10, 50);

    my $cannonField = CannonField->new($self, 'cannonField');
    $cannonField->setBackgroundColor(QColor->new(250, 250, 200));

    $cannonField->connect($angle, 'valueChanged(int)', 'setAngle(int)');
    $angle->connect($cannonField, 'angleChanged(int)', 'setValue(int)');

    $cannonField->connect($force, 'valueChanged(int)', 'setForce(int)');
    $force->connect($cannonField, 'forceChanged(int)', 'setValue(int)');

    $self->connect($cannonField, 'hit()', 'hit()');
    $self->connect($cannonField, 'missed()', 'missed()');

    $angle->setValue(60);
    $force->setValue(25);

    my $shoot = QPushButton->new('Shoot', $self, 'shoot');
    $shoot->setFont(QFont->new('Times', 18, $Weight{Bold}));

    $self->connect($shoot, 'clicked()', 'fire()');

    my $restart = QPushButton->new('New Game', $self, 'newgame');
    $restart->setFont(QFont->new('Times', 18, $Weight{Bold}));

    $self->connect($restart, 'clicked()', 'newGame()');

    my $hits = QLCDNumber->new(2, $self, 'hits');
    my $shotsLeft = QLCDNumber->new(2, $self, 'shotsleft');
    my $hitsL = QLabel->new('HITS', $self, 'hitsLabel');
    my $shotsLeftL = QLabel->new('SHOTS LEFT', $self, 'shotsleftLabel');

    $quit->setGeometry(10, 10, 75, 30);
    $angle->setGeometry(10, $quit->y() + $quit->height() + 10, 75, 130);
    $force->setGeometry(10, $angle->y() + $angle->height() + 10, 75, 130);
    $cannonField->move($angle->x() + $angle->width() + 10, $angle->y());
    $shoot->setGeometry(10, 315, 75, 30);
    $restart->setGeometry(380, 10, 110, 30);
    $hits->setGeometry(130, 10, 40, 30);
    $hitsL->setGeometry($hits->x() + $hits->width() + 5, 10, 60, 30);
    $shotsLeft->setGeometry(240, 10, 40, 30 );
    $shotsLeftL->setGeometry($shotsLeft->x() + $shotsLeft->width() + 5, 10,
			     60, 30);

    @$self{'quit', 'shoot', 'restart', 'angle', 'force', 'hits', 'shotsLeft',
	'cannonField'} =
	($quit, $shoot, $restart, $angle, $force, $hits, $shotsLeft,
	 $cannonField);
    $self->newGame();

    return $self;
}

sub resizeEvent {
    my $self = shift;
    my $cannonField = $self->{'cannonField'};

    $cannonField->resize($self->width()  - $cannonField->x() - 10,
			 $self->height() - $cannonField->y() - 10);
}

sub fire {
    my $self = shift;
    my($cannonField, $shotsLeft) = @$self{'cannonField', 'shotsLeft'};

    return if $cannonField->gameOver() || $cannonField->isShooting();
    $shotsLeft->display($shotsLeft->intValue() - 1);
    $cannonField->shoot();
}

sub hit {
    my $self = shift;
    my($hits, $cannonField, $shotsLeft) =
	@$self{'hits', 'cannonField', 'shotsLeft'};

    $hits->display($hits->intValue() + 1);
    if($shotsLeft->intValue() == 0) { $cannonField->setGameOver() }
    else { $cannonField->newTarget() }
}

sub missed {
    my $self = shift;
    my($cannonField, $shotsLeft) = @$self{'cannonField', 'shotsLeft'};

    $cannonField->setGameOver() if $shotsLeft->intValue() == 0;
}

sub newGame {
    my $self = shift;
    my($hits, $cannonField, $shotsLeft) =
	@$self{'hits', 'cannonField', 'shotsLeft'};

    $shotsLeft->display(15);
    $hits->display(0);
    $cannonField->restartGame();
    $cannonField->newTarget();
}
