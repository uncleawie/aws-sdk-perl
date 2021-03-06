package Paws::MediaPackageVod::HlsEncryption;
  use Moose;
  has ConstantInitializationVector => (is => 'ro', isa => 'Str', request_name => 'constantInitializationVector', traits => ['NameInRequest']);
  has EncryptionMethod => (is => 'ro', isa => 'Str', request_name => 'encryptionMethod', traits => ['NameInRequest']);
  has SpekeKeyProvider => (is => 'ro', isa => 'Paws::MediaPackageVod::SpekeKeyProvider', request_name => 'spekeKeyProvider', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::HlsEncryption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackageVod::HlsEncryption object:

  $service_obj->Method(Att1 => { ConstantInitializationVector => $value, ..., SpekeKeyProvider => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackageVod::HlsEncryption object:

  $result = $service_obj->Method(...);
  $result->Att1->ConstantInitializationVector

=head1 DESCRIPTION

An HTTP Live Streaming (HLS) encryption configuration.

=head1 ATTRIBUTES


=head2 ConstantInitializationVector => Str

  A constant initialization vector for encryption (optional). When not
specified the initialization vector will be periodically rotated.


=head2 EncryptionMethod => Str

  The encryption method to use.


=head2 B<REQUIRED> SpekeKeyProvider => L<Paws::MediaPackageVod::SpekeKeyProvider>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

