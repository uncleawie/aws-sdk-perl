
package Paws::DynamoDB::UntagResource;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::DynamoDB::Types qw//;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TagKeys => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UntagResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

  sub params_map {
    my $params1 = {
             'types' => {
                          'TagKeys' => {
                                         'type' => 'ArrayRef[Str|Undef]'
                                       },
                          'ResourceArn' => {
                                             'type' => 'Str'
                                           }
                        }
           };

    return $params1;
  }
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UntagResource - Arguments for method UntagResource on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    $dynamodb->UntagResource(
      ResourceArn => 'MyResourceArnString',
      TagKeys     => [
        'MyTagKeyString', ...    # min: 1, max: 128
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The DynamoDB resource that the tags will be removed from. This value is
an Amazon Resource Name (ARN).



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

A list of tag keys. Existing tags of the resource whose keys are
members of this list will be removed from the DynamoDB resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

