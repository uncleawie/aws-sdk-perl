
package Paws::AppStream::DeleteStack;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteStack');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::DeleteStackResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DeleteStack - Arguments for method DeleteStack on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteStack on the 
Amazon AppStream service. Use the attributes of this class
as arguments to method DeleteStack.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteStack.

As an example:

  $service_obj->DeleteStack(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the stack.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteStack in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

