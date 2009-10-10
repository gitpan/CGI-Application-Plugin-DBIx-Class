
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'CGI-Application-Plugin-DBIx-Class',
  NAME      => 'CGI::Application::Plugin::DBIx::Class',
  AUTHOR    => "Arthur\ Axel\ \"fREW\"\ Schmidt\ \<frioux\+cpan\@gmail\.com\>",
  ABSTRACT  => "Access\ a\ DBIx\:\:Class\ Schema\ from\ a\ CGI\:\:Application",
  VERSION   => '0.092830',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "CGI::Application" => '0',
    "CGI::Application::Plugin::DBH" => '0',
    "parent" => '0',
    "DBIx::Class" => '0.08108',
    "Readonly" => '0',
  },
  BUILD_REQUIRES    => {
    "Test::More" => '0',
    "UNIVERSAL" => '0',
    "SQL::Translator" => '0',
    "FindBin" => '0',
    "Test::Deep" => '0',
  },
  test => {TESTS => 't/*.t'}
);

