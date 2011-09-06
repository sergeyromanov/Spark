#!perl

use strict;
use warnings;

use Test::More;
use Spark::Wheel::Radio;
use Spark::Hashray;

my $data = Spark::Hashray->new();

{
    my $b = Spark::Wheel::Radio->new;
    is($b->render($b, $data), '<input type="radio" />', 'Test html representation without name');
}
{
    my $b = Spark::Wheel::Radio->new(name => 'test');
    is($b->name, 'test', "Name stored correctly");
    is($b->render($b, $data), '<input name="test" type="radio" />', 'Test html representation with name');
}

done_testing;
