
package Paws::CodePipeline::CreatePipelineOutput;
  use Moose;
  has Pipeline => (is => 'ro', isa => 'Paws::CodePipeline::PipelineDeclaration', traits => ['NameInRequest'], request_name => 'pipeline' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::CreatePipelineOutput

=head1 ATTRIBUTES


=head2 Pipeline => L<Paws::CodePipeline::PipelineDeclaration>

Represents the structure of actions and stages to be performed in the
pipeline.


=head2 Tags => ArrayRef[L<Paws::CodePipeline::Tag>]

Specifies the tags applied to the pipeline.


=head2 _request_id => Str


=cut

1;