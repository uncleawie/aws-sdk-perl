package Paws::MediaConvert::F4vSettings;
  use Moose;
  has MoovPlacement => (is => 'ro', isa => 'Str', request_name => 'moovPlacement', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::F4vSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::F4vSettings object:

  $service_obj->Method(Att1 => { MoovPlacement => $value, ..., MoovPlacement => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::F4vSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->MoovPlacement

=head1 DESCRIPTION

Settings for F4v container

=head1 ATTRIBUTES


=head2 MoovPlacement => Str

  If set to PROGRESSIVE_DOWNLOAD, the MOOV atom is relocated to the
beginning of the archive as required for progressive downloading.
Otherwise it is placed normally at the end.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
