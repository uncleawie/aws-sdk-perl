package Paws::CloudWatchLogs::ExportTaskExecutionInfo;
  use Moose;
  has completionTime => (is => 'ro', isa => 'Int');
  has creationTime => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::ExportTaskExecutionInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::ExportTaskExecutionInfo object:

  $service_obj->Method(Att1 => { completionTime => $value, ..., creationTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::ExportTaskExecutionInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->completionTime

=head1 DESCRIPTION

Represents the status of an export task.

=head1 ATTRIBUTES

=head2 completionTime => Int

  A point in time when the export task got completed.

=head2 creationTime => Int

  A point in time when the export task got created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

