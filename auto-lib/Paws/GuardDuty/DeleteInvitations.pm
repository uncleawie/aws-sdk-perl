
package Paws::GuardDuty::DeleteInvitations;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIds');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteInvitations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/invitation/delete');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::DeleteInvitationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::DeleteInvitations - Arguments for method DeleteInvitations on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteInvitations on the 
Amazon GuardDuty service. Use the attributes of this class
as arguments to method DeleteInvitations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteInvitations.

As an example:

  $service_obj->DeleteInvitations(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

A list of account IDs of the AWS accounts that sent invitations to the
current member account that you want to delete invitations from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteInvitations in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

