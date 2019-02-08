package Paws::KinesisAnalyticsV2::ReferenceDataSource;
  use Moose;
  has ReferenceSchema => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::SourceSchema', required => 1);
  has S3ReferenceDataSource => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::S3ReferenceDataSource');
  has TableName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::ReferenceDataSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::ReferenceDataSource object:

  $service_obj->Method(Att1 => { ReferenceSchema => $value, ..., TableName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::ReferenceDataSource object:

  $result = $service_obj->Method(...);
  $result->Att1->ReferenceSchema

=head1 DESCRIPTION

For an SQL-based Amazon Kinesis Data Analytics application, describes
the reference data source by providing the source information (Amazon
S3 bucket name and object key name), the resulting in-application table
name that is created, and the necessary schema to map the data elements
in the Amazon S3 object to the in-application table.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReferenceSchema => L<Paws::KinesisAnalyticsV2::SourceSchema>

  Describes the format of the data in the streaming source, and how each
data element maps to corresponding columns created in the
in-application stream.


=head2 S3ReferenceDataSource => L<Paws::KinesisAnalyticsV2::S3ReferenceDataSource>

  Identifies the S3 bucket and object that contains the reference data. A
Kinesis Data Analytics application loads reference data only once. If
the data changes, you call the UpdateApplication operation to trigger
reloading of data into your application.


=head2 B<REQUIRED> TableName => Str

  The name of the in-application table to create.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
