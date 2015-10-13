package Paws::IoT::Certificate;
  use Moose;
  has certificateArn => (is => 'ro', isa => 'Str');
  has certificateId => (is => 'ro', isa => 'Str');
  has creationDate => (is => 'ro', isa => 'Str');
  has status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::Certificate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::Certificate object:

  $service_obj->Method(Att1 => { certificateArn => $value, ..., status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::Certificate object:

  $result = $service_obj->Method(...);
  $result->Att1->certificateArn

=head1 DESCRIPTION

Information about a certificate.

=head1 ATTRIBUTES

=head2 certificateArn => Str

  The ARN of the certificate.

=head2 certificateId => Str

  The ID of the certificate.

=head2 creationDate => Str

  The date and time the certificate was created.

=head2 status => Str

  The status of the certificate.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

