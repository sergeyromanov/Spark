use strict;
use warnings;

package Spark::Form::Types;

# ABSTRACT: Utility Type-Library for Spark::Form

use MooseX::Types::Moose qw(:all);
use MooseX::Types -declare => [
    qw(
      PluginNamespaceList
      SparkFormField
      SparkForm
      SparkField
      SForm
      SField
      SparkValidator
      SparkResultItem
      SFieldResult
      SFieldValidator
      SFieldValidatorResult
      SPluginLoader
      )
];

subtype PluginNamespaceList, as ArrayRef [Str];

coerce PluginNamespaceList, from Str, via { [$_] };

coerce PluginNamespaceList, from Undef, via { [] };

class_type SparkFormField, {class => 'Spark::Form::Field'};
class_type SparkField,     {class => 'Spark::Field'};

class_type SparkForm,       {class => 'Spark::Form'};
class_type SparkValidator,  {class => 'Spark::Validator'};
class_type SparkResultItem, {class => 'Spark::Result::Item'};

class_type SForm,                 {class => 'Spark::Form'};
class_type SField,                {class => 'Spark::Form::Field'};
class_type SFieldResult,          {class => 'Spark::Form::Field::Result'};
class_type SFieldValidator,       {class => 'Spark::Form::Field::Validator'};
class_type SFieldValidatorResult, {class => 'Spark::Form::Field::Validator::Result'};
class_type SPluginLoader,         {class => 'Spark::Form::PluginLoader'};

1;
__END__
