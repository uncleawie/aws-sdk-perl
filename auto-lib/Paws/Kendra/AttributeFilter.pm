package Paws::Kendra::AttributeFilter;
  use Moose;
  has AndAllFilters => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::AttributeFilter]');
  has ContainsAll => (is => 'ro', isa => 'Paws::Kendra::DocumentAttribute');
  has ContainsAny => (is => 'ro', isa => 'Paws::Kendra::DocumentAttribute');
  has EqualsTo => (is => 'ro', isa => 'Paws::Kendra::DocumentAttribute');
  has GreaterThan => (is => 'ro', isa => 'Paws::Kendra::DocumentAttribute');
  has GreaterThanOrEquals => (is => 'ro', isa => 'Paws::Kendra::DocumentAttribute');
  has LessThan => (is => 'ro', isa => 'Paws::Kendra::DocumentAttribute');
  has LessThanOrEquals => (is => 'ro', isa => 'Paws::Kendra::DocumentAttribute');
  has NotFilter => (is => 'ro', isa => 'Paws::Kendra::AttributeFilter');
  has OrAllFilters => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::AttributeFilter]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::AttributeFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::AttributeFilter object:

  $service_obj->Method(Att1 => { AndAllFilters => $value, ..., OrAllFilters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::AttributeFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->AndAllFilters

=head1 DESCRIPTION

Provides filtering the query results based on document attributes.

=head1 ATTRIBUTES


=head2 AndAllFilters => ArrayRef[L<Paws::Kendra::AttributeFilter>]

  Performs a logical C<AND> operation on all supplied filters.


=head2 ContainsAll => L<Paws::Kendra::DocumentAttribute>

  Returns true when a document contains all of the specified document
attributes.


=head2 ContainsAny => L<Paws::Kendra::DocumentAttribute>

  Returns true when a document contains any of the specified document
attributes.


=head2 EqualsTo => L<Paws::Kendra::DocumentAttribute>

  Performs an equals operation on two document attributes.


=head2 GreaterThan => L<Paws::Kendra::DocumentAttribute>

  Performs a greater than operation on two document attributes. Use with
a document attribute of type C<Integer> or C<Long>.


=head2 GreaterThanOrEquals => L<Paws::Kendra::DocumentAttribute>

  Performs a greater or equals than operation on two document attributes.
Use with a document attribute of type C<Integer> or C<Long>.


=head2 LessThan => L<Paws::Kendra::DocumentAttribute>

  Performs a less than operation on two document attributes. Use with a
document attribute of type C<Integer> or C<Long>.


=head2 LessThanOrEquals => L<Paws::Kendra::DocumentAttribute>

  Performs a less than or equals operation on two document attributes.
Use with a document attribute of type C<Integer> or C<Long>.


=head2 NotFilter => L<Paws::Kendra::AttributeFilter>

  Performs a logical C<NOT> operation on all supplied filters.


=head2 OrAllFilters => ArrayRef[L<Paws::Kendra::AttributeFilter>]

  Performs a logical C<OR> operation on all supplied filters.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
