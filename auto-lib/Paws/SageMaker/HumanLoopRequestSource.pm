package Paws::SageMaker::HumanLoopRequestSource;
  use Moose;
  has AwsManagedHumanLoopRequestSource => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::HumanLoopRequestSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::HumanLoopRequestSource object:

  $service_obj->Method(Att1 => { AwsManagedHumanLoopRequestSource => $value, ..., AwsManagedHumanLoopRequestSource => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::HumanLoopRequestSource object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsManagedHumanLoopRequestSource

=head1 DESCRIPTION

Container for configuring the source of human task requests.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsManagedHumanLoopRequestSource => Str

  Specifies whether Amazon Rekognition or Amazon Textract are used as the
integration source. The default field settings and JSON parsing rules
are different based on the integration source. Valid values:



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

