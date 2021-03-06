package Paws::ResourceTagging::ResourceTagMapping;
  use Moose;
  has ComplianceDetails => (is => 'ro', isa => 'Paws::ResourceTagging::ComplianceDetails');
  has ResourceARN => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ResourceTagging::Tag]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceTagging::ResourceTagMapping

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ResourceTagging::ResourceTagMapping object:

  $service_obj->Method(Att1 => { ComplianceDetails => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ResourceTagging::ResourceTagMapping object:

  $result = $service_obj->Method(...);
  $result->Att1->ComplianceDetails

=head1 DESCRIPTION

A list of resource ARNs and the tags (keys and values) that are
associated with each.

=head1 ATTRIBUTES


=head2 ComplianceDetails => L<Paws::ResourceTagging::ComplianceDetails>

  Information that shows whether a resource is compliant with the
effective tag policy, including details on any noncompliant tag keys.


=head2 ResourceARN => Str

  The ARN of the resource.


=head2 Tags => ArrayRef[L<Paws::ResourceTagging::Tag>]

  The tags that have been applied to one or more AWS resources.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ResourceTagging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

