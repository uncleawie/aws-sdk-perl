package Paws::Glue::TransformFilterCriteria;
  use Moose;
  has CreatedAfter => (is => 'ro', isa => 'Str');
  has CreatedBefore => (is => 'ro', isa => 'Str');
  has GlueVersion => (is => 'ro', isa => 'Str');
  has LastModifiedAfter => (is => 'ro', isa => 'Str');
  has LastModifiedBefore => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Schema => (is => 'ro', isa => 'ArrayRef[Paws::Glue::SchemaColumn]');
  has Status => (is => 'ro', isa => 'Str');
  has TransformType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::TransformFilterCriteria

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::TransformFilterCriteria object:

  $service_obj->Method(Att1 => { CreatedAfter => $value, ..., TransformType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::TransformFilterCriteria object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAfter

=head1 DESCRIPTION

The criteria used to filter the machine learning transforms.

=head1 ATTRIBUTES


=head2 CreatedAfter => Str

  The time and date after which the transforms were created.


=head2 CreatedBefore => Str

  The time and date before which the transforms were created.


=head2 GlueVersion => Str

  This value determines which version of AWS Glue this machine learning
transform is compatible with. Glue 1.0 is recommended for most
customers. If the value is not set, the Glue compatibility defaults to
Glue 0.9. For more information, see AWS Glue Versions
(https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions)
in the developer guide.


=head2 LastModifiedAfter => Str

  Filter on transforms last modified after this date.


=head2 LastModifiedBefore => Str

  Filter on transforms last modified before this date.


=head2 Name => Str

  A unique transform name that is used to filter the machine learning
transforms.


=head2 Schema => ArrayRef[L<Paws::Glue::SchemaColumn>]

  Filters on datasets with a specific schema. The C<MapE<lt>Column,
TypeE<gt>> object is an array of key-value pairs representing the
schema this transform accepts, where C<Column> is the name of a column,
and C<Type> is the type of the data such as an integer or string. Has
an upper bound of 100 columns.


=head2 Status => Str

  Filters the list of machine learning transforms by the last known
status of the transforms (to indicate whether a transform can be used
or not). One of "NOT_READY", "READY", or "DELETING".


=head2 TransformType => Str

  The type of machine learning transform that is used to filter the
machine learning transforms.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
