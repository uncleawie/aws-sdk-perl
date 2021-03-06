
package Paws::IoT::CreateDomainConfigurationResponse;
  use Moose;
  has DomainConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainConfigurationArn');
  has DomainConfigurationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainConfigurationName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateDomainConfigurationResponse

=head1 ATTRIBUTES


=head2 DomainConfigurationArn => Str

The ARN of the domain configuration.


=head2 DomainConfigurationName => Str

The name of the domain configuration.


=head2 _request_id => Str


=cut

