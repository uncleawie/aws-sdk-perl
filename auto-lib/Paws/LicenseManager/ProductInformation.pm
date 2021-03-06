package Paws::LicenseManager::ProductInformation;
  use Moose;
  has ProductInformationFilterList => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManager::ProductInformationFilter]', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ProductInformation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LicenseManager::ProductInformation object:

  $service_obj->Method(Att1 => { ProductInformationFilterList => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LicenseManager::ProductInformation object:

  $result = $service_obj->Method(...);
  $result->Att1->ProductInformationFilterList

=head1 DESCRIPTION

Describes product information for a license configuration.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProductInformationFilterList => ArrayRef[L<Paws::LicenseManager::ProductInformationFilter>]

  Product information filters. The following filters and logical
operators are supported:

=over

=item *

C<Application Name> - The name of the application. Logical operator is
C<EQUALS>.

=item *

C<Application Publisher> - The publisher of the application. Logical
operator is C<EQUALS>.

=item *

C<Application Version> - The version of the application. Logical
operator is C<EQUALS>.

=item *

C<Platform Name> - The name of the platform. Logical operator is
C<EQUALS>.

=item *

C<Platform Type> - The platform type. Logical operator is C<EQUALS>.

=item *

C<License Included> - The type of license included. Logical operators
are C<EQUALS> and C<NOT_EQUALS>. Possible values are
C<sql-server-enterprise> | C<sql-server-standard> | C<sql-server-web> |
C<windows-server-datacenter>.

=back



=head2 B<REQUIRED> ResourceType => Str

  Resource type. The value is C<SSM_MANAGED>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

