package Paws::Firehose::S3DestinationUpdate;
  use Moose;
  has BucketARN => (is => 'ro', isa => 'Str');
  has BufferingHints => (is => 'ro', isa => 'Paws::Firehose::BufferingHints');
  has CompressionFormat => (is => 'ro', isa => 'Str');
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::Firehose::EncryptionConfiguration');
  has Prefix => (is => 'ro', isa => 'Str');
  has RoleARN => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::S3DestinationUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::S3DestinationUpdate object:

  $service_obj->Method(Att1 => { BucketARN => $value, ..., RoleARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::S3DestinationUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketARN

=head1 DESCRIPTION

Describes an update for a destination in Amazon S3.

=head1 ATTRIBUTES

=head2 BucketARN => Str

  The ARN of the S3 bucket.

=head2 BufferingHints => L<Paws::Firehose::BufferingHints>

  The buffering option. If no value is specified, C<BufferingHints>
object default values are used.

=head2 CompressionFormat => Str

  The compression format. If no value is specified, the default is
C<NOCOMPRESSION>.

The compression formats C<SNAPPY> or C<ZIP> cannot be specified for
Amazon Redshift destinations because they are not supported by the
Amazon Redshift C<COPY> operation that reads from the S3 bucket.

=head2 EncryptionConfiguration => L<Paws::Firehose::EncryptionConfiguration>

  The encryption configuration. If no value is specified, the default is
no encryption.

=head2 Prefix => Str

  The "YYYY/MM/DD/HH" time format prefix is automatically used for
delivered S3 files. You can specify an extra prefix to be added in
front of the time format prefix. Note that if the prefix ends with a
slash, it appears as a folder in the S3 bucket. For more information,
see Amazon S3 Object Name Format in the guide-fh-dev.

=head2 RoleARN => Str

  The ARN of the AWS credentials.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

