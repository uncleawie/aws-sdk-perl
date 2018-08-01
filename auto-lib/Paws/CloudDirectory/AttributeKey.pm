package Paws::CloudDirectory::AttributeKey;
  use Moose;
  has FacetName => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SchemaArn => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::AttributeKey

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::AttributeKey object:

  $service_obj->Method(Att1 => { FacetName => $value, ..., SchemaArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::AttributeKey object:

  $result = $service_obj->Method(...);
  $result->Att1->FacetName

=head1 DESCRIPTION

A unique identifier for an attribute.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FacetName => Str

  The name of the facet that the attribute exists within.


=head2 B<REQUIRED> Name => Str

  The name of the attribute.


=head2 B<REQUIRED> SchemaArn => Str

  The Amazon Resource Name (ARN) of the schema that contains the facet
and attribute.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

