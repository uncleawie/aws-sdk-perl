package Paws::DMS::VpcSecurityGroupMembership;
  use Moose;
  has Status => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::VpcSecurityGroupMembership

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::VpcSecurityGroupMembership object:

  $service_obj->Method(Att1 => { Status => $value, ..., VpcSecurityGroupId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::VpcSecurityGroupMembership object:

  $result = $service_obj->Method(...);
  $result->Att1->Status

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Status => Str

  The status of the VPC security group.


=head2 VpcSecurityGroupId => Str

  The VPC security group Id.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
