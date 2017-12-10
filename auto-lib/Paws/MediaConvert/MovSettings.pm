package Paws::MediaConvert::MovSettings;
  use Moose;
  has ClapAtom => (is => 'ro', isa => 'Str', request_name => 'clapAtom', traits => ['NameInRequest']);
  has CslgAtom => (is => 'ro', isa => 'Str', request_name => 'cslgAtom', traits => ['NameInRequest']);
  has Mpeg2FourCCControl => (is => 'ro', isa => 'Str', request_name => 'mpeg2FourCCControl', traits => ['NameInRequest']);
  has PaddingControl => (is => 'ro', isa => 'Str', request_name => 'paddingControl', traits => ['NameInRequest']);
  has Reference => (is => 'ro', isa => 'Str', request_name => 'reference', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::MovSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::MovSettings object:

  $service_obj->Method(Att1 => { ClapAtom => $value, ..., Reference => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::MovSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->ClapAtom

=head1 DESCRIPTION

Settings for MOV Container.

=head1 ATTRIBUTES


=head2 ClapAtom => Str

  


=head2 CslgAtom => Str

  


=head2 Mpeg2FourCCControl => Str

  


=head2 PaddingControl => Str

  


=head2 Reference => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

