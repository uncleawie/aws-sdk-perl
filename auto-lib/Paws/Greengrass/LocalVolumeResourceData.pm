package Paws::Greengrass::LocalVolumeResourceData;
  use Moose;
  has DestinationPath => (is => 'ro', isa => 'Str');
  has GroupOwnerSetting => (is => 'ro', isa => 'Paws::Greengrass::GroupOwnerSetting');
  has SourcePath => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::LocalVolumeResourceData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::LocalVolumeResourceData object:

  $service_obj->Method(Att1 => { DestinationPath => $value, ..., SourcePath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::LocalVolumeResourceData object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationPath

=head1 DESCRIPTION

Attributes that define the Local Volume Resource.

=head1 ATTRIBUTES


=head2 DestinationPath => Str

  Local destination path of the resource.


=head2 GroupOwnerSetting => L<Paws::Greengrass::GroupOwnerSetting>

  Group owner related settings for local resources.


=head2 SourcePath => Str

  Local source path of the resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

