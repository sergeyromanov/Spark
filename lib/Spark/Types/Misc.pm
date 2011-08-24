use strict;
use warnings;

package Spark::Types::Misc;

# FILENAME: Misc.pm
# CREATED: 24/08/11 19:08:53 by Kent Fredric (kentnl) <kentfredric@gmail.com>
# ABSTRACT: Miscellaneous types that wouldn't go anywhere else.

use Spark::Types::Classes qw( :all );
use Spark::Types::Roles qw( :all );
use MooseX::Types::Moose qw( :all );

use MooseX::Types -declare => [qw(
      Hashray BalancedList
      NamedObject LabelledObject
      ModPlugObject
      )];

=head1 TYPES

=cut

class_type Hashray,       {class => 'Spark::Hashray'};
class_type ModPlugObject, {class => 'Module::Pluggable::Object'};

subtype BalancedList,
  as ArrayRef,
  where { @{$_} % 2 == 0 };

coerce Hashray,
  from BalancedList,
  via {
    require Spark::Hashray;
    return Spark::Hashray->new(@{$_});
  };

coerce SparkHashray,
  from BalancedList,
  via {
    require Spark::Hashray;
    return Spark::Hashray->new(@{$_});
  };

subtype LabelledObject, as Object, where {
    $_->can('label') and $_->label;
};

subtype NamedObject, as Object, where {
    $_->can('name') and $_->name;
};

no Moose;
__PACKAGE__->meta->make_immutable;
1;
