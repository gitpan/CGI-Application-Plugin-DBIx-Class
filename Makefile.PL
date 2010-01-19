
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'CGI::Application::Plugin::DBIx::Class',
                       'DISTNAME' => 'CGI-Application-Plugin-DBIx-Class',
                       'AUTHOR' => 'Arthur Axel "fREW" Schmidt <frioux+cpan@gmail.com>',
                       'ABSTRACT' => 'Access a DBIx::Class Schema from a CGI::Application',
                       'EXE_FILES' => [],
                       'VERSION' => '0.100180',
                       'LICENSE' => 'perl',
                       'PREREQ_PM' => {
                                        'UNIVERSAL' => '0',
                                        'SQL::Translator' => '0.11002',
                                        'parent' => '0',
                                        'FindBin' => '0',
                                        'ExtUtils::MakeMaker' => '6.11',
                                        'Test::More' => '0.88',
                                        'CGI::Application' => '0',
                                        'CGI::Application::Plugin::DBH' => '0',
                                        'Test::Deep' => '0',
                                        'DBIx::Class' => '0.08108'
                                      }
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



