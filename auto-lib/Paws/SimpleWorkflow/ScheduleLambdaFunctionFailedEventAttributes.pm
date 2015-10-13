package Paws::SimpleWorkflow::ScheduleLambdaFunctionFailedEventAttributes;
  use Moose;
  has cause => (is => 'ro', isa => 'Str', required => 1);
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Int', required => 1);
  has id => (is => 'ro', isa => 'Str', required => 1);
  has name => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ScheduleLambdaFunctionFailedEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::ScheduleLambdaFunctionFailedEventAttributes object:

  $service_obj->Method(Att1 => { cause => $value, ..., name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::ScheduleLambdaFunctionFailedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->cause

=head1 DESCRIPTION

Provides details for the C<ScheduleLambdaFunctionFailed> event.

=head1 ATTRIBUTES

=head2 B<REQUIRED> cause => Str

  The cause of the failure. This information is generated by the system
and can be useful for diagnostic purposes.

If B<cause> is set to OPERATION_NOT_PERMITTED, the decision failed
because it lacked sufficient permissions. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows.

=head2 B<REQUIRED> decisionTaskCompletedEventId => Int

  The ID of the C<DecisionTaskCompleted> event corresponding to the
decision that resulted in the scheduling of this AWS Lambda function.
This information can be useful for diagnosing problems by tracing back
the chain of events leading up to this event.

=head2 B<REQUIRED> id => Str

  The unique Amazon SWF ID of the AWS Lambda task.

=head2 B<REQUIRED> name => Str

  The name of the scheduled AWS Lambda function.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

