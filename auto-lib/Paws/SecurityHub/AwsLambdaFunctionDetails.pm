package Paws::SecurityHub::AwsLambdaFunctionDetails;
  use Moose;
  has Code => (is => 'ro', isa => 'Paws::SecurityHub::AwsLambdaFunctionCode');
  has CodeSha256 => (is => 'ro', isa => 'Str');
  has DeadLetterConfig => (is => 'ro', isa => 'Paws::SecurityHub::AwsLambdaFunctionDeadLetterConfig');
  has Environment => (is => 'ro', isa => 'Paws::SecurityHub::AwsLambdaFunctionEnvironment');
  has FunctionName => (is => 'ro', isa => 'Str');
  has Handler => (is => 'ro', isa => 'Str');
  has KmsKeyArn => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has Layers => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsLambdaFunctionLayer]');
  has MasterArn => (is => 'ro', isa => 'Str');
  has MemorySize => (is => 'ro', isa => 'Int');
  has RevisionId => (is => 'ro', isa => 'Str');
  has Role => (is => 'ro', isa => 'Str');
  has Runtime => (is => 'ro', isa => 'Str');
  has Timeout => (is => 'ro', isa => 'Int');
  has TracingConfig => (is => 'ro', isa => 'Paws::SecurityHub::AwsLambdaFunctionTracingConfig');
  has Version => (is => 'ro', isa => 'Str');
  has VpcConfig => (is => 'ro', isa => 'Paws::SecurityHub::AwsLambdaFunctionVpcConfig');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsLambdaFunctionDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsLambdaFunctionDetails object:

  $service_obj->Method(Att1 => { Code => $value, ..., VpcConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsLambdaFunctionDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

Details about a function's configuration.

=head1 ATTRIBUTES


=head2 Code => L<Paws::SecurityHub::AwsLambdaFunctionCode>

  An C<AwsLambdaFunctionCode> object.


=head2 CodeSha256 => Str

  The SHA256 hash of the function's deployment package.


=head2 DeadLetterConfig => L<Paws::SecurityHub::AwsLambdaFunctionDeadLetterConfig>

  The function's dead letter queue.


=head2 Environment => L<Paws::SecurityHub::AwsLambdaFunctionEnvironment>

  The function's environment variables.


=head2 FunctionName => Str

  The name of the function.


=head2 Handler => Str

  The function that Lambda calls to begin executing your function.


=head2 KmsKeyArn => Str

  The KMS key that's used to encrypt the function's environment
variables. This key is only returned if you've configured a customer
managed CMK.


=head2 LastModified => Str

  The date and time that the function was last updated, in ISO-8601
format (YYYY-MM-DDThh:mm:ss.sTZD).


=head2 Layers => ArrayRef[L<Paws::SecurityHub::AwsLambdaFunctionLayer>]

  The function's layers.


=head2 MasterArn => Str

  For Lambda@Edge functions, the ARN of the master function.


=head2 MemorySize => Int

  The memory that's allocated to the function.


=head2 RevisionId => Str

  The latest updated revision of the function or alias.


=head2 Role => Str

  The function's execution role.


=head2 Runtime => Str

  The runtime environment for the Lambda function.


=head2 Timeout => Int

  The amount of time that Lambda allows a function to run before stopping
it.


=head2 TracingConfig => L<Paws::SecurityHub::AwsLambdaFunctionTracingConfig>

  The function's AWS X-Ray tracing configuration.


=head2 Version => Str

  The version of the Lambda function.


=head2 VpcConfig => L<Paws::SecurityHub::AwsLambdaFunctionVpcConfig>

  The function's networking configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

