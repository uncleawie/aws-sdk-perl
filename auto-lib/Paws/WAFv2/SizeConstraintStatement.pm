package Paws::WAFv2::SizeConstraintStatement;
  use Moose;
  has ComparisonOperator => (is => 'ro', isa => 'Str', required => 1);
  has FieldToMatch => (is => 'ro', isa => 'Paws::WAFv2::FieldToMatch', required => 1);
  has Size => (is => 'ro', isa => 'Int', required => 1);
  has TextTransformations => (is => 'ro', isa => 'ArrayRef[Paws::WAFv2::TextTransformation]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::SizeConstraintStatement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFv2::SizeConstraintStatement object:

  $service_obj->Method(Att1 => { ComparisonOperator => $value, ..., TextTransformations => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFv2::SizeConstraintStatement object:

  $result = $service_obj->Method(...);
  $result->Att1->ComparisonOperator

=head1 DESCRIPTION

This is the latest version of B<AWS WAF>, named AWS WAFV2, released in
November, 2019. For information, including how to migrate your AWS WAF
resources from the prior release, see the AWS WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

A rule statement that compares a number of bytes against the size of a
request component, using a comparison operator, such as greater than
(E<gt>) or less than (E<lt>). For example, you can use a size
constraint statement to look for query strings that are longer than 100
bytes.

If you configure AWS WAF to inspect the request body, AWS WAF inspects
only the first 8192 bytes (8 KB). If the request body for your web
requests never exceeds 8192 bytes, you can create a size constraint
condition and block requests that have a request body greater than 8192
bytes.

If you choose URI for the value of Part of the request to filter on,
the slash (/) in the URI counts as one character. For example, the URI
C</logo.jpg> is nine characters long.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComparisonOperator => Str

  The operator to use to compare the request part to the size setting.


=head2 B<REQUIRED> FieldToMatch => L<Paws::WAFv2::FieldToMatch>

  The part of a web request that you want AWS WAF to inspect. For more
information, see FieldToMatch.


=head2 B<REQUIRED> Size => Int

  The size, in byte, to compare to the request part, after any
transformations.


=head2 B<REQUIRED> TextTransformations => ArrayRef[L<Paws::WAFv2::TextTransformation>]

  Text transformations eliminate some of the unusual formatting that
attackers use in web requests in an effort to bypass detection. If you
specify one or more transformations in a rule statement, AWS WAF
performs all transformations on the content identified by
C<FieldToMatch>, starting from the lowest priority setting, before
inspecting the content for a match.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

