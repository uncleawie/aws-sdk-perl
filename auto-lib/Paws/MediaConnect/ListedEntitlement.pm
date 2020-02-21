package Paws::MediaConnect::ListedEntitlement;
  use Moose;
  has DataTransferSubscriberFeePercent => (is => 'ro', isa => 'Int', request_name => 'dataTransferSubscriberFeePercent', traits => ['NameInRequest']);
  has EntitlementArn => (is => 'ro', isa => 'Str', request_name => 'entitlementArn', traits => ['NameInRequest'], required => 1);
  has EntitlementName => (is => 'ro', isa => 'Str', request_name => 'entitlementName', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::ListedEntitlement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConnect::ListedEntitlement object:

  $service_obj->Method(Att1 => { DataTransferSubscriberFeePercent => $value, ..., EntitlementName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConnect::ListedEntitlement object:

  $result = $service_obj->Method(...);
  $result->Att1->DataTransferSubscriberFeePercent

=head1 DESCRIPTION

An entitlement that has been granted to you from other AWS accounts.

=head1 ATTRIBUTES


=head2 DataTransferSubscriberFeePercent => Int

  Percentage from 0-100 of the data transfer cost to be billed to the
subscriber.


=head2 B<REQUIRED> EntitlementArn => Str

  The ARN of the entitlement.


=head2 B<REQUIRED> EntitlementName => Str

  The name of the entitlement.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
