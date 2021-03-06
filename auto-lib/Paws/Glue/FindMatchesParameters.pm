package Paws::Glue::FindMatchesParameters;
  use Moose;
  has AccuracyCostTradeoff => (is => 'ro', isa => 'Num');
  has EnforceProvidedLabels => (is => 'ro', isa => 'Bool');
  has PrecisionRecallTradeoff => (is => 'ro', isa => 'Num');
  has PrimaryKeyColumnName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::FindMatchesParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::FindMatchesParameters object:

  $service_obj->Method(Att1 => { AccuracyCostTradeoff => $value, ..., PrimaryKeyColumnName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::FindMatchesParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->AccuracyCostTradeoff

=head1 DESCRIPTION

The parameters to configure the find matches transform.

=head1 ATTRIBUTES


=head2 AccuracyCostTradeoff => Num

  The value that is selected when tuning your transform for a balance
between accuracy and cost. A value of 0.5 means that the system
balances accuracy and cost concerns. A value of 1.0 means a bias purely
for accuracy, which typically results in a higher cost, sometimes
substantially higher. A value of 0.0 means a bias purely for cost,
which results in a less accurate C<FindMatches> transform, sometimes
with unacceptable accuracy.

Accuracy measures how well the transform finds true positives and true
negatives. Increasing accuracy requires more machine resources and
cost. But it also results in increased recall.

Cost measures how many compute resources, and thus money, are consumed
to run the transform.


=head2 EnforceProvidedLabels => Bool

  The value to switch on or off to force the output to match the provided
labels from users. If the value is C<True>, the C<find matches>
transform forces the output to match the provided labels. The results
override the normal conflation results. If the value is C<False>, the
C<find matches> transform does not ensure all the labels provided are
respected, and the results rely on the trained model.

Note that setting this value to true may increase the conflation
execution time.


=head2 PrecisionRecallTradeoff => Num

  The value selected when tuning your transform for a balance between
precision and recall. A value of 0.5 means no preference; a value of
1.0 means a bias purely for precision, and a value of 0.0 means a bias
for recall. Because this is a tradeoff, choosing values close to 1.0
means very low recall, and choosing values close to 0.0 results in very
low precision.

The precision metric indicates how often your model is correct when it
predicts a match.

The recall metric indicates that for an actual match, how often your
model predicts the match.


=head2 PrimaryKeyColumnName => Str

  The name of a column that uniquely identifies rows in the source table.
Used to help identify matching records.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

