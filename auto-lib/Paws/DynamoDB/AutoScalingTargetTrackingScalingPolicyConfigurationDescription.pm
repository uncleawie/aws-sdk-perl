package Paws::DynamoDB::AutoScalingTargetTrackingScalingPolicyConfigurationDescription;
  use Moose;
  has DisableScaleIn => (is => 'ro', isa => 'Bool');
  has ScaleInCooldown => (is => 'ro', isa => 'Int');
  has ScaleOutCooldown => (is => 'ro', isa => 'Int');
  has TargetValue => (is => 'ro', isa => 'Num', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::AutoScalingTargetTrackingScalingPolicyConfigurationDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::AutoScalingTargetTrackingScalingPolicyConfigurationDescription object:

  $service_obj->Method(Att1 => { DisableScaleIn => $value, ..., TargetValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::AutoScalingTargetTrackingScalingPolicyConfigurationDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->DisableScaleIn

=head1 DESCRIPTION

Represents the properties of a target tracking scaling policy.

=head1 ATTRIBUTES


=head2 DisableScaleIn => Bool

  Indicates whether scale in by the target tracking policy is disabled.
If the value is true, scale in is disabled and the target tracking
policy won't remove capacity from the scalable resource. Otherwise,
scale in is enabled and the target tracking policy can remove capacity
from the scalable resource. The default value is false.


=head2 ScaleInCooldown => Int

  The amount of time, in seconds, after a scale in activity completes
before another scale in activity can start. The cooldown period is used
to block subsequent scale in requests until it has expired. You should
scale in conservatively to protect your application's availability.
However, if another alarm triggers a scale out policy during the
cooldown period after a scale-in, application auto scaling scales out
your scalable target immediately.


=head2 ScaleOutCooldown => Int

  The amount of time, in seconds, after a scale out activity completes
before another scale out activity can start. While the cooldown period
is in effect, the capacity that has been added by the previous scale
out event that initiated the cooldown is calculated as part of the
desired capacity for the next scale out. You should continuously (but
not excessively) scale out.


=head2 B<REQUIRED> TargetValue => Num

  The target value for the metric. The range is 8.515920e-109 to
1.174271e+108 (Base 10) or 2e-360 to 2e360 (Base 2).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
