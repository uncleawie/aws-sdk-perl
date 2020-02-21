package Paws::DynamoDB::LocalSecondaryIndexInfo;
  use Moose;
  has IndexName => (is => 'ro', isa => 'Str');
  has KeySchema => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::KeySchemaElement]');
  has Projection => (is => 'ro', isa => 'Paws::DynamoDB::Projection');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::LocalSecondaryIndexInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::LocalSecondaryIndexInfo object:

  $service_obj->Method(Att1 => { IndexName => $value, ..., Projection => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::LocalSecondaryIndexInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->IndexName

=head1 DESCRIPTION

Represents the properties of a local secondary index for the table when
the backup was created.

=head1 ATTRIBUTES


=head2 IndexName => Str

  Represents the name of the local secondary index.


=head2 KeySchema => ArrayRef[L<Paws::DynamoDB::KeySchemaElement>]

  The complete key schema for a local secondary index, which consists of
one or more pairs of attribute names and key types:

=over

=item *

C<HASH> - partition key

=item *

C<RANGE> - sort key

=back

The partition key of an item is also known as its I<hash attribute>.
The term "hash attribute" derives from DynamoDB's usage of an internal
hash function to evenly distribute data items across partitions, based
on their partition key values.

The sort key of an item is also known as its I<range attribute>. The
term "range attribute" derives from the way DynamoDB stores items with
the same partition key physically close together, in sorted order by
the sort key value.


=head2 Projection => L<Paws::DynamoDB::Projection>

  Represents attributes that are copied (projected) from the table into
the global secondary index. These are in addition to the primary key
attributes and index key attributes, which are automatically projected.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
