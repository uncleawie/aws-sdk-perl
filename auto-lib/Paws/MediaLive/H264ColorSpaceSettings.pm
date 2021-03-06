package Paws::MediaLive::H264ColorSpaceSettings;
  use Moose;
  has ColorSpacePassthroughSettings => (is => 'ro', isa => 'Paws::MediaLive::ColorSpacePassthroughSettings', request_name => 'colorSpacePassthroughSettings', traits => ['NameInRequest']);
  has Rec601Settings => (is => 'ro', isa => 'Paws::MediaLive::Rec601Settings', request_name => 'rec601Settings', traits => ['NameInRequest']);
  has Rec709Settings => (is => 'ro', isa => 'Paws::MediaLive::Rec709Settings', request_name => 'rec709Settings', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::H264ColorSpaceSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::H264ColorSpaceSettings object:

  $service_obj->Method(Att1 => { ColorSpacePassthroughSettings => $value, ..., Rec709Settings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::H264ColorSpaceSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->ColorSpacePassthroughSettings

=head1 DESCRIPTION

H264 Color Space Settings

=head1 ATTRIBUTES


=head2 ColorSpacePassthroughSettings => L<Paws::MediaLive::ColorSpacePassthroughSettings>

  


=head2 Rec601Settings => L<Paws::MediaLive::Rec601Settings>

  


=head2 Rec709Settings => L<Paws::MediaLive::Rec709Settings>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

