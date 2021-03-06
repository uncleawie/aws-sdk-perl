package Paws::Datasync::TaskSchedule;
  use Moose;
  has ScheduleExpression => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::TaskSchedule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Datasync::TaskSchedule object:

  $service_obj->Method(Att1 => { ScheduleExpression => $value, ..., ScheduleExpression => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Datasync::TaskSchedule object:

  $result = $service_obj->Method(...);
  $result->Att1->ScheduleExpression

=head1 DESCRIPTION

Specifies the schedule you want your task to use for repeated
executions. For more information, see Schedule Expressions for Rules
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScheduleExpression => Str

  A cron expression that specifies when AWS DataSync initiates a
scheduled transfer from a source to a destination location.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

