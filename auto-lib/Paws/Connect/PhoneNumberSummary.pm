package Paws::Connect::PhoneNumberSummary;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has PhoneNumber => (is => 'ro', isa => 'Str');
  has PhoneNumberCountryCode => (is => 'ro', isa => 'Str');
  has PhoneNumberType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::PhoneNumberSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::PhoneNumberSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., PhoneNumberType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::PhoneNumberSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains summary information about a phone number for a contact center.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the phone number.


=head2 Id => Str

  The identifier of the phone number.


=head2 PhoneNumber => Str

  The phone number.


=head2 PhoneNumberCountryCode => Str

  The ISO country code.


=head2 PhoneNumberType => Str

  The type of phone number.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
