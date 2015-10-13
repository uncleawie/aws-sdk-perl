package Paws::SimpleWorkflow::DecisionTaskScheduledEventAttributes;
  use Moose;
  has startToCloseTimeout => (is => 'ro', isa => 'Str');
  has taskList => (is => 'ro', isa => 'Paws::SimpleWorkflow::TaskList', required => 1);
  has taskPriority => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::DecisionTaskScheduledEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::DecisionTaskScheduledEventAttributes object:

  $service_obj->Method(Att1 => { startToCloseTimeout => $value, ..., taskPriority => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::DecisionTaskScheduledEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->startToCloseTimeout

=head1 DESCRIPTION

Provides details about the C<DecisionTaskScheduled> event.

=head1 ATTRIBUTES

=head2 startToCloseTimeout => Str

  The maximum duration for this decision task. The task is considered
timed out if it does not completed within this duration.

The duration is specified in seconds; an integer greater than or equal
to 0. The value "NONE" can be used to specify unlimited duration.

=head2 B<REQUIRED> taskList => L<Paws::SimpleWorkflow::TaskList>

  The name of the task list in which the decision task was scheduled.

=head2 taskPriority => Str

  I<Optional.> A task priority that, if set, specifies the priority for
this decision task. Valid values are integers that range from Java's
C<Integer.MIN_VALUE> (-2147483648) to C<Integer.MAX_VALUE>
(2147483647). Higher numbers indicate higher priority.

For more information about setting task priority, see Setting Task
Priority in the I<Amazon Simple Workflow Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

