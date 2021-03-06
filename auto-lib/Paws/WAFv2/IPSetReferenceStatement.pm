package Paws::WAFv2::IPSetReferenceStatement;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::IPSetReferenceStatement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFv2::IPSetReferenceStatement object:

  $service_obj->Method(Att1 => { ARN => $value, ..., ARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFv2::IPSetReferenceStatement object:

  $result = $service_obj->Method(...);
  $result->Att1->ARN

=head1 DESCRIPTION

This is the latest version of B<AWS WAF>, named AWS WAFV2, released in
November, 2019. For information, including how to migrate your AWS WAF
resources from the prior release, see the AWS WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

A rule statement used to detect web requests coming from particular IP
addresses or address ranges. To use this, create an IPSet that
specifies the addresses you want to detect, then use the ARN of that
set in this statement. To create an IP set, see CreateIPSet.

Each IP set rule statement references an IP set. You create and
maintain the set independent of your rules. This allows you to use the
single set in multiple rules. When you update the referenced set, AWS
WAF automatically updates all rules that reference it.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ARN => Str

  The Amazon Resource Name (ARN) of the IPSet that this statement
references.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

