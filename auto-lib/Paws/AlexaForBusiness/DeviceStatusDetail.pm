package Paws::AlexaForBusiness::DeviceStatusDetail;
  use Moose;
  has Code => (is => 'ro', isa => 'Str');
  has Feature => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::DeviceStatusDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::DeviceStatusDetail object:

  $service_obj->Method(Att1 => { Code => $value, ..., Feature => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::DeviceStatusDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

Details of a deviceE<rsquo>s status.

=head1 ATTRIBUTES


=head2 Code => Str

  The device status detail code.


=head2 Feature => Str

  The list of available features on the device.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
