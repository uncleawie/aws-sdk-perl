package Paws::Quicksight::DataSource;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has DataSourceId => (is => 'ro', isa => 'Str');
  has DataSourceParameters => (is => 'ro', isa => 'Paws::Quicksight::DataSourceParameters');
  has ErrorInfo => (is => 'ro', isa => 'Paws::Quicksight::DataSourceErrorInfo');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has SslProperties => (is => 'ro', isa => 'Paws::Quicksight::SslProperties');
  has Status => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has VpcConnectionProperties => (is => 'ro', isa => 'Paws::Quicksight::VpcConnectionProperties');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DataSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::DataSource object:

  $service_obj->Method(Att1 => { Arn => $value, ..., VpcConnectionProperties => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::DataSource object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

The structure of a data source.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the data source.


=head2 CreatedTime => Str

  The time that this data source was created.


=head2 DataSourceId => Str

  The ID of the data source. This ID is unique per AWS Region for each
AWS account.


=head2 DataSourceParameters => L<Paws::Quicksight::DataSourceParameters>

  The parameters that Amazon QuickSight uses to connect to your
underlying source. This is a variant type structure. For this structure
to be valid, only one of the attributes can be non-null.


=head2 ErrorInfo => L<Paws::Quicksight::DataSourceErrorInfo>

  Error information from the last update or the creation of the data
source.


=head2 LastUpdatedTime => Str

  The last time that this data source was updated.


=head2 Name => Str

  A display name for the data source.


=head2 SslProperties => L<Paws::Quicksight::SslProperties>

  Secure Socket Layer (SSL) properties that apply when QuickSight
connects to your underlying source.


=head2 Status => Str

  The HTTP status of the request.


=head2 Type => Str

  The type of the data source. This type indicates which database engine
the data source connects to.


=head2 VpcConnectionProperties => L<Paws::Quicksight::VpcConnectionProperties>

  The VPC connection information. You need to use this parameter only
when you want QuickSight to use a VPC connection when connecting to
your underlying source.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
