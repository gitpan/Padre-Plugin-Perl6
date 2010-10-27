
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'Locale::Msgfmt' => '0.14',
    'Module::Build' => '0.3601',
    'Test::More' => '0'
  },
  'configure_requires' => {
    'Module::Build' => '0.3601'
  },
  'dist_abstract' => 'Perl 6 Support for Padre',
  'dist_author' => [
    'Ahmad M. Zawawi <ahmad.zawawi@gmail.com>',
    'Gabor Szabo L<http://szabgab.com/>'
  ],
  'dist_name' => 'Padre-Plugin-Perl6',
  'dist_version' => '0.67',
  'license' => 'perl',
  'module_name' => 'Padre::Plugin::Perl6',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
    'App::Grok' => '0.22',
    'Class::XSAccessor' => '1.02',
    'File::Which' => '0.05',
    'Padre' => '0.72',
    'Perl6::Doc' => '0.45',
    'Syntax::Highlight::Perl6' => '0.87',
    'URI' => '1.37',
    'perl' => '5.010'
  },
  'script_files' => [],
  'share_dir' => {
    'dist' => 'share'
  }
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
