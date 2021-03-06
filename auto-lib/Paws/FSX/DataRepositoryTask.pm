package Paws::FSX::DataRepositoryTask;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has EndTime => (is => 'ro', isa => 'Str');
  has FailureDetails => (is => 'ro', isa => 'Paws::FSX::DataRepositoryTaskFailureDetails');
  has FileSystemId => (is => 'ro', isa => 'Str', required => 1);
  has Lifecycle => (is => 'ro', isa => 'Str', required => 1);
  has Paths => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Report => (is => 'ro', isa => 'Paws::FSX::CompletionReport');
  has ResourceARN => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Paws::FSX::DataRepositoryTaskStatus');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Tag]');
  has TaskId => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DataRepositoryTask

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::DataRepositoryTask object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::DataRepositoryTask object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

A description of the data repository task. You use data repository
tasks to perform bulk transfer operations between your Amazon FSx file
system and its linked data repository.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

  


=head2 EndTime => Str

  The time that Amazon FSx completed processing the task, populated after
the task is complete.


=head2 FailureDetails => L<Paws::FSX::DataRepositoryTaskFailureDetails>

  Failure message describing why the task failed, it is populated only
when C<Lifecycle> is set to C<FAILED>.


=head2 B<REQUIRED> FileSystemId => Str

  


=head2 B<REQUIRED> Lifecycle => Str

  The lifecycle status of the data repository task, as follows:

=over

=item *

C<PENDING> - Amazon FSx has not started the task.

=item *

C<EXECUTING> - Amazon FSx is processing the task.

=item *

C<FAILED> - Amazon FSx was not able to complete the task. For example,
there may be files the task failed to process. The
DataRepositoryTaskFailureDetails property provides more information
about task failures.

=item *

C<SUCCEEDED> - FSx completed the task successfully.

=item *

C<CANCELED> - Amazon FSx canceled the task and it did not complete.

=item *

C<CANCELING> - FSx is in process of canceling the task.

=back

You cannot delete an FSx for Lustre file system if there are data
repository tasks for the file system in the C<PENDING> or C<EXECUTING>
states. Please retry when the data repository task is finished (with a
status of C<CANCELED>, C<SUCCEEDED>, or C<FAILED>). You can use the
DescribeDataRepositoryTask action to monitor the task status. Contact
the FSx team if you need to delete your file system immediately.


=head2 Paths => ArrayRef[Str|Undef]

  An array of paths on the Amazon FSx for Lustre file system that specify
the data for the data repository task to process. For example, in an
EXPORT_TO_REPOSITORY task, the paths specify which data to export to
the linked data repository.

(Default) If C<Paths> is not specified, Amazon FSx uses the file system
root directory.


=head2 Report => L<Paws::FSX::CompletionReport>

  


=head2 ResourceARN => Str

  


=head2 StartTime => Str

  The time that Amazon FSx began processing the task.


=head2 Status => L<Paws::FSX::DataRepositoryTaskStatus>

  Provides the status of the number of files that the task has processed
successfully and failed to process.


=head2 Tags => ArrayRef[L<Paws::FSX::Tag>]

  


=head2 B<REQUIRED> TaskId => Str

  The system-generated, unique 17-digit ID of the data repository task.


=head2 B<REQUIRED> Type => Str

  The type of data repository task; EXPORT_TO_REPOSITORY is the only type
currently supported.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

