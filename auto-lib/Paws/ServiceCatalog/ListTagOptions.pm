
package Paws::ServiceCatalog::ListTagOptions;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::ServiceCatalog::ListTagOptionsFilters');
  has PageSize => (is => 'ro', isa => 'Int');
  has PageToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::ListTagOptionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListTagOptions - Arguments for method ListTagOptions on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagOptions on the 
AWS Service Catalog service. Use the attributes of this class
as arguments to method ListTagOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagOptions.

As an example:

  $service_obj->ListTagOptions(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Filters => L<Paws::ServiceCatalog::ListTagOptionsFilters>

The search filters. If no search filters are specified, the output
includes all TagOptions.



=head2 PageSize => Int

The maximum number of items to return with this call.



=head2 PageToken => Str

The page token for the next set of results. To retrieve the first set
of results, use null.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagOptions in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

