package Paws::Rekognition::ProjectVersionDescription;
  use Moose;
  has BillableTrainingTimeInSeconds => (is => 'ro', isa => 'Int');
  has CreationTimestamp => (is => 'ro', isa => 'Str');
  has EvaluationResult => (is => 'ro', isa => 'Paws::Rekognition::EvaluationResult');
  has MinInferenceUnits => (is => 'ro', isa => 'Int');
  has OutputConfig => (is => 'ro', isa => 'Paws::Rekognition::OutputConfig');
  has ProjectVersionArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has TestingDataResult => (is => 'ro', isa => 'Paws::Rekognition::TestingDataResult');
  has TrainingDataResult => (is => 'ro', isa => 'Paws::Rekognition::TrainingDataResult');
  has TrainingEndTimestamp => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::ProjectVersionDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::ProjectVersionDescription object:

  $service_obj->Method(Att1 => { BillableTrainingTimeInSeconds => $value, ..., TrainingEndTimestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::ProjectVersionDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->BillableTrainingTimeInSeconds

=head1 DESCRIPTION

The description of a version of a model.

=head1 ATTRIBUTES


=head2 BillableTrainingTimeInSeconds => Int

  The duration, in seconds, that the model version has been billed for
training. This value is only returned if the model version has been
successfully trained.


=head2 CreationTimestamp => Str

  The Unix datetime for the date and time that training started.


=head2 EvaluationResult => L<Paws::Rekognition::EvaluationResult>

  The training results. C<EvaluationResult> is only returned if training
is successful.


=head2 MinInferenceUnits => Int

  The minimum number of inference units used by the model. For more
information, see StartProjectVersion.


=head2 OutputConfig => L<Paws::Rekognition::OutputConfig>

  The location where training results are saved.


=head2 ProjectVersionArn => Str

  The Amazon Resource Name (ARN) of the model version.


=head2 Status => Str

  The current status of the model version.


=head2 StatusMessage => Str

  A descriptive message for an error or warning that occurred.


=head2 TestingDataResult => L<Paws::Rekognition::TestingDataResult>

  The manifest file that represents the testing results.


=head2 TrainingDataResult => L<Paws::Rekognition::TrainingDataResult>

  The manifest file that represents the training results.


=head2 TrainingEndTimestamp => Str

  The Unix date and time that training of the model ended.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

