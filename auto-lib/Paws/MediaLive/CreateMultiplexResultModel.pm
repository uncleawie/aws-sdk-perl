package Paws::MediaLive::CreateMultiplexResultModel;
  use Moose;
  has Multiplex => (is => 'ro', isa => 'Paws::MediaLive::Multiplex', request_name => 'multiplex', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::CreateMultiplexResultModel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::CreateMultiplexResultModel object:

  $service_obj->Method(Att1 => { Multiplex => $value, ..., Multiplex => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::CreateMultiplexResultModel object:

  $result = $service_obj->Method(...);
  $result->Att1->Multiplex

=head1 DESCRIPTION

Placeholder documentation for CreateMultiplexResultModel

=head1 ATTRIBUTES


=head2 Multiplex => L<Paws::MediaLive::Multiplex>

  The newly created multiplex.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

