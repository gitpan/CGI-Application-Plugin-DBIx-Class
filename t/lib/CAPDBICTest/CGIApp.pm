package CAPDBICTest::CGIApp;
our $VERSION = '0.092801';


use strict;
use warnings;

use parent 'CGI::Application';

use Readonly;
use CGI::Application::Plugin::DBH (qw/dbh_config dbh/);
use CAPDBICTest::Schema;
use CGI::Application::Plugin::DBIx::Class ':all';

Readonly our $DBFILE => 'test.db';
Readonly our $CONNECT_STR => "dbi:SQLite:dbname=$DBFILE";

sub cgiapp_init {
  my $self = shift;

  $self->dbh_config( $CONNECT_STR );

  $self->dbic_config({
     schema => 'CAPDBICTest::Schema',
  });
}

sub setup {
    my $self = shift;

    $self->start_mode('test_mode');

    $self->run_modes(test_mode => 'test_mode' );
}

sub test_mode {
  my $self = shift;
  return 1;
}

1;

