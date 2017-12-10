
package Paws::SNS::ListTopics;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTopics');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SNS::ListTopicsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListTopicsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::ListTopics - Arguments for method ListTopics on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTopics on the 
Amazon Simple Notification Service service. Use the attributes of this class
as arguments to method ListTopics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTopics.

As an example:

  $service_obj->ListTopics(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 NextToken => Str

Token returned by the previous C<ListTopics> request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTopics in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

