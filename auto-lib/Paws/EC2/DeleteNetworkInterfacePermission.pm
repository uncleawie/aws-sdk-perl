
package Paws::EC2::DeleteNetworkInterfacePermission;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Force => (is => 'ro', isa => 'Bool');
  has NetworkInterfacePermissionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteNetworkInterfacePermission');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DeleteNetworkInterfacePermissionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteNetworkInterfacePermission - Arguments for method DeleteNetworkInterfacePermission on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteNetworkInterfacePermission on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method DeleteNetworkInterfacePermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteNetworkInterfacePermission.

As an example:

  $service_obj->DeleteNetworkInterfacePermission(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Force => Bool

Specify C<true> to remove the permission even if the network interface
is attached to an instance.



=head2 B<REQUIRED> NetworkInterfacePermissionId => Str

The ID of the network interface permission.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteNetworkInterfacePermission in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

