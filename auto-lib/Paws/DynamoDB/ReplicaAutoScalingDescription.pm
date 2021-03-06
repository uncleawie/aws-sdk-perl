package Paws::DynamoDB::ReplicaAutoScalingDescription;
  use Moose;
  has GlobalSecondaryIndexes => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::ReplicaGlobalSecondaryIndexAutoScalingDescription]');
  has RegionName => (is => 'ro', isa => 'Str');
  has ReplicaProvisionedReadCapacityAutoScalingSettings => (is => 'ro', isa => 'Paws::DynamoDB::AutoScalingSettingsDescription');
  has ReplicaProvisionedWriteCapacityAutoScalingSettings => (is => 'ro', isa => 'Paws::DynamoDB::AutoScalingSettingsDescription');
  has ReplicaStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ReplicaAutoScalingDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::ReplicaAutoScalingDescription object:

  $service_obj->Method(Att1 => { GlobalSecondaryIndexes => $value, ..., ReplicaStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::ReplicaAutoScalingDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->GlobalSecondaryIndexes

=head1 DESCRIPTION

Represents the auto scaling settings of the replica.

=head1 ATTRIBUTES


=head2 GlobalSecondaryIndexes => ArrayRef[L<Paws::DynamoDB::ReplicaGlobalSecondaryIndexAutoScalingDescription>]

  Replica-specific global secondary index auto scaling settings.


=head2 RegionName => Str

  The Region where the replica exists.


=head2 ReplicaProvisionedReadCapacityAutoScalingSettings => L<Paws::DynamoDB::AutoScalingSettingsDescription>

  


=head2 ReplicaProvisionedWriteCapacityAutoScalingSettings => L<Paws::DynamoDB::AutoScalingSettingsDescription>

  


=head2 ReplicaStatus => Str

  The current state of the replica:

=over

=item *

C<CREATING> - The replica is being created.

=item *

C<UPDATING> - The replica is being updated.

=item *

C<DELETING> - The replica is being deleted.

=item *

C<ACTIVE> - The replica is ready for use.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

