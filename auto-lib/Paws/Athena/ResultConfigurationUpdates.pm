package Paws::Athena::ResultConfigurationUpdates;
  use Moose;
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::Athena::EncryptionConfiguration');
  has OutputLocation => (is => 'ro', isa => 'Str');
  has RemoveEncryptionConfiguration => (is => 'ro', isa => 'Bool');
  has RemoveOutputLocation => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::ResultConfigurationUpdates

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Athena::ResultConfigurationUpdates object:

  $service_obj->Method(Att1 => { EncryptionConfiguration => $value, ..., RemoveOutputLocation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Athena::ResultConfigurationUpdates object:

  $result = $service_obj->Method(...);
  $result->Att1->EncryptionConfiguration

=head1 DESCRIPTION

The information about the updates in the query results, such as output
location and encryption configuration for the query results.

=head1 ATTRIBUTES


=head2 EncryptionConfiguration => L<Paws::Athena::EncryptionConfiguration>

  The encryption configuration for the query results.


=head2 OutputLocation => Str

  The location in Amazon S3 where your query results are stored, such as
C<s3://path/to/query/bucket/>. For more information, see Query Results
(https://docs.aws.amazon.com/athena/latest/ug/querying.html) If
workgroup settings override client-side settings, then the query uses
the location for the query results and the encryption configuration
that are specified for the workgroup. The "workgroup settings override"
is specified in EnforceWorkGroupConfiguration (true/false) in the
WorkGroupConfiguration. See
WorkGroupConfiguration$EnforceWorkGroupConfiguration.


=head2 RemoveEncryptionConfiguration => Bool

  If set to "true", indicates that the previously-specified encryption
configuration (also known as the client-side setting) for queries in
this workgroup should be ignored and set to null. If set to "false" or
not set, and a value is present in the EncryptionConfiguration in
ResultConfigurationUpdates (the client-side setting), the
EncryptionConfiguration in the workgroup's ResultConfiguration will be
updated with the new value. For more information, see Workgroup
Settings Override Client-Side Settings
(https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html).


=head2 RemoveOutputLocation => Bool

  If set to "true", indicates that the previously-specified query results
location (also known as a client-side setting) for queries in this
workgroup should be ignored and set to null. If set to "false" or not
set, and a value is present in the OutputLocation in
ResultConfigurationUpdates (the client-side setting), the
OutputLocation in the workgroup's ResultConfiguration will be updated
with the new value. For more information, see Workgroup Settings
Override Client-Side Settings
(https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

