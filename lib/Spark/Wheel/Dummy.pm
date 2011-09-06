use strict;
use warnings;

package Spark::Wheel::Dummy;
{
  $Spark::Wheel::Dummy::VERSION = '0.1.0';
}

use Moose;

with 'Spark::Simple::Field';
use namespace::autoclean;

has '+renderer' => (
    required => 0,
);

sub render {
    require Carp;
    Carp::croak(q{Don't render me});
}

__PACKAGE__->meta->make_immutable;

1;


=pod

=encoding utf-8

=head1 NAME

Spark::Wheel::Dummy

=head1 VERSION

version 0.1.0

=head1 AUTHORS

=over 4

=item *

James Laver L<http://jameslaver.com>

=item *

Kent Fredric <kentnl@cpan.org>

=item *

Paweł Murias <pawelmurias@gmail.com>

=item *

David Dorward <david@dorward.me.uk>

=back

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by James Laver C<< <sprintf qw(%s@%s.%s cpan jameslaver com)> >>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__
