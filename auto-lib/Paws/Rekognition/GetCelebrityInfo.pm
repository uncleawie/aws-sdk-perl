
package Paws::Rekognition::GetCelebrityInfo;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCelebrityInfo');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::GetCelebrityInfoResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::GetCelebrityInfo - Arguments for method GetCelebrityInfo on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCelebrityInfo on the 
Amazon Rekognition service. Use the attributes of this class
as arguments to method GetCelebrityInfo.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCelebrityInfo.

As an example:

  $service_obj->GetCelebrityInfo(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID for the celebrity. You get the celebrity ID from a call to the
operation, which recognizes celebrities in an image.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCelebrityInfo in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

