
package Paws::ApplicationAutoScaling::PutScalingPolicy;
  use Moose;
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyType => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ScalableDimension => (is => 'ro', isa => 'Str', required => 1);
  has ServiceNamespace => (is => 'ro', isa => 'Str', required => 1);
  has StepScalingPolicyConfiguration => (is => 'ro', isa => 'Paws::ApplicationAutoScaling::StepScalingPolicyConfiguration');
  has TargetTrackingScalingPolicyConfiguration => (is => 'ro', isa => 'Paws::ApplicationAutoScaling::TargetTrackingScalingPolicyConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutScalingPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationAutoScaling::PutScalingPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::PutScalingPolicy - Arguments for method PutScalingPolicy on L<Paws::ApplicationAutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutScalingPolicy on the
L<Application Auto Scaling|Paws::ApplicationAutoScaling> service. Use the attributes of this class
as arguments to method PutScalingPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutScalingPolicy.

=head1 SYNOPSIS

    my $application-autoscaling = Paws->service('ApplicationAutoScaling');
    # To apply a scaling policy to an Amazon ECS service
    # This example applies a scaling policy to an Amazon ECS service called
    # web-app in the default cluster. The policy increases the desired count of
    # the service by 200%, with a cool down period of 60 seconds.
    my $PutScalingPolicyResponse = $application -autoscaling->PutScalingPolicy(
      'PolicyName'                     => 'web-app-cpu-gt-75',
      'PolicyType'                     => 'StepScaling',
      'ResourceId'                     => 'service/default/web-app',
      'ScalableDimension'              => 'ecs:service:DesiredCount',
      'ServiceNamespace'               => 'ecs',
      'StepScalingPolicyConfiguration' => {
        'AdjustmentType'  => 'PercentChangeInCapacity',
        'Cooldown'        => 60,
        'StepAdjustments' => [

          {
            'MetricIntervalLowerBound' => 0,
            'ScalingAdjustment'        => 200
          }
        ]
      }
    );

    # Results:
    my $PolicyARN = $PutScalingPolicyResponse->PolicyARN;

   # Returns a L<Paws::ApplicationAutoScaling::PutScalingPolicyResponse> object.
   # To apply a scaling policy to an Amazon EC2 Spot fleet
   # This example applies a scaling policy to an Amazon EC2 Spot fleet. The
   # policy increases the target capacity of the spot fleet by 200%, with a cool
   # down period of 180 seconds.",

    my $PutScalingPolicyResponse = $application -autoscaling->PutScalingPolicy(
      'PolicyName' => 'fleet-cpu-gt-75',
      'PolicyType' => 'StepScaling',
      'ResourceId' =>
        'spot-fleet-request/sfr-45e69d8a-be48-4539-bbf3-3464e99c50c3',
      'ScalableDimension' => 'ec2:spot-fleet-request:TargetCapacity',
      'ServiceNamespace'  => 'ec2',
      'StepScalingPolicyConfiguration' => {
        'AdjustmentType'  => 'PercentChangeInCapacity',
        'Cooldown'        => 180,
        'StepAdjustments' => [

          {
            'MetricIntervalLowerBound' => 0,
            'ScalingAdjustment'        => 200
          }
        ]
      }
    );

    # Results:
    my $PolicyARN = $PutScalingPolicyResponse->PolicyARN;

   # Returns a L<Paws::ApplicationAutoScaling::PutScalingPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/application-autoscaling/PutScalingPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyName => Str

The name of the scaling policy.



=head2 PolicyType => Str

The policy type. This parameter is required if you are creating a
scaling policy.

The following policy types are supported:

C<TargetTrackingScaling>E<mdash>Not supported for Amazon EMR

C<StepScaling>E<mdash>Not supported for DynamoDB, Amazon Comprehend, or
AWS Lambda

For more information, see Target Tracking Scaling Policies
(https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-target-tracking.html)
and Step Scaling Policies
(https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-step-scaling-policies.html)
in the I<Application Auto Scaling User Guide>.

Valid values are: C<"StepScaling">, C<"TargetTrackingScaling">

=head2 B<REQUIRED> ResourceId => Str

The identifier of the resource associated with the scaling policy. This
string consists of the resource type and unique identifier.

=over

=item *

ECS service - The resource type is C<service> and the unique identifier
is the cluster name and service name. Example:
C<service/default/sample-webapp>.

=item *

Spot Fleet request - The resource type is C<spot-fleet-request> and the
unique identifier is the Spot Fleet request ID. Example:
C<spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE>.

=item *

EMR cluster - The resource type is C<instancegroup> and the unique
identifier is the cluster ID and instance group ID. Example:
C<instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0>.

=item *

AppStream 2.0 fleet - The resource type is C<fleet> and the unique
identifier is the fleet name. Example: C<fleet/sample-fleet>.

=item *

DynamoDB table - The resource type is C<table> and the unique
identifier is the table name. Example: C<table/my-table>.

=item *

DynamoDB global secondary index - The resource type is C<index> and the
unique identifier is the index name. Example:
C<table/my-table/index/my-table-index>.

=item *

Aurora DB cluster - The resource type is C<cluster> and the unique
identifier is the cluster name. Example: C<cluster:my-db-cluster>.

=item *

Amazon SageMaker endpoint variant - The resource type is C<variant> and
the unique identifier is the resource ID. Example:
C<endpoint/my-end-point/variant/KMeansClustering>.

=item *

Custom resources are not supported with a resource type. This parameter
must specify the C<OutputValue> from the CloudFormation template stack
used to access the resources. The unique identifier is defined by the
service provider. More information is available in our GitHub
repository (https://github.com/aws/aws-auto-scaling-custom-resource).

=item *

Amazon Comprehend document classification endpoint - The resource type
and unique identifier are specified using the endpoint ARN. Example:
C<arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE>.

=item *

Lambda provisioned concurrency - The resource type is C<function> and
the unique identifier is the function name with a function version or
alias name suffix that is not C<$LATEST>. Example:
C<function:my-function:prod> or C<function:my-function:1>.

=back




=head2 B<REQUIRED> ScalableDimension => Str

The scalable dimension. This string consists of the service namespace,
resource type, and scaling property.

=over

=item *

C<ecs:service:DesiredCount> - The desired task count of an ECS service.

=item *

C<ec2:spot-fleet-request:TargetCapacity> - The target capacity of a
Spot Fleet request.

=item *

C<elasticmapreduce:instancegroup:InstanceCount> - The instance count of
an EMR Instance Group.

=item *

C<appstream:fleet:DesiredCapacity> - The desired capacity of an
AppStream 2.0 fleet.

=item *

C<dynamodb:table:ReadCapacityUnits> - The provisioned read capacity for
a DynamoDB table.

=item *

C<dynamodb:table:WriteCapacityUnits> - The provisioned write capacity
for a DynamoDB table.

=item *

C<dynamodb:index:ReadCapacityUnits> - The provisioned read capacity for
a DynamoDB global secondary index.

=item *

C<dynamodb:index:WriteCapacityUnits> - The provisioned write capacity
for a DynamoDB global secondary index.

=item *

C<rds:cluster:ReadReplicaCount> - The count of Aurora Replicas in an
Aurora DB cluster. Available for Aurora MySQL-compatible edition and
Aurora PostgreSQL-compatible edition.

=item *

C<sagemaker:variant:DesiredInstanceCount> - The number of EC2 instances
for an Amazon SageMaker model endpoint variant.

=item *

C<custom-resource:ResourceType:Property> - The scalable dimension for a
custom resource provided by your own application or service.

=item *

C<comprehend:document-classifier-endpoint:DesiredInferenceUnits> - The
number of inference units for an Amazon Comprehend document
classification endpoint.

=item *

C<lambda:function:ProvisionedConcurrency> - The provisioned concurrency
for a Lambda function.

=back


Valid values are: C<"ecs:service:DesiredCount">, C<"ec2:spot-fleet-request:TargetCapacity">, C<"elasticmapreduce:instancegroup:InstanceCount">, C<"appstream:fleet:DesiredCapacity">, C<"dynamodb:table:ReadCapacityUnits">, C<"dynamodb:table:WriteCapacityUnits">, C<"dynamodb:index:ReadCapacityUnits">, C<"dynamodb:index:WriteCapacityUnits">, C<"rds:cluster:ReadReplicaCount">, C<"sagemaker:variant:DesiredInstanceCount">, C<"custom-resource:ResourceType:Property">, C<"comprehend:document-classifier-endpoint:DesiredInferenceUnits">, C<"lambda:function:ProvisionedConcurrency">

=head2 B<REQUIRED> ServiceNamespace => Str

The namespace of the AWS service that provides the resource or
C<custom-resource> for a resource provided by your own application or
service. For more information, see AWS Service Namespaces
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces)
in the I<Amazon Web Services General Reference>.

Valid values are: C<"ecs">, C<"elasticmapreduce">, C<"ec2">, C<"appstream">, C<"dynamodb">, C<"rds">, C<"sagemaker">, C<"custom-resource">, C<"comprehend">, C<"lambda">

=head2 StepScalingPolicyConfiguration => L<Paws::ApplicationAutoScaling::StepScalingPolicyConfiguration>

A step scaling policy.

This parameter is required if you are creating a policy and the policy
type is C<StepScaling>.



=head2 TargetTrackingScalingPolicyConfiguration => L<Paws::ApplicationAutoScaling::TargetTrackingScalingPolicyConfiguration>

A target tracking scaling policy. Includes support for predefined or
customized metrics.

This parameter is required if you are creating a policy and the policy
type is C<TargetTrackingScaling>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutScalingPolicy in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

