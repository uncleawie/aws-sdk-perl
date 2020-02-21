package Paws::SecurityHub::AwsCodeBuildProjectVpcConfig;
  use Moose;
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has VpcId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsCodeBuildProjectVpcConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsCodeBuildProjectVpcConfig object:

  $service_obj->Method(Att1 => { SecurityGroupIds => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsCodeBuildProjectVpcConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->SecurityGroupIds

=head1 DESCRIPTION

Information about the VPC configuration that AWS CodeBuild accesses.

=head1 ATTRIBUTES


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

  A list of one or more security group IDs in your Amazon VPC.


=head2 Subnets => ArrayRef[Str|Undef]

  A list of one or more subnet IDs in your Amazon VPC.


=head2 VpcId => Str

  The ID of the VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
