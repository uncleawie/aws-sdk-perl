
package Paws::DocDB::DeleteDBCluster;
  use Moose;
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has FinalDBSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has SkipFinalSnapshot => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDBCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDB::DeleteDBClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDBClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::DeleteDBCluster - Arguments for method DeleteDBCluster on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDBCluster on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method DeleteDBCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDBCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $DeleteDBClusterResult = $rds->DeleteDBCluster(
      DBClusterIdentifier       => 'MyString',
      FinalDBSnapshotIdentifier => 'MyString',    # OPTIONAL
      SkipFinalSnapshot         => 1,             # OPTIONAL
    );

    # Results:
    my $DBCluster = $DeleteDBClusterResult->DBCluster;

    # Returns a L<Paws::DocDB::DeleteDBClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DeleteDBCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterIdentifier => Str

The cluster identifier for the cluster to be deleted. This parameter
isn't case sensitive.

Constraints:

=over

=item *

Must match an existing C<DBClusterIdentifier>.

=back




=head2 FinalDBSnapshotIdentifier => Str

The cluster snapshot identifier of the new cluster snapshot created
when C<SkipFinalSnapshot> is set to C<false>.

Specifying this parameter and also setting the C<SkipFinalShapshot>
parameter to C<true> results in an error.

Constraints:

=over

=item *

Must be from 1 to 255 letters, numbers, or hyphens.

=item *

The first character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back




=head2 SkipFinalSnapshot => Bool

Determines whether a final cluster snapshot is created before the
cluster is deleted. If C<true> is specified, no cluster snapshot is
created. If C<false> is specified, a cluster snapshot is created before
the DB cluster is deleted.

If C<SkipFinalSnapshot> is C<false>, you must specify a
C<FinalDBSnapshotIdentifier> parameter.

Default: C<false>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDBCluster in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

