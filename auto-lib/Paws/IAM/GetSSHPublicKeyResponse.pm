
package Paws::IAM::GetSSHPublicKeyResponse;
  use Moo;
  use JSON::MaybeXS;
  use URL::Encode;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw/IAM_SSHPublicKey/;
  has SSHPublicKey => (is => 'ro', isa => IAM_SSHPublicKey);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SSHPublicKey' => {
                                   'class' => 'Paws::IAM::SSHPublicKey',
                                   'type' => 'IAM_SSHPublicKey'
                                 },
               '_request_id' => {
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

Paws::IAM::GetSSHPublicKeyResponse

=head1 ATTRIBUTES


=head2 SSHPublicKey => IAM_SSHPublicKey

A structure containing details about the SSH public key.


=head2 _request_id => Str


=cut

