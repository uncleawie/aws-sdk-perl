package Paws::SageMaker::EndpointInput;
  use Moose;
  has EndpointName => (is => 'ro', isa => 'Str', required => 1);
  has LocalPath => (is => 'ro', isa => 'Str', required => 1);
  has S3DataDistributionType => (is => 'ro', isa => 'Str');
  has S3InputMode => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::EndpointInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::EndpointInput object:

  $service_obj->Method(Att1 => { EndpointName => $value, ..., S3InputMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::EndpointInput object:

  $result = $service_obj->Method(...);
  $result->Att1->EndpointName

=head1 DESCRIPTION

Input object for the endpoint

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointName => Str

  An endpoint in customer's account which has enabled
C<DataCaptureConfig> enabled.


=head2 B<REQUIRED> LocalPath => Str

  Path to the filesystem where the endpoint data is available to the
container.


=head2 S3DataDistributionType => Str

  Whether input data distributed in Amazon S3 is fully replicated or
sharded by an S3 key. Defauts to C<FullyReplicated>


=head2 S3InputMode => Str

  Whether the C<Pipe> or C<File> is used as the input mode for
transfering data for the monitoring job. C<Pipe> mode is recommended
for large datasets. C<File> mode is useful for small files that fit in
memory. Defaults to C<File>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

