package Paws::S3::CloudFunctionConfiguration;
  use Moose;
  has CloudFunction => (is => 'ro', isa => 'Str');
  has Event => (is => 'ro', isa => 'Str');
  has Events => (is => 'ro', isa => 'ArrayRef[Str]', xmlname => 'Event', request_name => 'Event', traits => ['Unwrapped','NameInRequest']);
  has Id => (is => 'ro', isa => 'Str');
  has InvocationRole => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CloudFunctionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::CloudFunctionConfiguration object:

  $service_obj->Method(Att1 => { CloudFunction => $value, ..., InvocationRole => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::CloudFunctionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudFunction

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES

=head2 CloudFunction => Str

  

=head2 Event => Str

  

=head2 Events => ArrayRef[Str]

  

=head2 Id => Str

  

=head2 InvocationRole => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

