package Paws::IoT::AwsJobPresignedUrlConfig;
  use Moose;
  has ExpiresInSec => (is => 'ro', isa => 'Int', request_name => 'expiresInSec', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AwsJobPresignedUrlConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::AwsJobPresignedUrlConfig object:

  $service_obj->Method(Att1 => { ExpiresInSec => $value, ..., ExpiresInSec => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::AwsJobPresignedUrlConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->ExpiresInSec

=head1 DESCRIPTION

Configuration information for pre-signed URLs. Valid when C<protocols>
contains HTTP.

=head1 ATTRIBUTES


=head2 ExpiresInSec => Int

  How long (in seconds) pre-signed URLs are valid. Valid values are 60 -
3600, the default value is 1800 seconds. Pre-signed URLs are generated
when a request for the job document is received.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

