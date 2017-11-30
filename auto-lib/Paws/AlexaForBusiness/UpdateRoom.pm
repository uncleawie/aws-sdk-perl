
package Paws::AlexaForBusiness::UpdateRoom;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has ProfileArn => (is => 'ro', isa => 'Str');
  has ProviderCalendarId => (is => 'ro', isa => 'Str');
  has RoomArn => (is => 'ro', isa => 'Str');
  has RoomName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRoom');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::UpdateRoomResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::UpdateRoom - Arguments for method UpdateRoom on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRoom on the 
Alexa For Business service. Use the attributes of this class
as arguments to method UpdateRoom.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRoom.

As an example:

  $service_obj->UpdateRoom(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Description => Str

The updated description for the room.



=head2 ProfileArn => Str

The updated profile ARN for the room.



=head2 ProviderCalendarId => Str

The updated provider calendar ARN for the room.



=head2 RoomArn => Str

The ARN of the room to update.



=head2 RoomName => Str

The updated name for the room.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRoom in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
