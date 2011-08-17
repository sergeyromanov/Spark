package Spark::Renders;

use Moose::Role;
use Spark::Types qw(:all);

has renderer => (
    isa => SparkRenderer,
    is => 'rw',
    required => 1,
);

sub render {
    my ($self,$node,$data,@args) = @_;
    $self->renderer->render($node,$data,@args);
}

1;
__END__