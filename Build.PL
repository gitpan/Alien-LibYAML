#!/usr/bin/env perl

use v5.10;
use strict;
use warnings FATAL => "all";
use utf8;

use Alien::Base::ModuleBuild;
use File::Spec::Functions qw(catfile);

my $builder = Alien::Base::ModuleBuild->new(
    dist_name => "Alien-LibYAML",
    license => "MIT",
    dist_abstract => q(Build and install LibYAML),
    dist_author => q"Richard Simões <rsimoes AT cpan DOT org>",
    dist_version_from => "lib/Alien/LibYAML.pm",
    alien_name => "libyaml",
    alien_repository => {
        protocol => "http",
        host     => "pyyaml.org",
        location => "/download/libyaml/",
        pattern  => qr(^yaml-([\d\.]+)\.tar\.gz$)
    },
    alien_build_commands => [
        "%pconfigure --prefix=%s --enable-shared",
        "make",
        "make install"
    ],
    # Prerequisites inserted by DistZilla:
      'build_requires' => {
    'File::Find' => '0',
    'File::Temp' => '0',
    'Module::Build' => '0.3601',
    'Test::More' => '0'
  },
  'configure_requires' => {
    'Module::Build' => '0.3601'
  },
  'requires' => {
    'Alien::Base' => '0',
    'perl' => 'v5.10.0'
  },
);

### Add generated file:
my $config_data_pm = catfile(qw(lib Alien LibYAML ConfigData.pm));
open my $MANIFEST, ">>", "MANIFEST";
$MANIFEST->print($config_data_pm, "\n");
$MANIFEST->close;

$builder->create_build_script;