package Paws::Pinpoint::SMSChannelRequest;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool');
  has SenderId => (is => 'ro', isa => 'Str');
  has ShortCode => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SMSChannelRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SMSChannelRequest object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., ShortCode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SMSChannelRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

SMS Channel Request

=head1 ATTRIBUTES


=head2 Enabled => Bool

  If the channel is enabled for sending messages.


=head2 SenderId => Str

  Sender identifier of your messages.


=head2 ShortCode => Str

  ShortCode registered with phone provider.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

