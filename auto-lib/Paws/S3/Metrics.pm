package Paws::S3::Metrics;
  use Moose;
  has EventThreshold => (is => 'ro', isa => 'Paws::S3::ReplicationTimeValue', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::Metrics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::Metrics object:

  $service_obj->Method(Att1 => { EventThreshold => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::Metrics object:

  $result = $service_obj->Method(...);
  $result->Att1->EventThreshold

=head1 DESCRIPTION

A container specifying replication metrics-related settings enabling
metrics and Amazon S3 events for S3 Replication Time Control (S3 RTC).
Must be specified together with a C<ReplicationTime> block.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventThreshold => L<Paws::S3::ReplicationTimeValue>

  A container specifying the time threshold for emitting the
C<s3:Replication:OperationMissedThreshold> event.


=head2 B<REQUIRED> Status => Str

  Specifies whether the replication metrics are enabled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

