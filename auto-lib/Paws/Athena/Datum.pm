package Paws::Athena::Datum;
  use Moose;
  has VarCharValue => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::Datum

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Athena::Datum object:

  $service_obj->Method(Att1 => { VarCharValue => $value, ..., VarCharValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Athena::Datum object:

  $result = $service_obj->Method(...);
  $result->Att1->VarCharValue

=head1 DESCRIPTION

A piece of data (a field in the table).

=head1 ATTRIBUTES


=head2 VarCharValue => Str

  The value of the datum.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
