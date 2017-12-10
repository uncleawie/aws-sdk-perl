
package Paws::CodeDeploy::ListDeploymentGroups;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationName' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDeploymentGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::ListDeploymentGroupsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListDeploymentGroups - Arguments for method ListDeploymentGroups on L<Paws::CodeDeploy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDeploymentGroups on the 
AWS CodeDeploy service. Use the attributes of this class
as arguments to method ListDeploymentGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDeploymentGroups.

As an example:

  $service_obj->ListDeploymentGroups(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of an AWS CodeDeploy application associated with the
applicable IAM user or AWS account.



=head2 NextToken => Str

An identifier returned from the previous list deployment groups call.
It can be used to return the next set of deployment groups in the list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDeploymentGroups in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

