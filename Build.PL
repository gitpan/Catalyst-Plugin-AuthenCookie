use strict;
use warnings;

use Module::Build;

my $builder = Module::Build->new
    ( module_name        => 'Catalyst::Plugin::AuthenCookie',
      license            => 'perl',
      requires           => { 'Digest::SHA'      => 0,
                              'Params::Validate' => 0,
                            },
      build_requires     => { 'Catalyst::Test' => 0,
                              'HTTP::Cookies'  => 0,
                              'HTTP::Date'     => 0,
                              'Test::More'     => 0,
                            },
      create_makefile_pl => 'passthrough',
      create_readme      => 1,
      sign               => 1,
    );

$builder->create_build_script();
