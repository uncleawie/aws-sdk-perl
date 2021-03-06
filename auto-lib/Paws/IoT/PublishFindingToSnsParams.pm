package Paws::IoT::PublishFindingToSnsParams;
  use Moose;
  has TopicArn => (is => 'ro', isa => 'Str', request_name => 'topicArn', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::PublishFindingToSnsParams

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::PublishFindingToSnsParams object:

  $service_obj->Method(Att1 => { TopicArn => $value, ..., TopicArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::PublishFindingToSnsParams object:

  $result = $service_obj->Method(...);
  $result->Att1->TopicArn

=head1 DESCRIPTION

Parameters to define a mitigation action that publishes findings to
Amazon SNS. You can implement your own custom actions in response to
the Amazon SNS messages.

=head1 ATTRIBUTES


=head2 B<REQUIRED> TopicArn => Str

  The ARN of the topic to which you want to publish the findings.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

