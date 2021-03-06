package Paws::GroundStation::MissionProfileListItem;
  use Moose;
  has MissionProfileArn => (is => 'ro', isa => 'Str', request_name => 'missionProfileArn', traits => ['NameInRequest']);
  has MissionProfileId => (is => 'ro', isa => 'Str', request_name => 'missionProfileId', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Region => (is => 'ro', isa => 'Str', request_name => 'region', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::MissionProfileListItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GroundStation::MissionProfileListItem object:

  $service_obj->Method(Att1 => { MissionProfileArn => $value, ..., Region => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GroundStation::MissionProfileListItem object:

  $result = $service_obj->Method(...);
  $result->Att1->MissionProfileArn

=head1 DESCRIPTION

Item in a list of mission profiles.

=head1 ATTRIBUTES


=head2 MissionProfileArn => Str

  ARN of a mission profile.


=head2 MissionProfileId => Str

  UUID of a mission profile.


=head2 Name => Str

  Name of a mission profile.


=head2 Region => Str

  Region of a mission profile.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

