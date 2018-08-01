package Paws::CognitoIdp::IdentityProviderType;
  use Moose;
  has AttributeMapping => (is => 'ro', isa => 'Paws::CognitoIdp::AttributeMappingType');
  has CreationDate => (is => 'ro', isa => 'Str');
  has IdpIdentifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has ProviderDetails => (is => 'ro', isa => 'Paws::CognitoIdp::ProviderDetailsType');
  has ProviderName => (is => 'ro', isa => 'Str');
  has ProviderType => (is => 'ro', isa => 'Str');
  has UserPoolId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::IdentityProviderType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::IdentityProviderType object:

  $service_obj->Method(Att1 => { AttributeMapping => $value, ..., UserPoolId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::IdentityProviderType object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeMapping

=head1 DESCRIPTION

A container for information about an identity provider.

=head1 ATTRIBUTES


=head2 AttributeMapping => L<Paws::CognitoIdp::AttributeMappingType>

  A mapping of identity provider attributes to standard and custom user
pool attributes.


=head2 CreationDate => Str

  The date the identity provider was created.


=head2 IdpIdentifiers => ArrayRef[Str|Undef]

  A list of identity provider identifiers.


=head2 LastModifiedDate => Str

  The date the identity provider was last modified.


=head2 ProviderDetails => L<Paws::CognitoIdp::ProviderDetailsType>

  The identity provider details. The following list describes the
provider detail keys for each identity provider type.

=over

=item *

For Google, Facebook and Login with Amazon:

=over

=item *

client_id

=item *

client_secret

=item *

authorize_scopes

=back

=item *

For Sign in with Apple:

=over

=item *

client_id

=item *

team_id

=item *

key_id

=item *

private_key

=item *

authorize_scopes

=back

=item *

For OIDC providers:

=over

=item *

client_id

=item *

client_secret

=item *

attributes_request_method

=item *

oidc_issuer

=item *

authorize_scopes

=item *

authorize_url I<if not available from discovery URL specified by
oidc_issuer key>

=item *

token_url I<if not available from discovery URL specified by
oidc_issuer key>

=item *

attributes_url I<if not available from discovery URL specified by
oidc_issuer key>

=item *

jwks_uri I<if not available from discovery URL specified by oidc_issuer
key>

=item *

authorize_scopes

=back

=item *

For SAML providers:

=over

=item *

MetadataFile OR MetadataURL

=item *

IDPSignOut I<optional>

=back

=back



=head2 ProviderName => Str

  The identity provider name.


=head2 ProviderType => Str

  The identity provider type.


=head2 UserPoolId => Str

  The user pool ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

