package Paws::MediaTailor::PlaybackConfiguration;
  use Moose;
  has AdDecisionServerUrl => (is => 'ro', isa => 'Str');
  has CdnConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::CdnConfiguration');
  has DashConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::DashConfiguration');
  has HlsConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::HlsConfiguration');
  has Name => (is => 'ro', isa => 'Str');
  has PersonalizationThresholdSeconds => (is => 'ro', isa => 'Int');
  has PlaybackConfigurationArn => (is => 'ro', isa => 'Str');
  has PlaybackEndpointPrefix => (is => 'ro', isa => 'Str');
  has SessionInitializationEndpointPrefix => (is => 'ro', isa => 'Str');
  has SlateAdUrl => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::MediaTailor::__mapOf__string', request_name => 'tags', traits => ['NameInRequest']);
  has TranscodeProfileName => (is => 'ro', isa => 'Str');
  has VideoContentSourceUrl => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::PlaybackConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaTailor::PlaybackConfiguration object:

  $service_obj->Method(Att1 => { AdDecisionServerUrl => $value, ..., VideoContentSourceUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaTailor::PlaybackConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AdDecisionServerUrl

=head1 DESCRIPTION

The AWSMediaTailor configuration.

=head1 ATTRIBUTES


=head2 AdDecisionServerUrl => Str

  The URL for the ad decision server (ADS). This includes the
specification of static parameters and placeholders for dynamic
parameters. AWS Elemental MediaTailor substitutes player-specific and
session-specific parameters as needed when calling the ADS.
Alternately, for testing, you can provide a static VAST URL. The
maximum length is 25,000 characters.


=head2 CdnConfiguration => L<Paws::MediaTailor::CdnConfiguration>

  The configuration for using a content delivery network (CDN), like
Amazon CloudFront, for content and ad segment management.


=head2 DashConfiguration => L<Paws::MediaTailor::DashConfiguration>

  The configuration for DASH content.


=head2 HlsConfiguration => L<Paws::MediaTailor::HlsConfiguration>

  The configuration for HLS content.


=head2 Name => Str

  The identifier for the playback configuration.


=head2 PersonalizationThresholdSeconds => Int

  The maximum duration of underfilled ad time (in seconds) allowed in an
ad break.


=head2 PlaybackConfigurationArn => Str

  The Amazon Resource Name (ARN) for the playback configuration.


=head2 PlaybackEndpointPrefix => Str

  The URL that the player accesses to get a manifest from AWS Elemental
MediaTailor. This session will use server-side reporting.


=head2 SessionInitializationEndpointPrefix => Str

  The URL that the player uses to initialize a session that uses
client-side reporting.


=head2 SlateAdUrl => Str

  The URL for a high-quality video asset to transcode and use to fill in
time that's not used by ads. AWS Elemental MediaTailor shows the slate
to fill in gaps in media content. Configuring the slate is optional for
non-VPAID playback configurations. For VPAID, the slate is required
because MediaTailor provides it in the slots designated for dynamic ad
content. The slate must be a high-quality asset that contains both
audio and video.


=head2 Tags => L<Paws::MediaTailor::__mapOf__string>

  The tags assigned to the playback configuration.


=head2 TranscodeProfileName => Str

  The name that is used to associate this playback configuration with a
custom transcode profile. This overrides the dynamic transcoding
defaults of MediaTailor. Use this only if you have already set up
custom profiles with the help of AWS Support.


=head2 VideoContentSourceUrl => Str

  The URL prefix for the master playlist for the stream, minus the asset
ID. The maximum length is 512 characters.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

