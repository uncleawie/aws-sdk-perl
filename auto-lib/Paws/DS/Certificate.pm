package Paws::DS::Certificate;
  use Moose;
  has CertificateId => (is => 'ro', isa => 'Str');
  has CommonName => (is => 'ro', isa => 'Str');
  has ExpiryDateTime => (is => 'ro', isa => 'Str');
  has RegisteredDateTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has StateReason => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::Certificate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DS::Certificate object:

  $service_obj->Method(Att1 => { CertificateId => $value, ..., StateReason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DS::Certificate object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateId

=head1 DESCRIPTION

Information about the certificate.

=head1 ATTRIBUTES


=head2 CertificateId => Str

  The identifier of the certificate.


=head2 CommonName => Str

  The common name for the certificate.


=head2 ExpiryDateTime => Str

  The date and time when the certificate will expire.


=head2 RegisteredDateTime => Str

  The date and time that the certificate was registered.


=head2 State => Str

  The state of the certificate.


=head2 StateReason => Str

  Describes a state change for the certificate.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

