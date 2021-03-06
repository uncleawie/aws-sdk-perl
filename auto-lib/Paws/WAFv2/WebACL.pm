package Paws::WAFv2::WebACL;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str', required => 1);
  has Capacity => (is => 'ro', isa => 'Int');
  has DefaultAction => (is => 'ro', isa => 'Paws::WAFv2::DefaultAction', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::WAFv2::Rule]');
  has VisibilityConfig => (is => 'ro', isa => 'Paws::WAFv2::VisibilityConfig', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::WebACL

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFv2::WebACL object:

  $service_obj->Method(Att1 => { ARN => $value, ..., VisibilityConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFv2::WebACL object:

  $result = $service_obj->Method(...);
  $result->Att1->ARN

=head1 DESCRIPTION

This is the latest version of B<AWS WAF>, named AWS WAFV2, released in
November, 2019. For information, including how to migrate your AWS WAF
resources from the prior release, see the AWS WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

A Web ACL defines a collection of rules to use to inspect and control
web requests. Each rule has an action defined (allow, block, or count)
for requests that match the statement of the rule. In the Web ACL, you
assign a default action to take (allow, block) for any request that
does not match any of the rules. The rules in a Web ACL can be a
combination of the types Rule, RuleGroup, and managed rule group. You
can associate a Web ACL with one or more AWS resources to protect. The
resources can be Amazon CloudFront, an Amazon API Gateway API, or an
Application Load Balancer.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ARN => Str

  The Amazon Resource Name (ARN) of the Web ACL that you want to
associate with the resource.


=head2 Capacity => Int

  The web ACL capacity units (WCUs) currently being used by this web ACL.

AWS WAF uses WCUs to calculate and control the operating resources that
are used to run your rules, rule groups, and web ACLs. AWS WAF
calculates capacity differently for each rule type, to reflect the
relative cost of each rule. Simple rules that cost little to run use
fewer WCUs than more complex rules that use more processing power. Rule
group capacity is fixed at creation, which helps users plan their web
ACL WCU usage when they use a rule group. The WCU limit for web ACLs is
1,500.


=head2 B<REQUIRED> DefaultAction => L<Paws::WAFv2::DefaultAction>

  The action to perform if none of the C<Rules> contained in the
C<WebACL> match.


=head2 Description => Str

  A friendly description of the Web ACL. You cannot change the
description of a Web ACL after you create it.


=head2 B<REQUIRED> Id => Str

  A unique identifier for the C<WebACL>. This ID is returned in the
responses to create and list commands. You use this ID to do things
like get, update, and delete a C<WebACL>.


=head2 B<REQUIRED> Name => Str

  A friendly name of the Web ACL. You cannot change the name of a Web ACL
after you create it.


=head2 Rules => ArrayRef[L<Paws::WAFv2::Rule>]

  The Rule statements used to identify the web requests that you want to
allow, block, or count. Each rule includes one top-level statement that
AWS WAF uses to identify matching web requests, and parameters that
govern how AWS WAF handles them.


=head2 B<REQUIRED> VisibilityConfig => L<Paws::WAFv2::VisibilityConfig>

  Defines and enables Amazon CloudWatch metrics and web request sample
collection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

