package File::Spec::Android;

use strict;
use vars qw(@ISA $VERSION);
require File::Spec::Unix;

$VERSION = '3.40';
$VERSION =~ tr/_//;

@ISA = qw(File::Spec::Unix);

=head1 NAME

File::Spec::Android - methods for Android file specs

=head1 SYNOPSIS

 require File::Spec::Android; # Done internally by File::Spec if needed

=head1 DESCRIPTION

See L<File::Spec> and L<File::Spec::Unix>.  This package overrides the
implementation of these methods, not the semantics.

=cut

=pod

=over 4

=item tmpdir

Returns the contents of $ENV{TMPDIR}, if that directory exits or the
current working directory otherwise.

The Android doesn't have global temporary directory.

=cut

my $tmpdir;
sub tmpdir {
    return $tmpdir if defined $tmpdir;
    $tmpdir = $_[0]->_tmpdir( $ENV{TMPDIR} );
}

=back

=head1 COPYRIGHT

Copyright (c) 2004,2007,2014 by the Perl 5 Porters.  All rights reserved.

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
