
package Paws::IAM::ListAccessKeys;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IAM::Types qw//;
  has Marker => (is => 'ro', isa => Str, predicate => 1);
  has MaxItems => (is => 'ro', isa => Int, predicate => 1);
  has UserName => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListAccessKeys');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IAM::ListAccessKeysResponse');
  class_has _result_key => (isa => Str, is => 'ro', default => 'ListAccessKeysResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UserName' => {
                               'type' => 'Str'
                             },
               'MaxItems' => {
                               'type' => 'Int'
                             },
               'Marker' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ListAccessKeys - Arguments for method ListAccessKeys on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAccessKeys on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method ListAccessKeys.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAccessKeys.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    # To list the access key IDs for an IAM user
    # The following command lists the access keys IDs for the IAM user named
    # Alice.
    my $ListAccessKeysResponse = $iam->ListAccessKeys( 'UserName' => 'Alice' );

    # Results:
    my $AccessKeyMetadata = $ListAccessKeysResponse->AccessKeyMetadata;

    # Returns a L<Paws::IAM::ListAccessKeysResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/ListAccessKeys>

=head1 ATTRIBUTES


=head2 Marker => Str

Use this parameter only when paginating results and only after you
receive a response indicating that the results are truncated. Set it to
the value of the C<Marker> element in the response that you received to
indicate where the next call should start.



=head2 MaxItems => Int

Use this only when paginating results to indicate the maximum number of
items you want in the response. If additional items exist beyond the
maximum you specify, the C<IsTruncated> response element is C<true>.

If you do not include this parameter, the number of items defaults to
100. Note that IAM might return fewer results, even when there are more
results available. In that case, the C<IsTruncated> response element
returns C<true>, and C<Marker> contains a value to include in the
subsequent call that tells the service where to continue from.



=head2 UserName => Str

The name of the user.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAccessKeys in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

