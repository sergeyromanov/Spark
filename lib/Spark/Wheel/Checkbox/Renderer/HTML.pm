package Spark::Wheel::Checkbox::Renderer::HTML;

use Moose;
with 'Spark::Renderer';

sub render {
    my ($self, $node, $data) = @_;
    require HTML::Tiny;
    return HTML::Tiny->new->button({name => $node->name});
}

__PACKAGE__->meta->make_immutable;

1;
