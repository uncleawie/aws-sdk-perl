package Paws::IoTThingsGraph::SystemTemplateDescription;
  use Moose;
  has Definition => (is => 'ro', isa => 'Paws::IoTThingsGraph::DefinitionDocument', request_name => 'definition', traits => ['NameInRequest']);
  has Summary => (is => 'ro', isa => 'Paws::IoTThingsGraph::SystemTemplateSummary', request_name => 'summary', traits => ['NameInRequest']);
  has ValidatedNamespaceVersion => (is => 'ro', isa => 'Int', request_name => 'validatedNamespaceVersion', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::SystemTemplateDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTThingsGraph::SystemTemplateDescription object:

  $service_obj->Method(Att1 => { Definition => $value, ..., ValidatedNamespaceVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTThingsGraph::SystemTemplateDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->Definition

=head1 DESCRIPTION

An object that contains a system's definition document and summary
information.

=head1 ATTRIBUTES


=head2 Definition => L<Paws::IoTThingsGraph::DefinitionDocument>

  The definition document of a system.


=head2 Summary => L<Paws::IoTThingsGraph::SystemTemplateSummary>

  An object that contains summary information about a system.


=head2 ValidatedNamespaceVersion => Int

  The namespace version against which the system was validated. Use this
value in your system instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

