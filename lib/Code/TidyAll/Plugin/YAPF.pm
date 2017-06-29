use strict;
use warnings;
package Code::TidyAll::Plugin::YAPF;

use IPC::Run3 qw(run3);
use Moo;
use Try::Tiny;
extends 'Code::TidyAll::Plugin';

our $VERSION = '0.18';

sub _build_cmd { 'yapf' }

sub transform_file {
    my ( $self, $file ) = @_;

    try {
        my $cmd = join( q{ }, $self->cmd, '-i', $self->argv, $file );

        my $output;
        run3( $cmd, \undef, \$output, \$output );
    }
    catch {
        die sprintf(
            "%s exited with error - possibly bad arg list '%s'\n    $_",
            $self->cmd,
            $self->argv
        );
    };
}

1;

# ABSTRACT: Code::TidyAll plugin to tidy Python code via yapf

=pod

=head1 SYNOPSIS

This module requires L<Code::TidyAll>.

   In the .tidyallrc configuration file add:

   [YAPF]
   select = static/**/*.py

Then run

   tidyall -a

=head1 DESCRIPTION

Runs C<yapf> on Python files.

=item argv

Arguments to pass to C<yapf>.

=item cmd

Full path to C<yapf>.

=back

=head1 ACKNOWLEDGEMENTS

Much of this code was copied from L<Code::TidyAll::Plugin::JSBeautifier>

=cut
