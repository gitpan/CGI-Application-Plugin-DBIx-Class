package CAPDBICTest::Schema::Result::Stations;
our $VERSION = '0.100160';
use parent 'DBIx::Class';
use strict;
use warnings;

__PACKAGE__->load_components('Core');
__PACKAGE__->table('Station');
__PACKAGE__->add_columns(qw/bill ted /);
__PACKAGE__->add_columns(
   id => {
      data_type => 'INTEGER',
   }
);
__PACKAGE__->set_primary_key('id');

1;
