package Paws::ApiGatewayV2::CreateApiInput;
  use Moose;
  has ApiKeySelectionExpression => (is => 'ro', isa => 'Str', request_name => 'apiKeySelectionExpression', traits => ['NameInRequest']);
  has CorsConfiguration => (is => 'ro', isa => 'Paws::ApiGatewayV2::Cors', request_name => 'corsConfiguration', traits => ['NameInRequest']);
  has CredentialsArn => (is => 'ro', isa => 'Str', request_name => 'credentialsArn', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has DisableSchemaValidation => (is => 'ro', isa => 'Bool', request_name => 'disableSchemaValidation', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has ProtocolType => (is => 'ro', isa => 'Str', request_name => 'protocolType', traits => ['NameInRequest'], required => 1);
  has RouteKey => (is => 'ro', isa => 'Str', request_name => 'routeKey', traits => ['NameInRequest']);
  has RouteSelectionExpression => (is => 'ro', isa => 'Str', request_name => 'routeSelectionExpression', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::ApiGatewayV2::Tags', request_name => 'tags', traits => ['NameInRequest']);
  has Target => (is => 'ro', isa => 'Str', request_name => 'target', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Str', request_name => 'version', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::CreateApiInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::CreateApiInput object:

  $service_obj->Method(Att1 => { ApiKeySelectionExpression => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::CreateApiInput object:

  $result = $service_obj->Method(...);
  $result->Att1->ApiKeySelectionExpression

=head1 DESCRIPTION

Represents the input parameters for a CreateApi request.

=head1 ATTRIBUTES


=head2 ApiKeySelectionExpression => Str

  An API key selection expression. Supported only for WebSocket APIs. See
API Key Selection Expressions
(https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api-selection-expressions.html#apigateway-websocket-api-apikey-selection-expressions).


=head2 CorsConfiguration => L<Paws::ApiGatewayV2::Cors>

  A CORS configuration. Supported only for HTTP APIs. See Configuring
CORS
(https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-cors.html)
for more information.


=head2 CredentialsArn => Str

  This property is part of quick create. It specifies the credentials
required for the integration, if any. For a Lambda integration, three
options are available. To specify an IAM Role for API Gateway to
assume, use the role's Amazon Resource Name (ARN). To require that the
caller's identity be passed through from the request, specify
arn:aws:iam::*:user/*. To use resource-based permissions on supported
AWS services, specify null. Currently, this property is not used for
HTTP integrations. Supported only for HTTP APIs.


=head2 Description => Str

  The description of the API.


=head2 DisableSchemaValidation => Bool

  Avoid validating models when creating a deployment. Supported only for
WebSocket APIs.


=head2 B<REQUIRED> Name => Str

  The name of the API.


=head2 B<REQUIRED> ProtocolType => Str

  The API protocol.


=head2 RouteKey => Str

  This property is part of quick create. If you don't specify a routeKey,
a default route of $default is created. The $default route acts as a
catch-all for any request made to your API, for a particular stage. The
$default route key can't be modified. You can add routes after creating
the API, and you can update the route keys of additional routes.
Supported only for HTTP APIs.


=head2 RouteSelectionExpression => Str

  The route selection expression for the API. For HTTP APIs, the
routeSelectionExpression must be ${request.method} ${request.path}. If
not provided, this will be the default for HTTP APIs. This property is
required for WebSocket APIs.


=head2 Tags => L<Paws::ApiGatewayV2::Tags>

  The collection of tags. Each tag element is associated with a given
resource.


=head2 Target => Str

  This property is part of quick create. Quick create produces an API
with an integration, a default catch-all route, and a default stage
which is configured to automatically deploy changes. For HTTP
integrations, specify a fully qualified URL. For Lambda integrations,
specify a function ARN. The type of the integration will be HTTP_PROXY
or AWS_PROXY, respectively. Supported only for HTTP APIs.


=head2 Version => Str

  A version identifier for the API.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
