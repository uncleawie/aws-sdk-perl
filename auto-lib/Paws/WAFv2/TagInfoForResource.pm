package Paws::WAFv2::TagInfoForResource;
  use Moose;
  has ResourceARN => (is => 'ro', isa => 'Str');
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::WAFv2::Tag]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::TagInfoForResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFv2::TagInfoForResource object:

  $service_obj->Method(Att1 => { ResourceARN => $value, ..., TagList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFv2::TagInfoForResource object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceARN

=head1 DESCRIPTION

This is the latest version of B<AWS WAF>, named AWS WAFV2, released in
November, 2019. For information, including how to migrate your AWS WAF
resources from the prior release, see the AWS WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

The collection of tagging definitions for an AWS resource.

=head1 ATTRIBUTES


=head2 ResourceARN => Str

  The Amazon Resource Name (ARN) of the resource.


=head2 TagList => ArrayRef[L<Paws::WAFv2::Tag>]

  The array of Tag objects defined for the resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

