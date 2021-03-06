package Paws::Rekognition::RegionOfInterest;
  use Moose;
  has BoundingBox => (is => 'ro', isa => 'Paws::Rekognition::BoundingBox');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::RegionOfInterest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::RegionOfInterest object:

  $service_obj->Method(Att1 => { BoundingBox => $value, ..., BoundingBox => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::RegionOfInterest object:

  $result = $service_obj->Method(...);
  $result->Att1->BoundingBox

=head1 DESCRIPTION

Specifies a location within the frame that Rekognition checks for text.
Uses a C<BoundingBox> object to set a region of the screen.

A word is included in the region if the word is more than half in that
region. If there is more than one region, the word will be compared
with all regions of the screen. Any word more than half in a region is
kept in the results.

=head1 ATTRIBUTES


=head2 BoundingBox => L<Paws::Rekognition::BoundingBox>

  The box representing a region of interest on screen.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

