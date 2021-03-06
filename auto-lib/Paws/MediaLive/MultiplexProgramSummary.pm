package Paws::MediaLive::MultiplexProgramSummary;
  use Moose;
  has ChannelId => (is => 'ro', isa => 'Str', request_name => 'channelId', traits => ['NameInRequest']);
  has ProgramName => (is => 'ro', isa => 'Str', request_name => 'programName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::MultiplexProgramSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::MultiplexProgramSummary object:

  $service_obj->Method(Att1 => { ChannelId => $value, ..., ProgramName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::MultiplexProgramSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ChannelId

=head1 DESCRIPTION

Placeholder documentation for MultiplexProgramSummary

=head1 ATTRIBUTES


=head2 ChannelId => Str

  The MediaLive Channel associated with the program.


=head2 ProgramName => Str

  The name of the multiplex program.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

