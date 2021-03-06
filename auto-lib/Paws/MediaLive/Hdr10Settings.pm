package Paws::MediaLive::Hdr10Settings;
  use Moose;
  has MaxCll => (is => 'ro', isa => 'Int', request_name => 'maxCll', traits => ['NameInRequest']);
  has MaxFall => (is => 'ro', isa => 'Int', request_name => 'maxFall', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::Hdr10Settings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::Hdr10Settings object:

  $service_obj->Method(Att1 => { MaxCll => $value, ..., MaxFall => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::Hdr10Settings object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxCll

=head1 DESCRIPTION

Hdr10 Settings

=head1 ATTRIBUTES


=head2 MaxCll => Int

  Maximum Content Light Level An integer metadata value defining the
maximum light level, in nits, of any single pixel within an encoded HDR
video stream or file.


=head2 MaxFall => Int

  Maximum Frame Average Light Level An integer metadata value defining
the maximum average light level, in nits, for any single frame within
an encoded HDR video stream or file.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

