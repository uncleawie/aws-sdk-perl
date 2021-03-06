package Paws::Lightsail::AutoSnapshotDetails;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has Date => (is => 'ro', isa => 'Str', request_name => 'date', traits => ['NameInRequest']);
  has FromAttachedDisks => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::AttachedDisk]', request_name => 'fromAttachedDisks', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::AutoSnapshotDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::AutoSnapshotDetails object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::AutoSnapshotDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

Describes an automatic snapshot.

=head1 ATTRIBUTES


=head2 CreatedAt => Str

  The timestamp when the automatic snapshot was created.


=head2 Date => Str

  The date of the automatic snapshot in C<YYYY-MM-DD> format.


=head2 FromAttachedDisks => ArrayRef[L<Paws::Lightsail::AttachedDisk>]

  An array of objects that describe the block storage disks attached to
the instance when the automatic snapshot was created.


=head2 Status => Str

  The status of the automatic snapshot.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

