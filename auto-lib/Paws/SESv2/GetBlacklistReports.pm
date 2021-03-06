
package Paws::SESv2::GetBlacklistReports;
  use Moose;
  has BlacklistItemNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'BlacklistItemNames', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBlacklistReports');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/deliverability-dashboard/blacklist-report');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::GetBlacklistReportsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetBlacklistReports - Arguments for method GetBlacklistReports on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBlacklistReports on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method GetBlacklistReports.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBlacklistReports.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $GetBlacklistReportsResponse = $email->GetBlacklistReports(
      BlacklistItemNames => [ 'MyBlacklistItemName', ... ],

    );

    # Results:
    my $BlacklistReport = $GetBlacklistReportsResponse->BlacklistReport;

    # Returns a L<Paws::SESv2::GetBlacklistReportsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/GetBlacklistReports>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlacklistItemNames => ArrayRef[Str|Undef]

A list of IP addresses that you want to retrieve blacklist information
about. You can only specify the dedicated IP addresses that you use to
send email using Amazon SES or Amazon Pinpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBlacklistReports in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

