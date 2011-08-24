use strict;
use warnings;
package Spark::Types::Roles;

# ABSTRACT: MooseX::Types for all Spark Roles

# NOTE: This file is generated from the template Spark_Types_Roles.pm.tpl
# DO NOT EDIT THIS FILE.
# Last generated at Wed Aug 24 07:18:37 2011

use MooseX::Types -declare => [qw(
    SparkContainer
    SparkField
    SparkFieldNamed
    SparkFieldValidates
    SparkForm
    SparkFormFieldRoleNewValidator
    SparkFormFieldRolePrintable
    SparkFormFieldRolePrintableHTML
    SparkFormFieldRolePrintableXHTML
    SparkFormFieldValidator
    SparkFormPrinter
    SparkFormPrinterHTML
    SparkFormPrinterXHTML
    SparkFormRoleErrorStore
    SparkFormRoleValidity
    SparkFormSource
    SparkLabelled
    SparkNamed
    SparkNode
    SparkObject
    SparkParent
    SparkRenderer
    SparkRendererContainer
    SparkRenders
    SparkSimpleField
    SparkSimpleForm
    SparkSimpleNode
    SparkValidates
    SparkValidator
)];

=head1 TYPES



=head2 SparkContainer

  does => 'Spark::Container'

=cut

role_type SparkContainer, {
  role    => "Spark::Container",
  message => sub {
    "$_ is not of role \"Spark::Container\""
  },
};



=head2 SparkField

  does => 'Spark::Field'

=cut

role_type SparkField, {
  role    => "Spark::Field",
  message => sub {
    "$_ is not of role \"Spark::Field\""
  },
};



=head2 SparkFieldNamed

  does => 'Spark::Field::Named'

=cut

role_type SparkFieldNamed, {
  role    => "Spark::Field::Named",
  message => sub {
    "$_ is not of role \"Spark::Field::Named\""
  },
};



=head2 SparkFieldValidates

  does => 'Spark::Field::Validates'

=cut

role_type SparkFieldValidates, {
  role    => "Spark::Field::Validates",
  message => sub {
    "$_ is not of role \"Spark::Field::Validates\""
  },
};



=head2 SparkForm

  does => 'Spark::Form'

=cut

role_type SparkForm, {
  role    => "Spark::Form",
  message => sub {
    "$_ is not of role \"Spark::Form\""
  },
};



=head2 SparkFormFieldRoleNewValidator

  does => 'Spark::Form::Field::Role::NewValidator'

=cut

role_type SparkFormFieldRoleNewValidator, {
  role    => "Spark::Form::Field::Role::NewValidator",
  message => sub {
    "$_ is not of role \"Spark::Form::Field::Role::NewValidator\""
  },
};



=head2 SparkFormFieldRolePrintable

  does => 'Spark::Form::Field::Role::Printable'

=cut

role_type SparkFormFieldRolePrintable, {
  role    => "Spark::Form::Field::Role::Printable",
  message => sub {
    "$_ is not of role \"Spark::Form::Field::Role::Printable\""
  },
};



=head2 SparkFormFieldRolePrintableHTML

  does => 'Spark::Form::Field::Role::Printable::HTML'

=cut

role_type SparkFormFieldRolePrintableHTML, {
  role    => "Spark::Form::Field::Role::Printable::HTML",
  message => sub {
    "$_ is not of role \"Spark::Form::Field::Role::Printable::HTML\""
  },
};



=head2 SparkFormFieldRolePrintableXHTML

  does => 'Spark::Form::Field::Role::Printable::XHTML'

=cut

role_type SparkFormFieldRolePrintableXHTML, {
  role    => "Spark::Form::Field::Role::Printable::XHTML",
  message => sub {
    "$_ is not of role \"Spark::Form::Field::Role::Printable::XHTML\""
  },
};



=head2 SparkFormFieldValidator

  does => 'Spark::Form::Field::Validator'

=cut

role_type SparkFormFieldValidator, {
  role    => "Spark::Form::Field::Validator",
  message => sub {
    "$_ is not of role \"Spark::Form::Field::Validator\""
  },
};



=head2 SparkFormPrinter

  does => 'Spark::Form::Printer'

=cut

role_type SparkFormPrinter, {
  role    => "Spark::Form::Printer",
  message => sub {
    "$_ is not of role \"Spark::Form::Printer\""
  },
};



=head2 SparkFormPrinterHTML

  does => 'Spark::Form::Printer::HTML'

