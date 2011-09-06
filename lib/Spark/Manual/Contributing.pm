use strict;
use warnings;

package Spark::Manual::Contributing;
{
  $Spark::Manual::Contributing::VERSION = '0.1.0';
}

# FILENAME: Contributing.pm
# CREATED: 07/09/11 08:01:41 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: Contributing to Spark
1;


__END__
=pod

=encoding utf-8

=head1 NAME

Spark::Manual::Contributing - Contributing to Spark

=head1 VERSION

version 0.1.0

=head1 Base Prerequisites

=head2 git

Our work-flow and such is git centric, and its really impossible to work on this project productively without it.
Parts of the build and release cycle also involve git in essential components in ways
that is simply not practical to factor out at this time.

=head2 a reasonable working knowledge of git

Not essential, and we're more than happy to help you with it,
but the more you know about git, the happier you will be, and the happier we will be =).

=head2 a CPAN client

For the rest of this document for simplicity,
I'll just say C<cpanm>, but any other C<cpan> client should work too , albeit with different syntax.

=head1 Getting Started

=head2 Getting a Git Repository.

Presently, the primary work repository is at:

=over 4

=item * web:       https://github.com/perl-spark/Spark

=item * read-only:  git://github.com/perl-spark/Spark.git

=item * read-write: git@github.com:perl-spark/Spark.git

=back

Its advised you make yourself a fork of that repository on github, and then clone that locally.

  git clone git@github.com:YOURNAME/Spark.git

And then you'll probably wish to add our clone as an upstream source.

  cd Spark
  git add remote spark git://github.com/perl-spark/Spark.git
  git remote update

=head2 Installing Development dependencies

Our development toolkit uses L<Dist::Zilla> for managing and simplifying our work effort
and improving overall consistency.

  cpanm Dist::Zilla

Once Dist::Zilla is installed, you can get a list of authoring dependencies
via

  dzil authordeps --missing

from the project directory.

And you can then install these things with:

  dzil authordeps --missing | cpanm

or similar.

From time to time this may be insufficient and there may be problems with this,
but that constitutes a bug of sorts most of the time, so hit us up on #spark@irc.perl.org

It may also be worth your while to install L<Dist::Zilla::App::Command::cover> if you wish
to do coverage testing, but you should be able to easily work without it.

  cpanm Dist::Zilla::App::Command::cover

=head1 Running Tests

=head2 Code Tests

There are 2 ways you can do this.

Most tests should be fine to run by simply doing

  prove -lvr t/

From the project root.

However, that will give a limited perspective of the tests, and will also not run all the tests available.

( A few tests are injected/generated by Dist::Zilla, the most important being the compile test )

If you can, the preferred way is:

  dzil test

And if you fancy a little ( o.k., a lot ) more detail,

  dzil test -v

=head2 Style / Author / Release tests

For your convenience and sanity, these tests are kept out of the default test set.

Assuming you installed L<Dist::Zilla::Plugin::CheckExtraTests> as part of the C<authordeps>,
you should be able to do:

  dzil xtest

Which will do a variety of critic tests and so-forth, and while its not essential that contributors
run these tests, if your contributions keep these tests passing its greatly appreciated =).

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

