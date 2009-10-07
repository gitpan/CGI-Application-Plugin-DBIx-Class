
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'CGI-Application-Plugin-DBIx-Class',
  NAME      => 'CGI::Application::Plugin::DBIx::Class',
  AUTHOR    => 'Arthur\ Axel\ \"fREW\"\ Schmidt\ \<frioux\+cpan\@gmail\.com\>',
  ABSTRACT  => 'Access\ a\ DBIx\:\:Class\ Schema\ from\ a\ CGI\:\:Application',
  VERSION   => '0.092800',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "CGI::Application" => '0',
    "CGI::Application::Plugin::DBH" => '0',
    "DBIx::Class" => '0.08108',
    "Readonly" => '0',
  },
  test => {TESTS => 't/*.t'}
);

