use strict;
use warnings;

package Spark::Types::Roles;

# ABSTRACT: MooseX::Types for all Spark Roles

# NOTE: This file is generated from the template Spark_Types_Roles.pm.tpl
# DO NOT EDIT THIS FILE.
# Last generated at [% timestamp %]

use MooseX::Types -declare => [qw([% FOREACH role IN roles %]
      [% role.short -%]
[% END %]
      )];
use namespace::autoclean;

=head1 TYPES


[% FOREACH role IN roles %]
=head2 [% role.short %]

  does => '[% role.long %]'

=cut

role_type [% role.short %], {
    role    => '[% role.long %]',
    message => sub {
        return qq{$_ is not of role "[% role.long %]"};
    },
};
[% END %]
1;
__END__
