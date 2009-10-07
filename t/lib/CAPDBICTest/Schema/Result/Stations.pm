package CAPDBICTest::Schema::Result::Stations;
our $VERSION = '0.092801';


use parent 'DBIx::Class';
use strict;
use warnings;

__PACKAGE__->load_components('Core');
__PACKAGE__->table('Station');
__PACKAGE__->add_columns(qw/ id bill ted /);
__PACKAGE__->set_primary_key('id');

1;
