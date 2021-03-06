package Paws::KinesisVideo::ChannelInfo;
  use Moose;
  has ChannelARN => (is => 'ro', isa => 'Str');
  has ChannelName => (is => 'ro', isa => 'Str');
  has ChannelStatus => (is => 'ro', isa => 'Str');
  has ChannelType => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has SingleMasterConfiguration => (is => 'ro', isa => 'Paws::KinesisVideo::SingleMasterConfiguration');
  has Version => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::ChannelInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisVideo::ChannelInfo object:

  $service_obj->Method(Att1 => { ChannelARN => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisVideo::ChannelInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ChannelARN

=head1 DESCRIPTION

A structure that encapsulates a signaling channel's metadata and
properties.

=head1 ATTRIBUTES


=head2 ChannelARN => Str

  The ARN of the signaling channel.


=head2 ChannelName => Str

  The name of the signaling channel.


=head2 ChannelStatus => Str

  Current status of the signaling channel.


=head2 ChannelType => Str

  The type of the signaling channel.


=head2 CreationTime => Str

  The time at which the signaling channel was created.


=head2 SingleMasterConfiguration => L<Paws::KinesisVideo::SingleMasterConfiguration>

  A structure that contains the configuration for the C<SINGLE_MASTER>
channel type.


=head2 Version => Str

  The current version of the signaling channel.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

