
package Paws::ImageBuilder::UpdateImagePipeline;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DistributionConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'distributionConfigurationArn');
  has ImagePipelineArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imagePipelineArn', required => 1);
  has ImageRecipeArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageRecipeArn', required => 1);
  has ImageTestsConfiguration => (is => 'ro', isa => 'Paws::ImageBuilder::ImageTestsConfiguration', traits => ['NameInRequest'], request_name => 'imageTestsConfiguration');
  has InfrastructureConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'infrastructureConfigurationArn', required => 1);
  has Schedule => (is => 'ro', isa => 'Paws::ImageBuilder::Schedule', traits => ['NameInRequest'], request_name => 'schedule');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateImagePipeline');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateImagePipeline');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::UpdateImagePipelineResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::UpdateImagePipeline - Arguments for method UpdateImagePipeline on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateImagePipeline on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method UpdateImagePipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateImagePipeline.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $UpdateImagePipelineResponse = $imagebuilder->UpdateImagePipeline(
      ClientToken                    => 'MyClientToken',
      ImagePipelineArn               => 'MyImagePipelineArn',
      ImageRecipeArn                 => 'MyImageRecipeArn',
      InfrastructureConfigurationArn => 'MyInfrastructureConfigurationArn',
      Description => 'MyNonEmptyString',    # OPTIONAL
      DistributionConfigurationArn =>
        'MyDistributionConfigurationArn',    # OPTIONAL
      ImageTestsConfiguration => {
        ImageTestsEnabled => 1,              # OPTIONAL
        TimeoutMinutes    => 1,              # min: 60, max: 1440; OPTIONAL
      },    # OPTIONAL
      Schedule => {
        PipelineExecutionStartCondition => 'EXPRESSION_MATCH_ONLY'
        , # values: EXPRESSION_MATCH_ONLY, EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE; OPTIONAL
        ScheduleExpression => 'MyNonEmptyString',    # min: 1, max: 1024
      },    # OPTIONAL
      Status => 'DISABLED',    # OPTIONAL
    );

    # Results:
    my $ClientToken      = $UpdateImagePipelineResponse->ClientToken;
    my $ImagePipelineArn = $UpdateImagePipelineResponse->ImagePipelineArn;
    my $RequestId        = $UpdateImagePipelineResponse->RequestId;

    # Returns a L<Paws::ImageBuilder::UpdateImagePipelineResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/UpdateImagePipeline>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

The idempotency token used to make this request idempotent.



=head2 Description => Str

The description of the image pipeline.



=head2 DistributionConfigurationArn => Str

The Amazon Resource Name (ARN) of the distribution configuration that
will be used to configure and distribute images updated by this image
pipeline.



=head2 B<REQUIRED> ImagePipelineArn => Str

The Amazon Resource Name (ARN) of the image pipeline that you want to
update.



=head2 B<REQUIRED> ImageRecipeArn => Str

The Amazon Resource Name (ARN) of the image recipe that will be used to
configure images updated by this image pipeline.



=head2 ImageTestsConfiguration => L<Paws::ImageBuilder::ImageTestsConfiguration>

The image test configuration of the image pipeline.



=head2 B<REQUIRED> InfrastructureConfigurationArn => Str

The Amazon Resource Name (ARN) of the infrastructure configuration that
will be used to build images updated by this image pipeline.



=head2 Schedule => L<Paws::ImageBuilder::Schedule>

The schedule of the image pipeline.



=head2 Status => Str

The status of the image pipeline.

Valid values are: C<"DISABLED">, C<"ENABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateImagePipeline in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

