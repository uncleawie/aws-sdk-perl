package Paws::DynamoDB::ProvisionedThroughputOverride;
  use Moose;
  has ReadCapacityUnits => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ProvisionedThroughputOverride

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::ProvisionedThroughputOverride object:

  $service_obj->Method(Att1 => { ReadCapacityUnits => $value, ..., ReadCapacityUnits => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::ProvisionedThroughputOverride object:

  $result = $service_obj->Method(...);
  $result->Att1->ReadCapacityUnits

=head1 DESCRIPTION

Replica-specific provisioned throughput settings. If not specified,
uses the source table's provisioned throughput settings.

=head1 ATTRIBUTES


=head2 ReadCapacityUnits => Int

  Replica-specific read capacity units. If not specified, uses the source
table's read capacity settings.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

