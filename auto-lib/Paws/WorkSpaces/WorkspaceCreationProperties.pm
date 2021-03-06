package Paws::WorkSpaces::WorkspaceCreationProperties;
  use Moose;
  has CustomSecurityGroupId => (is => 'ro', isa => 'Str');
  has DefaultOu => (is => 'ro', isa => 'Str');
  has EnableInternetAccess => (is => 'ro', isa => 'Bool');
  has EnableMaintenanceMode => (is => 'ro', isa => 'Bool');
  has UserEnabledAsLocalAdministrator => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::WorkspaceCreationProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkSpaces::WorkspaceCreationProperties object:

  $service_obj->Method(Att1 => { CustomSecurityGroupId => $value, ..., UserEnabledAsLocalAdministrator => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkSpaces::WorkspaceCreationProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomSecurityGroupId

=head1 DESCRIPTION

Describes the default properties that are used for creating WorkSpaces.
For more information, see Update Directory Details for Your WorkSpaces
(https://docs.aws.amazon.com/workspaces/latest/adminguide/update-directory-details.html).

=head1 ATTRIBUTES


=head2 CustomSecurityGroupId => Str

  The identifier of your custom security group.


=head2 DefaultOu => Str

  The default organizational unit (OU) for your WorkSpace directories.


=head2 EnableInternetAccess => Bool

  Indicates whether internet access is enabled for your WorkSpaces.


=head2 EnableMaintenanceMode => Bool

  Indicates whether maintenance mode is enabled for your WorkSpaces. For
more information, see WorkSpace Maintenance
(https://docs.aws.amazon.com/workspaces/latest/adminguide/workspace-maintenance.html).


=head2 UserEnabledAsLocalAdministrator => Bool

  Indicates whether users are local administrators of their WorkSpaces.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