=cut

role_type SparkFormPrinterHTML, {
  role    => "Spark::Form::Printer::HTML",
  message => sub {
    "$_ is not of role \"Spark::Form::Printer::HTML\""
  },
};



=head2 SparkFormPrinterXHTML

  does => 'Spark::Form::Printer::XHTML'

=cut

role_type SparkFormPrinterXHTML, {
  role    => "Spark::Form::Printer::XHTML",
  message => sub {
    "$_ is not of role \"Spark::Form::Printer::XHTML\""
  },
};



=head2 SparkFormRoleErrorStore

  does => 'Spark::Form::Role::ErrorStore'

=cut

role_type SparkFormRoleErrorStore, {
  role    => "Spark::Form::Role::ErrorStore",
  message => sub {
    "$_ is not of role \"Spark::Form::Role::ErrorStore\""
  },
};



=head2 SparkFormRoleValidity

  does => 'Spark::Form::Role::Validity'

=cut

role_type SparkFormRoleValidity, {
  role    => "Spark::Form::Role::Validity",
  message => sub {
    "$_ is not of role \"Spark::Form::Role::Validity\""
  },
};



=head2 SparkFormSource

  does => 'Spark::Form::Source'

=cut

role_type SparkFormSource, {
  role    => "Spark::Form::Source",
  message => sub {
    "$_ is not of role \"Spark::Form::Source\""
  },
};



=head2 SparkLabelled

  does => 'Spark::Labelled'

=cut

role_type SparkLabelled, {
  role    => "Spark::Labelled",
  message => sub {
    "$_ is not of role \"Spark::Labelled\""
  },
};



=head2 SparkNamed

  does => 'Spark::Named'

=cut

role_type SparkNamed, {
  role    => "Spark::Named",
  message => sub {
    "$_ is not of role \"Spark::Named\""
  },
};



=head2 SparkNode

  does => 'Spark::Node'

=cut

role_type SparkNode, {
  role    => "Spark::Node",
  message => sub {
    "$_ is not of role \"Spark::Node\""
  },
};



=head2 SparkObject

  does => 'Spark::Object'

=cut

role_type SparkObject, {
  role    => "Spark::Object",
  message => sub {
    "$_ is not of role \"Spark::Object\""
  },
};



=head2 SparkParent

  does => 'Spark::Parent'

=cut

role_type SparkParent, {
  role    => "Spark::Parent",
  message => sub {
    "$_ is not of role \"Spark::Parent\""
  },
};



=head2 SparkRenderer

  does => 'Spark::Renderer'

=cut

role_type SparkRenderer, {
  role    => "Spark::Renderer",
  message => sub {
    "$_ is not of role \"Spark::Renderer\""
  },
};



=head2 SparkRendererContainer

  does => 'Spark::Renderer::Container'

=cut

role_type SparkRendererContainer, {
  role    => "Spark::Renderer::Container",
  message => sub {
    "$_ is not of role \"Spark::Renderer::Container\""
  },
};



=head2 SparkRenders

  does => 'Spark::Renders'

=cut

role_type SparkRenders, {
  role    => "Spark::Renders",
  message => sub {
    "$_ is not of role \"Spark::Renders\""
  },
};



=head2 SparkSimpleField

  does => 'Spark::Simple::Field'

=cut

role_type SparkSimpleField, {
  role    => "Spark::Simple::Field",
  message => sub {
    "$_ is not of role \"Spark::Simple::Field\""
  },
};



=head2 SparkSimpleForm

  does => 'Spark::Simple::Form'

=cut

role_type SparkSimpleForm, {
  role    => "Spark::Simple::Form",
  message => sub {
    "$_ is not of role \"Spark::Simple::Form\""
  },
};



=head2 SparkSimpleNode

  does => 'Spark::Simple::Node'

=cut

role_type SparkSimpleNode, {
  role    => "Spark::Simple::Node",
  message => sub {
    "$_ is not of role \"Spark::Simple::Node\""
  },
};



=head2 SparkValidates

  does => 'Spark::Validates'

=cut

role_type SparkValidates, {
  role    => "Spark::Validates",
  message => sub {
    "$_ is not of role \"Spark::Validates\""
  },
};



=head2 SparkValidator

  does => 'Spark::Validator'

=cut

role_type SparkValidator, {
  role    => "Spark::Validator",
  message => sub {
    "$_ is not of role \"Spark::Validator\""
  },
};



1;
__END__
