package Paws::WAFv2::OverrideAction;
  use Moose;
  has Count => (is => 'ro', isa => 'Paws::WAFv2::CountAction');
  has None => (is => 'ro', isa => 'Paws::WAFv2::NoneAction');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::OverrideAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFv2::OverrideAction object:

  $service_obj->Method(Att1 => { Count => $value, ..., None => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFv2::OverrideAction object:

  $result = $service_obj->Method(...);
  $result->Att1->Count

=head1 DESCRIPTION

This is the latest version of B<AWS WAF>, named AWS WAFV2, released in
November, 2019. For information, including how to migrate your AWS WAF
resources from the prior release, see the AWS WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

The action to use to override the rule's C<Action> setting. You can use
no override action, in which case the rule action is in effect, or
count, in which case, if the rule matches a web request, it only counts
the match.

=head1 ATTRIBUTES


=head2 Count => L<Paws::WAFv2::CountAction>

  Override the rule action setting to count.


=head2 None => L<Paws::WAFv2::NoneAction>

  Don't override the rule action setting.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

