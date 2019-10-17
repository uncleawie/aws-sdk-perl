
package Paws::IAM::ListAccessKeysResponse;
  use Moo;
  use JSON::MaybeXS;
  use URL::Encode;
  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::IAM::Types qw/IAM_AccessKeyMetadata/;
  has AccessKeyMetadata => (is => 'ro', isa => ArrayRef[IAM_AccessKeyMetadata], required => 1);
  has IsTruncated => (is => 'ro', isa => Bool);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IsTruncated' => {
                                  'type' => 'Bool'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AccessKeyMetadata' => {
                                        'class' => 'Paws::IAM::AccessKeyMetadata',
                                        'type' => 'ArrayRef[IAM_AccessKeyMetadata]'
                                      },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'IsRequired' => {
                    'AccessKeyMetadata' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ListAccessKeysResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessKeyMetadata => ArrayRef[IAM_AccessKeyMetadata]

A list of objects containing metadata about the access keys.


=head2 IsTruncated => Bool

A flag that indicates whether there are more items to return. If your
results were truncated, you can make a subsequent pagination request
using the C<Marker> request parameter to retrieve more items. Note that
IAM might return fewer than the C<MaxItems> number of results even when
there are more results available. We recommend that you check
C<IsTruncated> after every call to ensure that you receive all your
results.


=head2 Marker => Str

When C<IsTruncated> is C<true>, this element is present and contains
the value to use for the C<Marker> parameter in a subsequent pagination
request.


=head2 _request_id => Str


=cut

