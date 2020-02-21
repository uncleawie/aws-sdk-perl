package Paws::KinesisAnalytics::InputParallelismUpdate;
  use Moose;
  has CountUpdate => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::InputParallelismUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::InputParallelismUpdate object:

  $service_obj->Method(Att1 => { CountUpdate => $value, ..., CountUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::InputParallelismUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->CountUpdate

=head1 DESCRIPTION

Provides updates to the parallelism count.

=head1 ATTRIBUTES


=head2 CountUpdate => Int

  Number of in-application streams to create for the specified streaming
source.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
