package Paws::MediaLive::H265Settings;
  use Moose;
  has AdaptiveQuantization => (is => 'ro', isa => 'Str', request_name => 'adaptiveQuantization', traits => ['NameInRequest']);
  has AfdSignaling => (is => 'ro', isa => 'Str', request_name => 'afdSignaling', traits => ['NameInRequest']);
  has AlternativeTransferFunction => (is => 'ro', isa => 'Str', request_name => 'alternativeTransferFunction', traits => ['NameInRequest']);
  has Bitrate => (is => 'ro', isa => 'Int', request_name => 'bitrate', traits => ['NameInRequest']);
  has BufSize => (is => 'ro', isa => 'Int', request_name => 'bufSize', traits => ['NameInRequest']);
  has ColorMetadata => (is => 'ro', isa => 'Str', request_name => 'colorMetadata', traits => ['NameInRequest']);
  has ColorSpaceSettings => (is => 'ro', isa => 'Paws::MediaLive::H265ColorSpaceSettings', request_name => 'colorSpaceSettings', traits => ['NameInRequest']);
  has FixedAfd => (is => 'ro', isa => 'Str', request_name => 'fixedAfd', traits => ['NameInRequest']);
  has FlickerAq => (is => 'ro', isa => 'Str', request_name => 'flickerAq', traits => ['NameInRequest']);
  has FramerateDenominator => (is => 'ro', isa => 'Int', request_name => 'framerateDenominator', traits => ['NameInRequest'], required => 1);
  has FramerateNumerator => (is => 'ro', isa => 'Int', request_name => 'framerateNumerator', traits => ['NameInRequest'], required => 1);
  has GopClosedCadence => (is => 'ro', isa => 'Int', request_name => 'gopClosedCadence', traits => ['NameInRequest']);
  has GopSize => (is => 'ro', isa => 'Num', request_name => 'gopSize', traits => ['NameInRequest']);
  has GopSizeUnits => (is => 'ro', isa => 'Str', request_name => 'gopSizeUnits', traits => ['NameInRequest']);
  has Level => (is => 'ro', isa => 'Str', request_name => 'level', traits => ['NameInRequest']);
  has LookAheadRateControl => (is => 'ro', isa => 'Str', request_name => 'lookAheadRateControl', traits => ['NameInRequest']);
  has MaxBitrate => (is => 'ro', isa => 'Int', request_name => 'maxBitrate', traits => ['NameInRequest']);
  has MinIInterval => (is => 'ro', isa => 'Int', request_name => 'minIInterval', traits => ['NameInRequest']);
  has ParDenominator => (is => 'ro', isa => 'Int', request_name => 'parDenominator', traits => ['NameInRequest']);
  has ParNumerator => (is => 'ro', isa => 'Int', request_name => 'parNumerator', traits => ['NameInRequest']);
  has Profile => (is => 'ro', isa => 'Str', request_name => 'profile', traits => ['NameInRequest']);
  has QvbrQualityLevel => (is => 'ro', isa => 'Int', request_name => 'qvbrQualityLevel', traits => ['NameInRequest']);
  has RateControlMode => (is => 'ro', isa => 'Str', request_name => 'rateControlMode', traits => ['NameInRequest']);
  has ScanType => (is => 'ro', isa => 'Str', request_name => 'scanType', traits => ['NameInRequest']);
  has SceneChangeDetect => (is => 'ro', isa => 'Str', request_name => 'sceneChangeDetect', traits => ['NameInRequest']);
  has Slices => (is => 'ro', isa => 'Int', request_name => 'slices', traits => ['NameInRequest']);
  has Tier => (is => 'ro', isa => 'Str', request_name => 'tier', traits => ['NameInRequest']);
  has TimecodeInsertion => (is => 'ro', isa => 'Str', request_name => 'timecodeInsertion', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::H265Settings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::H265Settings object:

  $service_obj->Method(Att1 => { AdaptiveQuantization => $value, ..., TimecodeInsertion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::H265Settings object:

  $result = $service_obj->Method(...);
  $result->Att1->AdaptiveQuantization

=head1 DESCRIPTION

H265 Settings

=head1 ATTRIBUTES


=head2 AdaptiveQuantization => Str

  Adaptive quantization. Allows intra-frame quantizers to vary to improve
visual quality.


=head2 AfdSignaling => Str

  Indicates that AFD values will be written into the output stream. If
afdSignaling is "auto", the system will try to preserve the input AFD
value (in cases where multiple AFD values are valid). If set to
"fixed", the AFD value will be the value configured in the fixedAfd
parameter.


=head2 AlternativeTransferFunction => Str

  Whether or not EML should insert an Alternative Transfer Function SEI
message to support backwards compatibility with non-HDR decoders and
displays.


=head2 Bitrate => Int

  Average bitrate in bits/second. Required when the rate control mode is
VBR or CBR. Not used for QVBR. In an MS Smooth output group, each
output must have a unique value when its bitrate is rounded down to the
nearest multiple of 1000.


=head2 BufSize => Int

  Size of buffer (HRD buffer model) in bits.


=head2 ColorMetadata => Str

  Includes colorspace metadata in the output.


=head2 ColorSpaceSettings => L<Paws::MediaLive::H265ColorSpaceSettings>

  Color Space settings


=head2 FixedAfd => Str

  Four bit AFD value to write on all frames of video in the output
stream. Only valid when afdSignaling is set to 'Fixed'.


=head2 FlickerAq => Str

  If set to enabled, adjust quantization within each frame to reduce
flicker or 'pop' on I-frames.


=head2 B<REQUIRED> FramerateDenominator => Int

  Framerate denominator.


=head2 B<REQUIRED> FramerateNumerator => Int

  Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 =
23.976 fps.


=head2 GopClosedCadence => Int

  Frequency of closed GOPs. In streaming applications, it is recommended
that this be set to 1 so a decoder joining mid-stream will receive an
IDR frame as quickly as possible. Setting this value to 0 will break
output segmenting.


=head2 GopSize => Num

  GOP size (keyframe interval) in units of either frames or seconds per
gopSizeUnits. If gopSizeUnits is frames, gopSize must be an integer and
must be greater than or equal to 1. If gopSizeUnits is seconds, gopSize
must be greater than 0, but need not be an integer.


=head2 GopSizeUnits => Str

  Indicates if the gopSize is specified in frames or seconds. If seconds
the system will convert the gopSize into a frame count at run time.


=head2 Level => Str

  H.265 Level.


=head2 LookAheadRateControl => Str

  Amount of lookahead. A value of low can decrease latency and memory
usage, while high can produce better quality for certain content.


=head2 MaxBitrate => Int

  For QVBR: See the tooltip for Quality level


=head2 MinIInterval => Int

  Only meaningful if sceneChangeDetect is set to enabled. Defaults to 5
if multiplex rate control is used. Enforces separation between repeated
(cadence) I-frames and I-frames inserted by Scene Change Detection. If
a scene change I-frame is within I-interval frames of a cadence
I-frame, the GOP is shrunk and/or stretched to the scene change
I-frame. GOP stretch requires enabling lookahead as well as setting
I-interval. The normal cadence resumes for the next GOP. Note: Maximum
GOP stretch = GOP size + Min-I-interval - 1


=head2 ParDenominator => Int

  Pixel Aspect Ratio denominator.


=head2 ParNumerator => Int

  Pixel Aspect Ratio numerator.


=head2 Profile => Str

  H.265 Profile.


=head2 QvbrQualityLevel => Int

  Controls the target quality for the video encode. Applies only when the
rate control mode is QVBR. Set values for the QVBR quality level field
and Max bitrate field that suit your most important viewing devices.
Recommended values are: - Primary screen: Quality level: 8 to 10. Max
bitrate: 4M - PC or tablet: Quality level: 7. Max bitrate: 1.5M to 3M -
Smartphone: Quality level: 6. Max bitrate: 1M to 1.5M


=head2 RateControlMode => Str

  Rate control mode. QVBR: Quality will match the specified quality level
except when it is constrained by the maximum bitrate. Recommended if
you or your viewers pay for bandwidth. CBR: Quality varies, depending
on the video complexity. Recommended only if you distribute your assets
to devices that cannot handle variable bitrates.


=head2 ScanType => Str

  Sets the scan type of the output to progressive or top-field-first
interlaced.


=head2 SceneChangeDetect => Str

  Scene change detection.


=head2 Slices => Int

  Number of slices per picture. Must be less than or equal to the number
of macroblock rows for progressive pictures, and less than or equal to
half the number of macroblock rows for interlaced pictures. This field
is optional; when no value is specified the encoder will choose the
number of slices based on encode resolution.


=head2 Tier => Str

  H.265 Tier.


=head2 TimecodeInsertion => Str

  Determines how timecodes should be inserted into the video elementary
stream. - 'disabled': Do not include timecodes - 'picTimingSei': Pass
through picture timing SEI messages from the source specified in
Timecode Config



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
