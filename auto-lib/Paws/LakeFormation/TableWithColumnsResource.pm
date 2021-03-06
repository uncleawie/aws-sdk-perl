package Paws::LakeFormation::TableWithColumnsResource;
  use Moose;
  has ColumnNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ColumnWildcard => (is => 'ro', isa => 'Paws::LakeFormation::ColumnWildcard');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::TableWithColumnsResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LakeFormation::TableWithColumnsResource object:

  $service_obj->Method(Att1 => { ColumnNames => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LakeFormation::TableWithColumnsResource object:

  $result = $service_obj->Method(...);
  $result->Att1->ColumnNames

=head1 DESCRIPTION

A structure for a table with columns object. This object is only used
when granting a SELECT permission.

This object must take a value for at least one of C<ColumnsNames>,
C<ColumnsIndexes>, or C<ColumnsWildcard>.

=head1 ATTRIBUTES


=head2 ColumnNames => ArrayRef[Str|Undef]

  The list of column names for the table. At least one of C<ColumnNames>
or C<ColumnWildcard> is required.


=head2 ColumnWildcard => L<Paws::LakeFormation::ColumnWildcard>

  A wildcard specified by a C<ColumnWildcard> object. At least one of
C<ColumnNames> or C<ColumnWildcard> is required.


=head2 DatabaseName => Str

  The name of the database for the table with columns resource. Unique to
the Data Catalog. A database is a set of associated table definitions
organized into a logical group. You can Grant and Revoke database
privileges to a principal.


=head2 Name => Str

  The name of the table resource. A table is a metadata definition that
represents your data. You can Grant and Revoke table privileges to a
principal.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

