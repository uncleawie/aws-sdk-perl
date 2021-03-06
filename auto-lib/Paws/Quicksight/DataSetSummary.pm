package Paws::Quicksight::DataSetSummary;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has DataSetId => (is => 'ro', isa => 'Str');
  has ImportMode => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RowLevelPermissionDataSet => (is => 'ro', isa => 'Paws::Quicksight::RowLevelPermissionDataSet');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DataSetSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::DataSetSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., RowLevelPermissionDataSet => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::DataSetSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Dataset summary.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the dataset.


=head2 CreatedTime => Str

  The time that this dataset was created.


=head2 DataSetId => Str

  The ID of the dataset.


=head2 ImportMode => Str

  Indicates whether you want to import the data into SPICE.


=head2 LastUpdatedTime => Str

  The last time that this dataset was updated.


=head2 Name => Str

  A display name for the dataset.


=head2 RowLevelPermissionDataSet => L<Paws::Quicksight::RowLevelPermissionDataSet>

  The row-level security configuration for the dataset.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

