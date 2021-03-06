package Paws::Quicksight::TemplateVersion;
  use Moose;
  has CreatedTime => (is => 'ro', isa => 'Str');
  has DataSetConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::DataSetConfiguration]');
  has Description => (is => 'ro', isa => 'Str');
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::TemplateError]');
  has SourceEntityArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has VersionNumber => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::TemplateVersion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::TemplateVersion object:

  $service_obj->Method(Att1 => { CreatedTime => $value, ..., VersionNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::TemplateVersion object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedTime

=head1 DESCRIPTION

A version of a template.

=head1 ATTRIBUTES


=head2 CreatedTime => Str

  The time that this template version was created.


=head2 DataSetConfigurations => ArrayRef[L<Paws::Quicksight::DataSetConfiguration>]

  Schema of the dataset identified by the placeholder. The idea is that
any dashboard created from the template should be bound to new datasets
matching the same schema described through this API. .


=head2 Description => Str

  The description of the template.


=head2 Errors => ArrayRef[L<Paws::Quicksight::TemplateError>]

  Errors associated with the template.


=head2 SourceEntityArn => Str

  The Amazon Resource Name (ARN) of the analysis or template which was
used to create this template.


=head2 Status => Str

  The HTTP status of the request.


=head2 VersionNumber => Int

  The version number of the template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

