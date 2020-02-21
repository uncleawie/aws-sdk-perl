package Paws::Textract::Relationship;
  use Moose;
  has Ids => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::Relationship

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Textract::Relationship object:

  $service_obj->Method(Att1 => { Ids => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Textract::Relationship object:

  $result = $service_obj->Method(...);
  $result->Att1->Ids

=head1 DESCRIPTION

Information about how blocks are related to each other. A C<Block>
object contains 0 or more C<Relation> objects in a list,
C<Relationships>. For more information, see Block.

The C<Type> element provides the type of the relationship for all
blocks in the C<IDs> array.

=head1 ATTRIBUTES


=head2 Ids => ArrayRef[Str|Undef]

  An array of IDs for related blocks. You can get the type of the
relationship from the C<Type> element.


=head2 Type => Str

  The type of relationship that the blocks in the IDs array have with the
current block. The relationship can be C<VALUE> or C<CHILD>. A
relationship of type VALUE is a list that contains the ID of the VALUE
block that's associated with the KEY of a key-value pair. A
relationship of type CHILD is a list of IDs that identify WORD blocks.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
