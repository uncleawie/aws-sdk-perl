package Paws::FMS::SecurityServicePolicyData;
  use Moose;
  has ManagedServiceData => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::SecurityServicePolicyData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FMS::SecurityServicePolicyData object:

  $service_obj->Method(Att1 => { ManagedServiceData => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FMS::SecurityServicePolicyData object:

  $result = $service_obj->Method(...);
  $result->Att1->ManagedServiceData

=head1 DESCRIPTION

Details about the security service that is being used to protect the
resources.

=head1 ATTRIBUTES


=head2 ManagedServiceData => Str

  Details about the service that are specific to the service type, in
JSON format. For service type C<SHIELD_ADVANCED>, this is an empty
string.

=over

=item *

Example: C<WAF>

C<ManagedServiceData": "{\"type\": \"WAF\", \"ruleGroups\": [{\"id\":
\"12345678-1bcd-9012-efga-0987654321ab\", \"overrideAction\" :
{\"type\": \"COUNT\"}}], \"defaultAction\": {\"type\": \"BLOCK\"}}>

=item *

Example: C<SECURITY_GROUPS_COMMON>

C<"SecurityServicePolicyData":{"Type":"SECURITY_GROUPS_COMMON","ManagedServiceData":"{\"type\":\"SECURITY_GROUPS_COMMON\",\"revertManualSecurityGroupChanges\":false,\"exclusiveResourceSecurityGroupManagement\":false,\"securityGroups\":[{\"id\":\"
sg-000e55995d61a06bd\"}]}"},"RemediationEnabled":false,"ResourceType":"AWS::EC2::NetworkInterface"}>

=item *

Example: C<SECURITY_GROUPS_CONTENT_AUDIT>

C<"SecurityServicePolicyData":{"Type":"SECURITY_GROUPS_CONTENT_AUDIT","ManagedServiceData":"{\"type\":\"SECURITY_GROUPS_CONTENT_AUDIT\",\"securityGroups\":[{\"id\":\"
sg-000e55995d61a06bd
\"}],\"securityGroupAction\":{\"type\":\"ALLOW\"}}"},"RemediationEnabled":false,"ResourceType":"AWS::EC2::NetworkInterface"}>

The security group action for content audit can be C<ALLOW> or C<DENY>.
For C<ALLOW>, all in-scope security group rules must be within the
allowed range of the policy's security group rules. For C<DENY>, all
in-scope security group rules must not contain a value or a range that
matches a rule value or range in the policy security group.

=item *

Example: C<SECURITY_GROUPS_USAGE_AUDIT>

C<"SecurityServicePolicyData":{"Type":"SECURITY_GROUPS_USAGE_AUDIT","ManagedServiceData":"{\"type\":\"SECURITY_GROUPS_USAGE_AUDIT\",\"deleteUnusedSecurityGroups\":true,\"coalesceRedundantSecurityGroups\":true}"},"RemediationEnabled":false,"Resou
rceType":"AWS::EC2::SecurityGroup"}>

=back



=head2 B<REQUIRED> Type => Str

  The service that the policy is using to protect the resources. This
specifies the type of policy that is created, either an AWS WAF policy,
a Shield Advanced policy, or a security group policy. For security
group policies, Firewall Manager supports one security group for each
common policy and for each content audit policy. This is an adjustable
limit that you can increase by contacting AWS Support.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

