package Paws::CloudWatchLogs::SearchedLogStream;
  use Moose;
  has logStreamName => (is => 'ro', isa => 'Str');
  has searchedCompletely => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::SearchedLogStream

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::SearchedLogStream object:

  $service_obj->Method(Att1 => { logStreamName => $value, ..., searchedCompletely => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::SearchedLogStream object:

  $result = $service_obj->Method(...);
  $result->Att1->logStreamName

=head1 DESCRIPTION

An object indicating the search status of a log stream in a
C<FilterLogEvents> request.

=head1 ATTRIBUTES

=head2 logStreamName => Str

  The name of the log stream.

=head2 searchedCompletely => Bool

  Indicates whether all the events in this log stream were searched or
more data exists to search by paginating further.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

