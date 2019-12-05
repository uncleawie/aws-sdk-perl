package Paws::AlexaForBusiness::CreateMeetingRoomConfiguration;
  use Moose;
  has EndOfMeetingReminder => (is => 'ro', isa => 'Paws::AlexaForBusiness::CreateEndOfMeetingReminder');
  has InstantBooking => (is => 'ro', isa => 'Paws::AlexaForBusiness::CreateInstantBooking');
  has RequireCheckIn => (is => 'ro', isa => 'Paws::AlexaForBusiness::CreateRequireCheckIn');
  has RoomUtilizationMetricsEnabled => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::CreateMeetingRoomConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::CreateMeetingRoomConfiguration object:

  $service_obj->Method(Att1 => { EndOfMeetingReminder => $value, ..., RoomUtilizationMetricsEnabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::CreateMeetingRoomConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->EndOfMeetingReminder

=head1 DESCRIPTION

Creates meeting room settings of a room profile.

=head1 ATTRIBUTES


=head2 EndOfMeetingReminder => L<Paws::AlexaForBusiness::CreateEndOfMeetingReminder>

  


=head2 InstantBooking => L<Paws::AlexaForBusiness::CreateInstantBooking>

  Settings to automatically book a room for a configured duration if it's
free when joining a meeting with Alexa.


=head2 RequireCheckIn => L<Paws::AlexaForBusiness::CreateRequireCheckIn>

  Settings for requiring a check in when a room is reserved. Alexa can
cancel a room reservation if it's not checked into to make the room
available for others. Users can check in by joining the meeting with
Alexa or an AVS device, or by saying E<ldquo>Alexa, check in.E<rdquo>


=head2 RoomUtilizationMetricsEnabled => Bool

  Whether room utilization metrics are enabled or not.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

