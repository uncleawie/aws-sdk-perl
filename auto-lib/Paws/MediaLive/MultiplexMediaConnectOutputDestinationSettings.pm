package Paws::MediaLive::MultiplexMediaConnectOutputDestinationSettings;
  use Moose;
  has EntitlementArn => (is => 'ro', isa => 'Str', request_name => 'entitlementArn', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::MultiplexMediaConnectOutputDestinationSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::MultiplexMediaConnectOutputDestinationSettings object:

  $service_obj->Method(Att1 => { EntitlementArn => $value, ..., EntitlementArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::MultiplexMediaConnectOutputDestinationSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->EntitlementArn

=head1 DESCRIPTION

Multiplex MediaConnect output destination settings.

=head1 ATTRIBUTES


=head2 EntitlementArn => Str

  The MediaConnect entitlement ARN available as a Flow source.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

