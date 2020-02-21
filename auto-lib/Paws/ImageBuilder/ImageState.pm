package Paws::ImageBuilder::ImageState;
  use Moose;
  has Reason => (is => 'ro', isa => 'Str', request_name => 'reason', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ImageState

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ImageBuilder::ImageState object:

  $service_obj->Method(Att1 => { Reason => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ImageBuilder::ImageState object:

  $result = $service_obj->Method(...);
  $result->Att1->Reason

=head1 DESCRIPTION

Image state shows the image status and the reason for that status.

=head1 ATTRIBUTES


=head2 Reason => Str

  The reason for the image's status.


=head2 Status => Str

  The status of the image.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

