
package Paws::EC2::DetachClassicLinkVpc;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceId' , required => 1);
  has VpcId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachClassicLinkVpc');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DetachClassicLinkVpcResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DetachClassicLinkVpc - Arguments for method DetachClassicLinkVpc on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetachClassicLinkVpc on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DetachClassicLinkVpc.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetachClassicLinkVpc.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DetachClassicLinkVpcResult = $ec2->DetachClassicLinkVpc(
      InstanceId => 'MyInstanceId',
      VpcId      => 'MyVpcId',
      DryRun     => 1,                # OPTIONAL
    );

    # Results:
    my $Return = $DetachClassicLinkVpcResult->Return;

    # Returns a L<Paws::EC2::DetachClassicLinkVpcResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DetachClassicLinkVpc>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InstanceId => Str

The ID of the instance to unlink from the VPC.



=head2 B<REQUIRED> VpcId => Str

The ID of the VPC to which the instance is linked.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetachClassicLinkVpc in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

