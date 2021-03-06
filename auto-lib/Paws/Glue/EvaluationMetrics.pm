package Paws::Glue::EvaluationMetrics;
  use Moose;
  has FindMatchesMetrics => (is => 'ro', isa => 'Paws::Glue::FindMatchesMetrics');
  has TransformType => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::EvaluationMetrics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::EvaluationMetrics object:

  $service_obj->Method(Att1 => { FindMatchesMetrics => $value, ..., TransformType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::EvaluationMetrics object:

  $result = $service_obj->Method(...);
  $result->Att1->FindMatchesMetrics

=head1 DESCRIPTION

Evaluation metrics provide an estimate of the quality of your machine
learning transform.

=head1 ATTRIBUTES


=head2 FindMatchesMetrics => L<Paws::Glue::FindMatchesMetrics>

  The evaluation metrics for the find matches algorithm.


=head2 B<REQUIRED> TransformType => Str

  The type of machine learning transform.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

