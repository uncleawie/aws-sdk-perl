
package Paws::Quicksight::DescribeDataSourcePermissionsResponse;
  use Moose;
  has DataSourceArn => (is => 'ro', isa => 'Str');
  has DataSourceId => (is => 'ro', isa => 'Str');
  has Permissions => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ResourcePermission]');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeDataSourcePermissionsResponse

=head1 ATTRIBUTES


=head2 DataSourceArn => Str

The Amazon Resource Name (ARN) of the data source.


=head2 DataSourceId => Str

The ID of the data source. This ID is unique per AWS Region for each
AWS account.


=head2 Permissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]

A list of resource permissions on the data source.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of the request.


=head2 _request_id => Str


=cut

