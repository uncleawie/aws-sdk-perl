
package Paws::PinpointSMSVoice::UpdateConfigurationSetEventDestination;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ConfigurationSetName', required => 1);
  has EventDestination => (is => 'ro', isa => 'Paws::PinpointSMSVoice::EventDestinationDefinition');
  has EventDestinationName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EventDestinationName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConfigurationSetEventDestination');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoice::UpdateConfigurationSetEventDestinationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoice::UpdateConfigurationSetEventDestination - Arguments for method UpdateConfigurationSetEventDestination on L<Paws::PinpointSMSVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConfigurationSetEventDestination on the
L<Amazon Pinpoint SMS and Voice Service|Paws::PinpointSMSVoice> service. Use the attributes of this class
as arguments to method UpdateConfigurationSetEventDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConfigurationSetEventDestination.

=head1 SYNOPSIS

    my $sms-voice.pinpoint = Paws->service('PinpointSMSVoice');
    my $UpdateConfigurationSetEventDestinationResponse =
      $sms -voice . pinpoint->UpdateConfigurationSetEventDestination(
      ConfigurationSetName => 'My__string',
      EventDestinationName => 'My__string',
      EventDestination     => {
        CloudWatchLogsDestination => {
          IamRoleArn  => 'MyString',    # OPTIONAL
          LogGroupArn => 'MyString',    # OPTIONAL
        },    # OPTIONAL
        Enabled                    => 1,    # OPTIONAL
        KinesisFirehoseDestination => {
          DeliveryStreamArn => 'MyString',    # OPTIONAL
          IamRoleArn        => 'MyString',    # OPTIONAL
        },    # OPTIONAL
        MatchingEventTypes => [
          'INITIATED_CALL',
          ... # values: INITIATED_CALL, RINGING, ANSWERED, COMPLETED_CALL, BUSY, FAILED, NO_ANSWER
        ],    # OPTIONAL
        SnsDestination => {
          TopicArn => 'MyString',    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice.pinpoint/UpdateConfigurationSetEventDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

ConfigurationSetName



=head2 EventDestination => L<Paws::PinpointSMSVoice::EventDestinationDefinition>





=head2 B<REQUIRED> EventDestinationName => Str

EventDestinationName




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConfigurationSetEventDestination in L<Paws::PinpointSMSVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

