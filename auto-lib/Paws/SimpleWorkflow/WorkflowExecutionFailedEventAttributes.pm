package Paws::SimpleWorkflow::WorkflowExecutionFailedEventAttributes;
  use Moose;
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Int', required => 1);
  has details => (is => 'ro', isa => 'Str');
  has reason => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::WorkflowExecutionFailedEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::WorkflowExecutionFailedEventAttributes object:

  $service_obj->Method(Att1 => { decisionTaskCompletedEventId => $value, ..., reason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::WorkflowExecutionFailedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->decisionTaskCompletedEventId

=head1 DESCRIPTION

Provides details of the C<WorkflowExecutionFailed> event.

=head1 ATTRIBUTES

=head2 B<REQUIRED> decisionTaskCompletedEventId => Int

  The ID of the C<DecisionTaskCompleted> event corresponding to the
decision task that resulted in the C<FailWorkflowExecution> decision to
fail this execution. This information can be useful for diagnosing
problems by tracing back the chain of events leading up to this event.

=head2 details => Str

  The details of the failure (if any).

=head2 reason => Str

  The descriptive reason provided for the failure (if any).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

