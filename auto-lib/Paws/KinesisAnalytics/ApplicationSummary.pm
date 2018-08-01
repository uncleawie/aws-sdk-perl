package Paws::KinesisAnalytics::ApplicationSummary;
  use Moose;
  has ApplicationARN => (is => 'ro', isa => 'Str', required => 1);
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has ApplicationStatus => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::ApplicationSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::ApplicationSummary object:

  $service_obj->Method(Att1 => { ApplicationARN => $value, ..., ApplicationStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::ApplicationSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationARN

=head1 DESCRIPTION

This documentation is for version 1 of the Amazon Kinesis Data
Analytics API, which only supports SQL applications. Version 2 of the
API supports SQL and Java applications. For more information about
version 2, see Amazon Kinesis Data Analytics API V2 Documentation.

Provides application summary information, including the application
Amazon Resource Name (ARN), name, and status.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationARN => Str

  ARN of the application.


=head2 B<REQUIRED> ApplicationName => Str

  Name of the application.


=head2 B<REQUIRED> ApplicationStatus => Str

  Status of the application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

