package Paws::KinesisVideo::SingleMasterChannelEndpointConfiguration;
  use Moose;
  has Protocols => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Role => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::SingleMasterChannelEndpointConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisVideo::SingleMasterChannelEndpointConfiguration object:

  $service_obj->Method(Att1 => { Protocols => $value, ..., Role => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisVideo::SingleMasterChannelEndpointConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Protocols

=head1 DESCRIPTION

An object that contains the endpoint configuration for the
C<SINGLE_MASTER> channel type.

=head1 ATTRIBUTES


=head2 Protocols => ArrayRef[Str|Undef]

  This property is used to determine the nature of communication over
this C<SINGLE_MASTER> signaling channel. If C<WSS> is specified, this
API returns a websocket endpoint. If C<HTTPS> is specified, this API
returns an C<HTTPS> endpoint.


=head2 Role => Str

  This property is used to determine messaging permissions in this
C<SINGLE_MASTER> signaling channel. If C<MASTER> is specified, this API
returns an endpoint that a client can use to receive offers from and
send answers to any of the viewers on this signaling channel. If
C<VIEWER> is specified, this API returns an endpoint that a client can
use only to send offers to another C<MASTER> client on this signaling
channel.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

