
package Paws::EMR::RunJobFlowOutput;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str');
  has JobFlowId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::RunJobFlowOutput

=head1 ATTRIBUTES


=head2 ClusterArn => Str

The Amazon Resource Name of the cluster.


=head2 JobFlowId => Str

An unique identifier for the job flow.


=head2 _request_id => Str


=cut

1;