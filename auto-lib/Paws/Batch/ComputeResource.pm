package Paws::Batch::ComputeResource;
  use Moose;
  has AllocationStrategy => (is => 'ro', isa => 'Str', request_name => 'allocationStrategy', traits => ['NameInRequest']);
  has BidPercentage => (is => 'ro', isa => 'Int', request_name => 'bidPercentage', traits => ['NameInRequest']);
  has DesiredvCpus => (is => 'ro', isa => 'Int', request_name => 'desiredvCpus', traits => ['NameInRequest']);
  has Ec2KeyPair => (is => 'ro', isa => 'Str', request_name => 'ec2KeyPair', traits => ['NameInRequest']);
  has ImageId => (is => 'ro', isa => 'Str', request_name => 'imageId', traits => ['NameInRequest']);
  has InstanceRole => (is => 'ro', isa => 'Str', request_name => 'instanceRole', traits => ['NameInRequest'], required => 1);
  has InstanceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'instanceTypes', traits => ['NameInRequest'], required => 1);
  has LaunchTemplate => (is => 'ro', isa => 'Paws::Batch::LaunchTemplateSpecification', request_name => 'launchTemplate', traits => ['NameInRequest']);
  has MaxvCpus => (is => 'ro', isa => 'Int', request_name => 'maxvCpus', traits => ['NameInRequest'], required => 1);
  has MinvCpus => (is => 'ro', isa => 'Int', request_name => 'minvCpus', traits => ['NameInRequest'], required => 1);
  has PlacementGroup => (is => 'ro', isa => 'Str', request_name => 'placementGroup', traits => ['NameInRequest']);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'securityGroupIds', traits => ['NameInRequest']);
  has SpotIamFleetRole => (is => 'ro', isa => 'Str', request_name => 'spotIamFleetRole', traits => ['NameInRequest']);
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'subnets', traits => ['NameInRequest'], required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Batch::TagsMap', request_name => 'tags', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::ComputeResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::ComputeResource object:

  $service_obj->Method(Att1 => { AllocationStrategy => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::ComputeResource object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocationStrategy

=head1 DESCRIPTION

An object representing an AWS Batch compute resource.

=head1 ATTRIBUTES


=head2 AllocationStrategy => Str

  The allocation strategy to use for the compute resource in case not
enough instances of the best fitting instance type can be allocated.
This could be due to availability of the instance type in the region or
Amazon EC2 service limits
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-resource-limits.html).
If this is not specified, the default is C<BEST_FIT>, which will use
only the best fitting instance type, waiting for additional capacity if
it's not available. This allocation strategy keeps costs lower but can
limit scaling. If you are using Spot Fleets with C<BEST_FIT> then the
Spot Fleet IAM Role must be specified. C<BEST_FIT_PROGRESSIVE> will
select additional instance types that are large enough to meet the
requirements of the jobs in the queue, with a preference for instance
types with a lower cost per vCPU. C<SPOT_CAPACITY_OPTIMIZED> is only
available for Spot Instance compute resources and will select
additional instance types that are large enough to meet the
requirements of the jobs in the queue, with a preference for instance
types that are less likely to be interrupted. For more information, see
Allocation Strategies
(https://docs.aws.amazon.com/batch/latest/userguide/allocation-strategies.html
) in the I<AWS Batch User Guide>.


=head2 BidPercentage => Int

  The maximum percentage that a Spot Instance price can be when compared
with the On-Demand price for that instance type before instances are
launched. For example, if your maximum percentage is 20%, then the Spot
price must be below 20% of the current On-Demand price for that Amazon
EC2 instance. You always pay the lowest (market) price and never more
than your maximum percentage. If you leave this field empty, the
default value is 100% of the On-Demand price.


=head2 DesiredvCpus => Int

  The desired number of Amazon EC2 vCPUS in the compute environment.


=head2 Ec2KeyPair => Str

  The Amazon EC2 key pair that is used for instances launched in the
compute environment.


=head2 ImageId => Str

  The Amazon Machine Image (AMI) ID used for instances launched in the
compute environment.


=head2 B<REQUIRED> InstanceRole => Str

  The Amazon ECS instance profile applied to Amazon EC2 instances in a
compute environment. You can specify the short name or full Amazon
Resource Name (ARN) of an instance profile. For example, C<
I<ecsInstanceRole> > or
C<arn:aws:iam::I<E<lt>aws_account_idE<gt>>:instance-profile/I<ecsInstanceRole>
>. For more information, see Amazon ECS Instance Role
(https://docs.aws.amazon.com/batch/latest/userguide/instance_IAM_role.html)
in the I<AWS Batch User Guide>.


=head2 B<REQUIRED> InstanceTypes => ArrayRef[Str|Undef]

  The instances types that may be launched. You can specify instance
families to launch any instance type within those families (for
example, C<c5> or C<p3>), or you can specify specific sizes within a
family (such as C<c5.8xlarge>). You can also choose C<optimal> to pick
instance types (from the C, M, and R instance families) on the fly that
match the demand of your job queues.


=head2 LaunchTemplate => L<Paws::Batch::LaunchTemplateSpecification>

  The launch template to use for your compute resources. Any other
compute resource parameters that you specify in a
CreateComputeEnvironment API operation override the same parameters in
the launch template. You must specify either the launch template ID or
launch template name in the request, but not both. For more
information, see Launch Template Support
(https://docs.aws.amazon.com/batch/latest/userguide/launch-templates.html)
in the I<AWS Batch User Guide>.


=head2 B<REQUIRED> MaxvCpus => Int

  The maximum number of Amazon EC2 vCPUs that an environment can reach.


=head2 B<REQUIRED> MinvCpus => Int

  The minimum number of Amazon EC2 vCPUs that an environment should
maintain (even if the compute environment is C<DISABLED>).


=head2 PlacementGroup => Str

  The Amazon EC2 placement group to associate with your compute
resources. If you intend to submit multi-node parallel jobs to your
compute environment, you should consider creating a cluster placement
group and associate it with your compute resources. This keeps your
multi-node parallel job on a logical grouping of instances within a
single Availability Zone with high network flow potential. For more
information, see Placement Groups
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html)
in the I<Amazon EC2 User Guide for Linux Instances>.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

  The Amazon EC2 security groups associated with instances launched in
the compute environment. One or more security groups must be specified,
either in C<securityGroupIds> or using a launch template referenced in
C<launchTemplate>. If security groups are specified using both
C<securityGroupIds> and C<launchTemplate>, the values in
C<securityGroupIds> will be used.


=head2 SpotIamFleetRole => Str

  The Amazon Resource Name (ARN) of the Amazon EC2 Spot Fleet IAM role
applied to a C<SPOT> compute environment. This role is required if the
allocation strategy set to C<BEST_FIT> or if the allocation strategy is
not specified. For more information, see Amazon EC2 Spot Fleet Role
(https://docs.aws.amazon.com/batch/latest/userguide/spot_fleet_IAM_role.html)
in the I<AWS Batch User Guide>.


=head2 B<REQUIRED> Subnets => ArrayRef[Str|Undef]

  The VPC subnets into which the compute resources are launched. For more
information, see VPCs and Subnets
(https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html) in
the I<Amazon VPC User Guide>.


=head2 Tags => L<Paws::Batch::TagsMap>

  Key-value pair tags to be applied to resources that are launched in the
compute environment. For AWS Batch, these take the form of "String1":
"String2", where String1 is the tag key and String2 is the tag
valueE<mdash>for example, { "Name": "AWS Batch Instance - C4OnDemand"
}.


=head2 B<REQUIRED> Type => Str

  The type of compute environment: C<EC2> or C<SPOT>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

