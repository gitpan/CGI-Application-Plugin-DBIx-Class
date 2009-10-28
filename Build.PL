
use strict;
use warnings;

use Module::Build;

my $build = Module::Build->new(
  module_name   => 'CGI::Application::Plugin::DBIx::Class',
  license       => 'perl',
  dist_abstract => "Access\ a\ DBIx\:\:Class\ Schema\ from\ a\ CGI\:\:Application",
  dist_name     => "CGI\-Application\-Plugin\-DBIx\-Class",
  dist_author   => [
"Arthur\ Axel\ \"fREW\"\ Schmidt\ \<frioux\+cpan\@gmail\.com\>",
  ],
  requires      => {
    "CGI::Application" => '0',
    "CGI::Application::Plugin::DBH" => '0',
    "parent" => '0',
    "DBIx::Class" => '0.08108',
  },
  build_requires      => {
    "Test::More" => '0.88',
    "UNIVERSAL" => '0',
    "SQL::Translator" => '0',
    "FindBin" => '0',
    "Test::Deep" => '0',
  },
  script_files => [ qw() ],
);

$build->create_build_script;
