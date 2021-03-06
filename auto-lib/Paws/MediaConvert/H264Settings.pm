package Paws::MediaConvert::H264Settings;
  use Moose;
  has AdaptiveQuantization => (is => 'ro', isa => 'Str', request_name => 'adaptiveQuantization', traits => ['NameInRequest']);
  has Bitrate => (is => 'ro', isa => 'Int', request_name => 'bitrate', traits => ['NameInRequest']);
  has CodecLevel => (is => 'ro', isa => 'Str', request_name => 'codecLevel', traits => ['NameInRequest']);
  has CodecProfile => (is => 'ro', isa => 'Str', request_name => 'codecProfile', traits => ['NameInRequest']);
  has DynamicSubGop => (is => 'ro', isa => 'Str', request_name => 'dynamicSubGop', traits => ['NameInRequest']);
  has EntropyEncoding => (is => 'ro', isa => 'Str', request_name => 'entropyEncoding', traits => ['NameInRequest']);
  has FieldEncoding => (is => 'ro', isa => 'Str', request_name => 'fieldEncoding', traits => ['NameInRequest']);
  has FlickerAdaptiveQuantization => (is => 'ro', isa => 'Str', request_name => 'flickerAdaptiveQuantization', traits => ['NameInRequest']);
  has FramerateControl => (is => 'ro', isa => 'Str', request_name => 'framerateControl', traits => ['NameInRequest']);
  has FramerateConversionAlgorithm => (is => 'ro', isa => 'Str', request_name => 'framerateConversionAlgorithm', traits => ['NameInRequest']);
  has FramerateDenominator => (is => 'ro', isa => 'Int', request_name => 'framerateDenominator', traits => ['NameInRequest']);
  has FramerateNumerator => (is => 'ro', isa => 'Int', request_name => 'framerateNumerator', traits => ['NameInRequest']);
  has GopBReference => (is => 'ro', isa => 'Str', request_name => 'gopBReference', traits => ['NameInRequest']);
  has GopClosedCadence => (is => 'ro', isa => 'Int', request_name => 'gopClosedCadence', traits => ['NameInRequest']);
  has GopSize => (is => 'ro', isa => 'Num', request_name => 'gopSize', traits => ['NameInRequest']);
  has GopSizeUnits => (is => 'ro', isa => 'Str', request_name => 'gopSizeUnits', traits => ['NameInRequest']);
  has HrdBufferInitialFillPercentage => (is => 'ro', isa => 'Int', request_name => 'hrdBufferInitialFillPercentage', traits => ['NameInRequest']);
  has HrdBufferSize => (is => 'ro', isa => 'Int', request_name => 'hrdBufferSize', traits => ['NameInRequest']);
  has InterlaceMode => (is => 'ro', isa => 'Str', request_name => 'interlaceMode', traits => ['NameInRequest']);
  has MaxBitrate => (is => 'ro', isa => 'Int', request_name => 'maxBitrate', traits => ['NameInRequest']);
  has MinIInterval => (is => 'ro', isa => 'Int', request_name => 'minIInterval', traits => ['NameInRequest']);
  has NumberBFramesBetweenReferenceFrames => (is => 'ro', isa => 'Int', request_name => 'numberBFramesBetweenReferenceFrames', traits => ['NameInRequest']);
  has NumberReferenceFrames => (is => 'ro', isa => 'Int', request_name => 'numberReferenceFrames', traits => ['NameInRequest']);
  has ParControl => (is => 'ro', isa => 'Str', request_name => 'parControl', traits => ['NameInRequest']);
  has ParDenominator => (is => 'ro', isa => 'Int', request_name => 'parDenominator', traits => ['NameInRequest']);
  has ParNumerator => (is => 'ro', isa => 'Int', request_name => 'parNumerator', traits => ['NameInRequest']);
  has QualityTuningLevel => (is => 'ro', isa => 'Str', request_name => 'qualityTuningLevel', traits => ['NameInRequest']);
  has QvbrSettings => (is => 'ro', isa => 'Paws::MediaConvert::H264QvbrSettings', request_name => 'qvbrSettings', traits => ['NameInRequest']);
  has RateControlMode => (is => 'ro', isa => 'Str', request_name => 'rateControlMode', traits => ['NameInRequest']);
  has RepeatPps => (is => 'ro', isa => 'Str', request_name => 'repeatPps', traits => ['NameInRequest']);
  has SceneChangeDetect => (is => 'ro', isa => 'Str', request_name => 'sceneChangeDetect', traits => ['NameInRequest']);
  has Slices => (is => 'ro', isa => 'Int', request_name => 'slices', traits => ['NameInRequest']);
  has SlowPal => (is => 'ro', isa => 'Str', request_name => 'slowPal', traits => ['NameInRequest']);
  has Softness => (is => 'ro', isa => 'Int', request_name => 'softness', traits => ['NameInRequest']);
  has SpatialAdaptiveQuantization => (is => 'ro', isa => 'Str', request_name => 'spatialAdaptiveQuantization', traits => ['NameInRequest']);
  has Syntax => (is => 'ro', isa => 'Str', request_name => 'syntax', traits => ['NameInRequest']);
  has Telecine => (is => 'ro', isa => 'Str', request_name => 'telecine', traits => ['NameInRequest']);
  has TemporalAdaptiveQuantization => (is => 'ro', isa => 'Str', request_name => 'temporalAdaptiveQuantization', traits => ['NameInRequest']);
  has UnregisteredSeiTimecode => (is => 'ro', isa => 'Str', request_name => 'unregisteredSeiTimecode', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::H264Settings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::H264Settings object:

  $service_obj->Method(Att1 => { AdaptiveQuantization => $value, ..., UnregisteredSeiTimecode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::H264Settings object:

  $result = $service_obj->Method(...);
  $result->Att1->AdaptiveQuantization

=head1 DESCRIPTION

Required when you set (Codec) under
(VideoDescription)E<gt>(CodecSettings) to the value H_264.

=head1 ATTRIBUTES


=head2 AdaptiveQuantization => Str

  Adaptive quantization. Allows intra-frame quantizers to vary to improve
visual quality.


=head2 Bitrate => Int

  Specify the average bitrate in bits per second. Required for VBR and
CBR. For MS Smooth outputs, bitrates must be unique when rounded down
to the nearest multiple of 1000.


=head2 CodecLevel => Str

  Specify an H.264 level that is consistent with your output video
settings. If you aren't sure what level to specify, choose Auto (AUTO).


=head2 CodecProfile => Str

  H.264 Profile. High 4:2:2 and 10-bit profiles are only available with
the AVC-I License.


=head2 DynamicSubGop => Str

  Choose Adaptive to improve subjective video quality for high-motion
content. This will cause the service to use fewer B-frames (which infer
information based on other frames) for high-motion portions of the
video and more B-frames for low-motion portions. The maximum number of
B-frames is limited by the value you provide for the setting B frames
between reference frames (numberBFramesBetweenReferenceFrames).


=head2 EntropyEncoding => Str

  Entropy encoding mode. Use CABAC (must be in Main or High profile) or
CAVLC.


=head2 FieldEncoding => Str

  Choosing FORCE_FIELD disables PAFF encoding for interlaced outputs.


=head2 FlickerAdaptiveQuantization => Str

  Adjust quantization within each frame to reduce flicker or 'pop' on
I-frames.


=head2 FramerateControl => Str

  If you are using the console, use the Framerate setting to specify the
frame rate for this output. If you want to keep the same frame rate as
the input video, choose Follow source. If you want to do frame rate
conversion, choose a frame rate from the dropdown list or choose
Custom. The framerates shown in the dropdown list are decimal
approximations of fractions. If you choose Custom, specify your frame
rate as a fraction. If you are creating your transcoding job
specification as a JSON file without the console, use FramerateControl
to specify which value the service uses for the frame rate for this
output. Choose INITIALIZE_FROM_SOURCE if you want the service to use
the frame rate from the input. Choose SPECIFIED if you want the service
to use the frame rate you specify in the settings FramerateNumerator
and FramerateDenominator.


=head2 FramerateConversionAlgorithm => Str

  When set to INTERPOLATE, produces smoother motion during frame rate
conversion.


=head2 FramerateDenominator => Int

  When you use the API for transcode jobs that use frame rate conversion,
specify the frame rate as a fraction. For example, 24000 / 1001 =
23.976 fps. Use FramerateDenominator to specify the denominator of this
fraction. In this example, use 1001 for the value of
FramerateDenominator. When you use the console for transcode jobs that
use frame rate conversion, provide the value as a decimal number for
Framerate. In this example, specify 23.976.


=head2 FramerateNumerator => Int

  Frame rate numerator - frame rate is a fraction, e.g. 24000 / 1001 =
23.976 fps.


=head2 GopBReference => Str

  If enable, use reference B frames for GOP structures that have B frames
E<gt> 1.


=head2 GopClosedCadence => Int

  Frequency of closed GOPs. In streaming applications, it is recommended
that this be set to 1 so a decoder joining mid-stream will receive an
IDR frame as quickly as possible. Setting this value to 0 will break
output segmenting.


=head2 GopSize => Num

  GOP Length (keyframe interval) in frames or seconds. Must be greater
than zero.


=head2 GopSizeUnits => Str

  Indicates if the GOP Size in H264 is specified in frames or seconds. If
seconds the system will convert the GOP Size into a frame count at run
time.


=head2 HrdBufferInitialFillPercentage => Int

  Percentage of the buffer that should initially be filled (HRD buffer
model).


=head2 HrdBufferSize => Int

  Size of buffer (HRD buffer model) in bits. For example, enter five
megabits as 5000000.


=head2 InterlaceMode => Str

  Use Interlace mode (InterlaceMode) to choose the scan line type for the
output. * Top Field First (TOP_FIELD) and Bottom Field First
(BOTTOM_FIELD) produce interlaced output with the entire output having
the same field polarity (top or bottom first). * Follow, Default Top
(FOLLOW_TOP_FIELD) and Follow, Default Bottom (FOLLOW_BOTTOM_FIELD) use
the same field polarity as the source. Therefore, behavior depends on
the input scan type, as follows. - If the source is interlaced, the
output will be interlaced with the same polarity as the source (it will
follow the source). The output could therefore be a mix of "top field
first" and "bottom field first". - If the source is progressive, the
output will be interlaced with "top field first" or "bottom field
first" polarity, depending on which of the Follow options you chose.


=head2 MaxBitrate => Int

  Maximum bitrate in bits/second. For example, enter five megabits per
second as 5000000. Required when Rate control mode is QVBR.


=head2 MinIInterval => Int

  Enforces separation between repeated (cadence) I-frames and I-frames
inserted by Scene Change Detection. If a scene change I-frame is within
I-interval frames of a cadence I-frame, the GOP is shrunk and/or
stretched to the scene change I-frame. GOP stretch requires enabling
lookahead as well as setting I-interval. The normal cadence resumes for
the next GOP. This setting is only used when Scene Change Detect is
enabled. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1


=head2 NumberBFramesBetweenReferenceFrames => Int

  Number of B-frames between reference frames.


=head2 NumberReferenceFrames => Int

  Number of reference frames to use. The encoder may use more than
requested if using B-frames and/or interlaced encoding.


=head2 ParControl => Str

  Using the API, enable ParFollowSource if you want the service to use
the pixel aspect ratio from the input. Using the console, do this by
choosing Follow source for Pixel aspect ratio.


=head2 ParDenominator => Int

  Pixel Aspect Ratio denominator.


=head2 ParNumerator => Int

  Pixel Aspect Ratio numerator.


=head2 QualityTuningLevel => Str

  Use Quality tuning level (H264QualityTuningLevel) to specifiy whether
to use fast single-pass, high-quality singlepass, or high-quality
multipass video encoding.


=head2 QvbrSettings => L<Paws::MediaConvert::H264QvbrSettings>

  Settings for quality-defined variable bitrate encoding with the H.264
codec. Required when you set Rate control mode to QVBR. Not valid when
you set Rate control mode to a value other than QVBR, or when you don't
define Rate control mode.


=head2 RateControlMode => Str

  Use this setting to specify whether this output has a variable bitrate
(VBR), constant bitrate (CBR) or quality-defined variable bitrate
(QVBR).


=head2 RepeatPps => Str

  Places a PPS header on each encoded picture, even if repeated.


=head2 SceneChangeDetect => Str

  Enable this setting to insert I-frames at scene changes that the
service automatically detects. This improves video quality and is
enabled by default. If this output uses QVBR, choose Transition
detection (TRANSITION_DETECTION) for further video quality improvement.
For more information about QVBR, see
https://docs.aws.amazon.com/console/mediaconvert/cbr-vbr-qvbr.


=head2 Slices => Int

  Number of slices per picture. Must be less than or equal to the number
of macroblock rows for progressive pictures, and less than or equal to
half the number of macroblock rows for interlaced pictures.


=head2 SlowPal => Str

  Enables Slow PAL rate conversion. 23.976fps and 24fps input is
relabeled as 25fps, and audio is sped up correspondingly.


=head2 Softness => Int

  Softness. Selects quantizer matrix, larger values reduce high-frequency
content in the encoded image.


=head2 SpatialAdaptiveQuantization => Str

  Adjust quantization within each frame based on spatial variation of
content complexity.


=head2 Syntax => Str

  Produces a bitstream compliant with SMPTE RP-2027.


=head2 Telecine => Str

  This field applies only if the Streams E<gt> Advanced E<gt> Framerate
(framerate) field is set to 29.970. This field works with the Streams
E<gt> Advanced E<gt> Preprocessors E<gt> Deinterlacer field
(deinterlace_mode) and the Streams E<gt> Advanced E<gt> Interlaced Mode
field (interlace_mode) to identify the scan type for the output:
Progressive, Interlaced, Hard Telecine or Soft Telecine. - Hard:
produces 29.97i output from 23.976 input. - Soft: produces 23.976; the
player converts this output to 29.97i.


=head2 TemporalAdaptiveQuantization => Str

  Adjust quantization within each frame based on temporal variation of
content complexity.


=head2 UnregisteredSeiTimecode => Str

  Inserts timecode for each frame as 4 bytes of an unregistered SEI
message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

