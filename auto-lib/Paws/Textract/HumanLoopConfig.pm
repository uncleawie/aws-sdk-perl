package Paws::Textract::HumanLoopConfig;
  use Moose;
  has DataAttributes => (is => 'ro', isa => 'Paws::Textract::HumanLoopDataAttributes');
  has FlowDefinitionArn => (is => 'ro', isa => 'Str', required => 1);
  has HumanLoopName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::HumanLoopConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Textract::HumanLoopConfig object:

  $service_obj->Method(Att1 => { DataAttributes => $value, ..., HumanLoopName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Textract::HumanLoopConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->DataAttributes

=head1 DESCRIPTION

Sets up the human review workflow the document will be sent to if one
of the conditions is met. You can also set certain attributes of the
image before review.

=head1 ATTRIBUTES


=head2 DataAttributes => L<Paws::Textract::HumanLoopDataAttributes>

  Sets attributes of the input data.


=head2 B<REQUIRED> FlowDefinitionArn => Str

  The Amazon Resource Name (ARN) of the flow definition.


=head2 B<REQUIRED> HumanLoopName => Str

  The name of the human workflow used for this image. This should be kept
unique within a region.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

