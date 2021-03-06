package Paws::ECR::ImageScanFindingsSummary;
  use Moose;
  has FindingSeverityCounts => (is => 'ro', isa => 'Paws::ECR::FindingSeverityCounts', request_name => 'findingSeverityCounts', traits => ['NameInRequest']);
  has ImageScanCompletedAt => (is => 'ro', isa => 'Str', request_name => 'imageScanCompletedAt', traits => ['NameInRequest']);
  has VulnerabilitySourceUpdatedAt => (is => 'ro', isa => 'Str', request_name => 'vulnerabilitySourceUpdatedAt', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::ImageScanFindingsSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECR::ImageScanFindingsSummary object:

  $service_obj->Method(Att1 => { FindingSeverityCounts => $value, ..., VulnerabilitySourceUpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECR::ImageScanFindingsSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->FindingSeverityCounts

=head1 DESCRIPTION

A summary of the last completed image scan.

=head1 ATTRIBUTES


=head2 FindingSeverityCounts => L<Paws::ECR::FindingSeverityCounts>

  The image vulnerability counts, sorted by severity.


=head2 ImageScanCompletedAt => Str

  The time of the last completed image scan.


=head2 VulnerabilitySourceUpdatedAt => Str

  The time when the vulnerability data was last scanned.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

