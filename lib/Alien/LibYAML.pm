package Alien::LibYAML;

use v5.10;
use strict;
use warnings FATAL => "all";
use utf8;
use parent "Alien::Base";

our $VERSION = 'v0.0.4'; # VERSION
# ABSTRACT: Build and install libyaml, a C-based YAML parser and emitter

1;
=encoding utf8

=head1 NAME

Alien::LibYAML - Build and install libyaml, a C-based YAML parser and emitter

=head1 SYNOPSIS

    my $libyaml = Alien::LibYAML->new;
    say $libyaml->libs;
    say $libyaml->cflags;

=head1 DESCRIPTION

This distribution provides an alien wrapper for libyaml. It requires a C
compiler. That's all!

=head1 SEE ALSO

=over

=item L<YAML::XS>

Perl bindings for libyaml (library bundled with distribution).

=back

=head1 AUTHOR

Richard Simões C<< <rsimoes AT cpan DOT org> >>

=head1 COPYRIGHT AND LICENSE

Copyright © 2013 Richard Simões. libyaml written and copyrighted by Kirill
Simonov. Both libyaml and this distribution are released under the terms of the
B<MIT License> and may be modified and/or redistributed under the same or any
compatible license.
