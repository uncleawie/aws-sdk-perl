
package Paws::SageMakerRuntime::InvokeEndpointOutput;
  use Moose;
  has Body => (is => 'ro', isa => 'Str', required => 1);
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has InvokedProductionVariant => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-Amzn-Invoked-Production-Variant');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerRuntime::InvokeEndpointOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Body => Str

Includes the inference provided by the model.


=head2 ContentType => Str

The MIME type of the inference returned in the response body.


=head2 InvokedProductionVariant => Str

Identifies the production variant that was invoked.


=head2 _request_id => Str


=cut

