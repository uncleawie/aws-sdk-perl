package Paws::SSM::DocumentRequires;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Version => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DocumentRequires

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::DocumentRequires object:

  $service_obj->Method(Att1 => { Name => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::DocumentRequires object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

An SSM document required by the current document.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  The name of the required SSM document. The name can be an Amazon
Resource Name (ARN).


=head2 Version => Str

  The document version required by the current document.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

