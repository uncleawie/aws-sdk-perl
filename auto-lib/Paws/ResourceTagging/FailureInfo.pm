package Paws::ResourceTagging::FailureInfo;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has StatusCode => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceTagging::FailureInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ResourceTagging::FailureInfo object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., StatusCode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ResourceTagging::FailureInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Information about the errors that are returned for each failed
resource. This information can include C<InternalServiceException> and
C<InvalidParameterException> errors. It can also include any valid
error code returned by the AWS service that hosts the resource that the
ARN key represents.

The following are common error codes that you might receive from other
AWS services:

=over

=item *

B<InternalServiceException> E<ndash> This can mean that the Resource
Groups Tagging API didn't receive a response from another AWS service.
It can also mean the the resource type in the request is not supported
by the Resource Groups Tagging API. In these cases, it's safe to retry
the request and then call GetResources
(http://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_GetResources.html)
to verify the changes.

=item *

B<AccessDeniedException> E<ndash> This can mean that you need
permission to calling tagging operations in the AWS service that
contains the resource. For example, to use the Resource Groups Tagging
API to tag a CloudWatch alarm resource, you need permission to call
C<TagResources>
(http://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_TagResources.html)
I<and> C<TagResource>
(http://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_TagResource.html)
in the CloudWatch API.

=back

For more information on errors that are generated from other AWS
services, see the documentation for that service.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  The code of the common error. Valid values include
C<InternalServiceException>, C<InvalidParameterException>, and any
valid error code returned by the AWS service that hosts the resource
that you want to tag.


=head2 ErrorMessage => Str

  The message of the common error.


=head2 StatusCode => Int

  The HTTP status code of the common error.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ResourceTagging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

