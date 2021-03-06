package Paws::AppSync::ApiCache;
  use Moose;
  has ApiCachingBehavior => (is => 'ro', isa => 'Str', request_name => 'apiCachingBehavior', traits => ['NameInRequest']);
  has AtRestEncryptionEnabled => (is => 'ro', isa => 'Bool', request_name => 'atRestEncryptionEnabled', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has TransitEncryptionEnabled => (is => 'ro', isa => 'Bool', request_name => 'transitEncryptionEnabled', traits => ['NameInRequest']);
  has Ttl => (is => 'ro', isa => 'Int', request_name => 'ttl', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ApiCache

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::ApiCache object:

  $service_obj->Method(Att1 => { ApiCachingBehavior => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::ApiCache object:

  $result = $service_obj->Method(...);
  $result->Att1->ApiCachingBehavior

=head1 DESCRIPTION

The C<ApiCache> object.

=head1 ATTRIBUTES


=head2 ApiCachingBehavior => Str

  Caching behavior.

=over

=item *

B<FULL_REQUEST_CACHING>: All requests are fully cached.

=item *

B<PER_RESOLVER_CACHING>: Individual resovlers that you specify are
cached.

=back



=head2 AtRestEncryptionEnabled => Bool

  At rest encryption flag for cache. This setting cannot be updated after
creation.


=head2 Status => Str

  The cache instance status.

=over

=item *

B<AVAILABLE>: The instance is available for use.

=item *

B<CREATING>: The instance is currently creating.

=item *

B<DELETING>: The instance is currently deleting.

=item *

B<MODIFYING>: The instance is currently modifying.

=item *

B<FAILED>: The instance has failed creation.

=back



=head2 TransitEncryptionEnabled => Bool

  Transit encryption flag when connecting to cache. This setting cannot
be updated after creation.


=head2 Ttl => Int

  TTL in seconds for cache entries.

Valid values are between 1 and 3600 seconds.


=head2 Type => Str

  The cache instance type.

=over

=item *

B<T2_SMALL>: A t2.small instance type.

=item *

B<T2_MEDIUM>: A t2.medium instance type.

=item *

B<R4_LARGE>: A r4.large instance type.

=item *

B<R4_XLARGE>: A r4.xlarge instance type.

=item *

B<R4_2XLARGE>: A r4.2xlarge instance type.

=item *

B<R4_4XLARGE>: A r4.4xlarge instance type.

=item *

B<R4_8XLARGE>: A r4.8xlarge instance type.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

