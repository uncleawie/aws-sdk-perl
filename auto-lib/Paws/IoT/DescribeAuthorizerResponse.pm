
package Paws::IoT::DescribeAuthorizerResponse;
  use Moose;
  has AuthorizerDescription => (is => 'ro', isa => 'Paws::IoT::AuthorizerDescription', traits => ['NameInRequest'], request_name => 'authorizerDescription');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeAuthorizerResponse

=head1 ATTRIBUTES


=head2 AuthorizerDescription => L<Paws::IoT::AuthorizerDescription>

The authorizer description.


=head2 _request_id => Str


=cut

