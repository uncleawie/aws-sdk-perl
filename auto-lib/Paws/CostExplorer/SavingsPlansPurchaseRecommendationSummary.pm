package Paws::CostExplorer::SavingsPlansPurchaseRecommendationSummary;
  use Moose;
  has CurrencyCode => (is => 'ro', isa => 'Str');
  has CurrentOnDemandSpend => (is => 'ro', isa => 'Str');
  has DailyCommitmentToPurchase => (is => 'ro', isa => 'Str');
  has EstimatedMonthlySavingsAmount => (is => 'ro', isa => 'Str');
  has EstimatedOnDemandCostWithCurrentCommitment => (is => 'ro', isa => 'Str');
  has EstimatedROI => (is => 'ro', isa => 'Str');
  has EstimatedSavingsAmount => (is => 'ro', isa => 'Str');
  has EstimatedSavingsPercentage => (is => 'ro', isa => 'Str');
  has EstimatedTotalCost => (is => 'ro', isa => 'Str');
  has HourlyCommitmentToPurchase => (is => 'ro', isa => 'Str');
  has TotalRecommendationCount => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::SavingsPlansPurchaseRecommendationSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::SavingsPlansPurchaseRecommendationSummary object:

  $service_obj->Method(Att1 => { CurrencyCode => $value, ..., TotalRecommendationCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::SavingsPlansPurchaseRecommendationSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrencyCode

=head1 DESCRIPTION

Summary metrics for your Savings Plans Purchase Recommendations.

=head1 ATTRIBUTES


=head2 CurrencyCode => Str

  The currency code Amazon Web Services used to generate the
recommendations and present potential savings.


=head2 CurrentOnDemandSpend => Str

  The current total on demand spend of the applicable usage types over
the lookback period.


=head2 DailyCommitmentToPurchase => Str

  The recommended Savings Plans cost on a daily (24 hourly) basis.


=head2 EstimatedMonthlySavingsAmount => Str

  The estimated monthly savings amount, based on the recommended Savings
Plans purchase.


=head2 EstimatedOnDemandCostWithCurrentCommitment => Str

  The estimated On-Demand costs you would expect with no additional
commitment, based on your usage of the selected time period and the
Savings Plans you own.


=head2 EstimatedROI => Str

  The estimated return on investment based on the recommended Savings
Plans and estimated savings.


=head2 EstimatedSavingsAmount => Str

  The estimated total savings over the lookback period, based on the
purchase of the recommended Savings Plans.


=head2 EstimatedSavingsPercentage => Str

  The estimated savings relative to the total cost of On-Demand usage,
over the lookback period. This is calculated as
C<estimatedSavingsAmount>/ C<CurrentOnDemandSpend>*100.


=head2 EstimatedTotalCost => Str

  The estimated total cost of the usage after purchasing the recommended
Savings Plans. This is a sum of the cost of Savings Plans during this
term, and the remaining On-Demand usage.


=head2 HourlyCommitmentToPurchase => Str

  The recommended hourly commitment based on the recommendation
parameters.


=head2 TotalRecommendationCount => Str

  The aggregate number of Savings Plans recommendations that exist for
your account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

