package Paws::AlexaForBusiness::UpdateMeetingRoomConfiguration;
  use Moose;
  has EndOfMeetingReminder => (is => 'ro', isa => 'Paws::AlexaForBusiness::UpdateEndOfMeetingReminder');
  has InstantBooking => (is => 'ro', isa => 'Paws::AlexaForBusiness::UpdateInstantBooking');
  has RequireCheckIn => (is => 'ro', isa => 'Paws::AlexaForBusiness::UpdateRequireCheckIn');
  has RoomUtilizationMetricsEnabled => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::UpdateMeetingRoomConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::UpdateMeetingRoomConfiguration object:

  $service_obj->Method(Att1 => { EndOfMeetingReminder => $value, ..., RoomUtilizationMetricsEnabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::UpdateMeetingRoomConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->EndOfMeetingReminder

=head1 DESCRIPTION

Updates meeting room settings of a room profile.

=head1 ATTRIBUTES


=head2 EndOfMeetingReminder => L<Paws::AlexaForBusiness::UpdateEndOfMeetingReminder>

  Settings for the end of meeting reminder feature that are applied to a
room profile. The end of meeting reminder enables Alexa to remind users
when a meeting is ending.


=head2 InstantBooking => L<Paws::AlexaForBusiness::UpdateInstantBooking>

  Settings to automatically book an available room available for a
configured duration when joining a meeting with Alexa.


=head2 RequireCheckIn => L<Paws::AlexaForBusiness::UpdateRequireCheckIn>

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

