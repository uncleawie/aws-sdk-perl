
package Paws::Robomaker::ListSimulationJobBatches;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::Filter]', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSimulationJobBatches');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listSimulationJobBatches');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::ListSimulationJobBatchesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::ListSimulationJobBatches - Arguments for method ListSimulationJobBatches on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSimulationJobBatches on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method ListSimulationJobBatches.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSimulationJobBatches.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $ListSimulationJobBatchesResponse = $robomaker->ListSimulationJobBatches(
      Filters => [
        {
          Name   => 'MyName',    # min: 1, max: 255; OPTIONAL
          Values => [
            'MyName', ...        # min: 1, max: 255; OPTIONAL
          ],                     # min: 1, max: 1; OPTIONAL
        },
        ...
      ],                         # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListSimulationJobBatchesResponse->NextToken;
    my $SimulationJobBatchSummaries =
      $ListSimulationJobBatchesResponse->SimulationJobBatchSummaries;

    # Returns a L<Paws::Robomaker::ListSimulationJobBatchesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/ListSimulationJobBatches>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::Robomaker::Filter>]

Optional filters to limit results.



=head2 MaxResults => Int

When this parameter is used, C<ListSimulationJobBatches> only returns
C<maxResults> results in a single page along with a C<nextToken>
response element. The remaining results of the initial request can be
seen by sending another C<ListSimulationJobBatches> request with the
returned C<nextToken> value.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<ListSimulationJobBatches> request where C<maxResults> was used and
the results exceeded the value of that parameter. Pagination continues
from the end of the previous results that returned the C<nextToken>
value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSimulationJobBatches in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

