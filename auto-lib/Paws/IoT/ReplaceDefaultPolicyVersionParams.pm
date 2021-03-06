package Paws::IoT::ReplaceDefaultPolicyVersionParams;
  use Moose;
  has TemplateName => (is => 'ro', isa => 'Str', request_name => 'templateName', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ReplaceDefaultPolicyVersionParams

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ReplaceDefaultPolicyVersionParams object:

  $service_obj->Method(Att1 => { TemplateName => $value, ..., TemplateName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ReplaceDefaultPolicyVersionParams object:

  $result = $service_obj->Method(...);
  $result->Att1->TemplateName

=head1 DESCRIPTION

Parameters to define a mitigation action that adds a blank policy to
restrict permissions.

=head1 ATTRIBUTES


=head2 B<REQUIRED> TemplateName => Str

  The name of the template to be applied. The only supported value is
C<BLANK_POLICY>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

