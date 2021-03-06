package Paws::EKS::Issue;
  use Moose;
  has Code => (is => 'ro', isa => 'Str', request_name => 'code', traits => ['NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);
  has ResourceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'resourceIds', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::Issue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::Issue object:

  $service_obj->Method(Att1 => { Code => $value, ..., ResourceIds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::Issue object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

An object representing an issue with an Amazon EKS resource.

=head1 ATTRIBUTES


=head2 Code => Str

  A brief description of the error.

=over

=item *

B<AutoScalingGroupNotFound>: We couldn't find the Auto Scaling group
associated with the managed node group. You may be able to recreate an
Auto Scaling group with the same settings to recover.

=item *

B<Ec2SecurityGroupNotFound>: We couldn't find the cluster security
group for the cluster. You must recreate your cluster.

=item *

B<Ec2SecurityGroupDeletionFailure>: We could not delete the remote
access security group for your managed node group. Remove any
dependencies from the security group.

=item *

B<Ec2LaunchTemplateNotFound>: We couldn't find the Amazon EC2 launch
template for your managed node group. You may be able to recreate a
launch template with the same settings to recover.

=item *

B<Ec2LaunchTemplateVersionMismatch>: The Amazon EC2 launch template
version for your managed node group does not match the version that
Amazon EKS created. You may be able to revert to the version that
Amazon EKS created to recover.

=item *

B<IamInstanceProfileNotFound>: We couldn't find the IAM instance
profile for your managed node group. You may be able to recreate an
instance profile with the same settings to recover.

=item *

B<IamNodeRoleNotFound>: We couldn't find the IAM role for your managed
node group. You may be able to recreate an IAM role with the same
settings to recover.

=item *

B<AsgInstanceLaunchFailures>: Your Auto Scaling group is experiencing
failures while attempting to launch instances.

=item *

B<NodeCreationFailure>: Your launched instances are unable to register
with your Amazon EKS cluster. Common causes of this failure are
insufficient worker node IAM role
(https://docs.aws.amazon.com/eks/latest/userguide/worker_node_IAM_role.html)
permissions or lack of outbound internet access for the nodes.

=item *

B<InstanceLimitExceeded>: Your AWS account is unable to launch any more
instances of the specified instance type. You may be able to request an
Amazon EC2 instance limit increase to recover.

=item *

B<InsufficientFreeAddresses>: One or more of the subnets associated
with your managed node group does not have enough available IP
addresses for new nodes.

=item *

B<AccessDenied>: Amazon EKS or one or more of your managed nodes is
unable to communicate with your cluster API server.

=item *

B<InternalFailure>: These errors are usually caused by an Amazon EKS
server-side issue.

=back



=head2 Message => Str

  The error message associated with the issue.


=head2 ResourceIds => ArrayRef[Str|Undef]

  The AWS resources that are afflicted by this issue.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

