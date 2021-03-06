
package Paws::SageMaker::DescribeUserProfile;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', required => 1);
  has UserProfileName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeUserProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeUserProfileResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeUserProfile - Arguments for method DescribeUserProfile on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeUserProfile on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeUserProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeUserProfile.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeUserProfileResponse = $api . sagemaker->DescribeUserProfile(
      DomainId        => 'MyDomainId',
      UserProfileName => 'MyUserProfileName',

    );

    # Results:
    my $CreationTime  = $DescribeUserProfileResponse->CreationTime;
    my $DomainId      = $DescribeUserProfileResponse->DomainId;
    my $FailureReason = $DescribeUserProfileResponse->FailureReason;
    my $HomeEfsFileSystemUid =
      $DescribeUserProfileResponse->HomeEfsFileSystemUid;
    my $LastModifiedTime = $DescribeUserProfileResponse->LastModifiedTime;
    my $SingleSignOnUserIdentifier =
      $DescribeUserProfileResponse->SingleSignOnUserIdentifier;
    my $SingleSignOnUserValue =
      $DescribeUserProfileResponse->SingleSignOnUserValue;
    my $Status          = $DescribeUserProfileResponse->Status;
    my $UserProfileArn  = $DescribeUserProfileResponse->UserProfileArn;
    my $UserProfileName = $DescribeUserProfileResponse->UserProfileName;
    my $UserSettings    = $DescribeUserProfileResponse->UserSettings;

    # Returns a L<Paws::SageMaker::DescribeUserProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeUserProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainId => Str

The domain ID.



=head2 B<REQUIRED> UserProfileName => Str

The user profile name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeUserProfile in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

