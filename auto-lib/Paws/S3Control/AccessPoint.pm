package Paws::S3Control::AccessPoint;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NetworkOrigin => (is => 'ro', isa => 'Str', required => 1);
  has VpcConfiguration => (is => 'ro', isa => 'Paws::S3Control::VpcConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::AccessPoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::AccessPoint object:

  $service_obj->Method(Att1 => { Bucket => $value, ..., VpcConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::AccessPoint object:

  $result = $service_obj->Method(...);
  $result->Att1->Bucket

=head1 DESCRIPTION

An access point used to access a bucket.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

  The name of the bucket associated with this access point.


=head2 B<REQUIRED> Name => Str

  The name of this access point.


=head2 B<REQUIRED> NetworkOrigin => Str

  Indicates whether this access point allows access from the public
Internet. If C<VpcConfiguration> is specified for this access point,
then C<NetworkOrigin> is C<VPC>, and the access point doesn't allow
access from the public Internet. Otherwise, C<NetworkOrigin> is
C<Internet>, and the access point allows access from the public
Internet, subject to the access point and bucket access policies.


=head2 VpcConfiguration => L<Paws::S3Control::VpcConfiguration>

  The Virtual Private Cloud (VPC) configuration for this access point, if
one exists.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

