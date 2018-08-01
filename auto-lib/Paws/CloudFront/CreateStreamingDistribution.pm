
package Paws::CloudFront::CreateStreamingDistribution;
  use Moose;
  has StreamingDistributionConfig => (is => 'ro', isa => 'Paws::CloudFront::StreamingDistributionConfig', traits => ['ParamInBody'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStreamingDistribution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-10-30/streaming-distribution');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateStreamingDistributionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateStreamingDistribution - Arguments for method CreateStreamingDistribution on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStreamingDistribution2017_10_30 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method CreateStreamingDistribution2017_10_30.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStreamingDistribution2017_10_30.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $CreateStreamingDistributionResult =
      $cloudfront->CreateStreamingDistribution(
      StreamingDistributionConfig => {
        CallerReference => 'Mystring',
        S3Origin        => {
          OriginAccessIdentity => 'Mystring',
          DomainName           => 'Mystring',

        },
        TrustedSigners => {
          Quantity => 1,
          Enabled  => 1,
          Items    => [ 'Mystring', ... ],    # OPTIONAL
        },
        Enabled => 1,
        Comment => 'Mystring',
        Aliases => {
          Quantity => 1,
          Items    => [ 'Mystring', ... ],    # OPTIONAL
        },    # OPTIONAL
        Logging => {
          Bucket  => 'Mystring',
          Enabled => 1,
          Prefix  => 'Mystring',

        },    # OPTIONAL
        PriceClass => 'PriceClass_100'
        ,     # values: PriceClass_100, PriceClass_200, PriceClass_All; OPTIONAL
      },

      );

    # Results:
    my $ETag = $CreateStreamingDistributionResult->ETag;
    my $StreamingDistribution =
      $CreateStreamingDistributionResult->StreamingDistribution;
    my $Location = $CreateStreamingDistributionResult->Location;

    # Returns a L<Paws::CloudFront::CreateStreamingDistributionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/CreateStreamingDistribution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StreamingDistributionConfig => L<Paws::CloudFront::StreamingDistributionConfig>

The streaming distribution's configuration information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStreamingDistribution2017_10_30 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

