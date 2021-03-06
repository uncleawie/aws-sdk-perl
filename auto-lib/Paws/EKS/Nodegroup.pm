package Paws::EKS::Nodegroup;
  use Moose;
  has AmiType => (is => 'ro', isa => 'Str', request_name => 'amiType', traits => ['NameInRequest']);
  has ClusterName => (is => 'ro', isa => 'Str', request_name => 'clusterName', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has DiskSize => (is => 'ro', isa => 'Int', request_name => 'diskSize', traits => ['NameInRequest']);
  has Health => (is => 'ro', isa => 'Paws::EKS::NodegroupHealth', request_name => 'health', traits => ['NameInRequest']);
  has InstanceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'instanceTypes', traits => ['NameInRequest']);
  has Labels => (is => 'ro', isa => 'Paws::EKS::LabelsMap', request_name => 'labels', traits => ['NameInRequest']);
  has ModifiedAt => (is => 'ro', isa => 'Str', request_name => 'modifiedAt', traits => ['NameInRequest']);
  has NodegroupArn => (is => 'ro', isa => 'Str', request_name => 'nodegroupArn', traits => ['NameInRequest']);
  has NodegroupName => (is => 'ro', isa => 'Str', request_name => 'nodegroupName', traits => ['NameInRequest']);
  has NodeRole => (is => 'ro', isa => 'Str', request_name => 'nodeRole', traits => ['NameInRequest']);
  has ReleaseVersion => (is => 'ro', isa => 'Str', request_name => 'releaseVersion', traits => ['NameInRequest']);
  has RemoteAccess => (is => 'ro', isa => 'Paws::EKS::RemoteAccessConfig', request_name => 'remoteAccess', traits => ['NameInRequest']);
  has Resources => (is => 'ro', isa => 'Paws::EKS::NodegroupResources', request_name => 'resources', traits => ['NameInRequest']);
  has ScalingConfig => (is => 'ro', isa => 'Paws::EKS::NodegroupScalingConfig', request_name => 'scalingConfig', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'subnets', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::EKS::TagMap', request_name => 'tags', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Str', request_name => 'version', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::Nodegroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::Nodegroup object:

  $service_obj->Method(Att1 => { AmiType => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::Nodegroup object:

  $result = $service_obj->Method(...);
  $result->Att1->AmiType

=head1 DESCRIPTION

An object representing an Amazon EKS managed node group.

=head1 ATTRIBUTES


=head2 AmiType => Str

  The AMI type associated with your node group. GPU instance types should
use the C<AL2_x86_64_GPU> AMI type, which uses the Amazon EKS-optimized
Linux AMI with GPU support. Non-GPU instances should use the
C<AL2_x86_64> AMI type, which uses the Amazon EKS-optimized Linux AMI.


=head2 ClusterName => Str

  The name of the cluster that the managed node group resides in.


=head2 CreatedAt => Str

  The Unix epoch timestamp in seconds for when the managed node group was
created.


=head2 DiskSize => Int

  The root device disk size (in GiB) for your node group instances. The
default disk size is 20 GiB.


=head2 Health => L<Paws::EKS::NodegroupHealth>

  The health status of the node group. If there are issues with your node
group's health, they are listed here.


=head2 InstanceTypes => ArrayRef[Str|Undef]

  The instance types associated with your node group.


=head2 Labels => L<Paws::EKS::LabelsMap>

  The Kubernetes labels applied to the nodes in the node group.

Only labels that are applied with the Amazon EKS API are shown here.
There may be other Kubernetes labels applied to the nodes in this
group.


=head2 ModifiedAt => Str

  The Unix epoch timestamp in seconds for when the managed node group was
last modified.


=head2 NodegroupArn => Str

  The Amazon Resource Name (ARN) associated with the managed node group.


=head2 NodegroupName => Str

  The name associated with an Amazon EKS managed node group.


=head2 NodeRole => Str

  The IAM role associated with your node group. The Amazon EKS worker
node C<kubelet> daemon makes calls to AWS APIs on your behalf. Worker
nodes receive permissions for these API calls through an IAM instance
profile and associated policies. Before you can launch worker nodes and
register them into a cluster, you must create an IAM role for those
worker nodes to use when they are launched. For more information, see
Amazon EKS Worker Node IAM Role
(https://docs.aws.amazon.com/eks/latest/userguide/worker_node_IAM_role.html)
in the I< I<Amazon EKS User Guide> >.


=head2 ReleaseVersion => Str

  The AMI version of the managed node group. For more information, see
Amazon EKS-Optimized Linux AMI Versions
(https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html)
in the I<Amazon EKS User Guide>.


=head2 RemoteAccess => L<Paws::EKS::RemoteAccessConfig>

  The remote access (SSH) configuration that is associated with the node
group.


=head2 Resources => L<Paws::EKS::NodegroupResources>

  The resources associated with the node group, such as Auto Scaling
groups and security groups for remote access.


=head2 ScalingConfig => L<Paws::EKS::NodegroupScalingConfig>

  The scaling configuration details for the Auto Scaling group that is
associated with your node group.


=head2 Status => Str

  The current status of the managed node group.


=head2 Subnets => ArrayRef[Str|Undef]

  The subnets allowed for the Auto Scaling group that is associated with
your node group. These subnets must have the following tag:
C<kubernetes.io/cluster/CLUSTER_NAME>, where C<CLUSTER_NAME> is
replaced with the name of your cluster.


=head2 Tags => L<Paws::EKS::TagMap>

  The metadata applied to the node group to assist with categorization
and organization. Each tag consists of a key and an optional value,
both of which you define. Node group tags do not propagate to any other
resources associated with the node group, such as the Amazon EC2
instances or subnets.


=head2 Version => Str

  The Kubernetes version of the managed node group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

