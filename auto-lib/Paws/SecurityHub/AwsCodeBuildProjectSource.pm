package Paws::SecurityHub::AwsCodeBuildProjectSource;
  use Moose;
  has GitCloneDepth => (is => 'ro', isa => 'Int');
  has InsecureSsl => (is => 'ro', isa => 'Bool');
  has Location => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsCodeBuildProjectSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsCodeBuildProjectSource object:

  $service_obj->Method(Att1 => { GitCloneDepth => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsCodeBuildProjectSource object:

  $result = $service_obj->Method(...);
  $result->Att1->GitCloneDepth

=head1 DESCRIPTION

Information about the build input source code for this build project.

=head1 ATTRIBUTES


=head2 GitCloneDepth => Int

  Information about the Git clone depth for the build project.


=head2 InsecureSsl => Bool

  Whether to ignore SSL warnings while connecting to the project source
code.


=head2 Location => Str

  Information about the location of the source code to be built.

Valid values include:

=over

=item *

For source code settings that are specified in the source action of a
pipeline in AWS CodePipeline, location should not be specified. If it
is specified, AWS CodePipeline ignores it. This is because AWS
CodePipeline uses the settings in a pipeline's source action instead of
this value.

=item *

For source code in an AWS CodeCommit repository, the HTTPS clone URL to
the repository that contains the source code and the buildspec file
(for example,
C<https://git-codecommit.region-ID.amazonaws.com/v1/repos/repo-name> ).

=item *

For source code in an S3 input bucket, one of the following.

=over

=item *

The path to the ZIP file that contains the source code (for example,
C<bucket-name/path/to/object-name.zip>).

=item *

The path to the folder that contains the source code (for example,
C<bucket-name/path/to/source-code/folder/>).

=back

=item *

For source code in a GitHub repository, the HTTPS clone URL to the
repository that contains the source and the buildspec file.

=item *

For source code in a Bitbucket repository, the HTTPS clone URL to the
repository that contains the source and the buildspec file.

=back



=head2 Type => Str

  The type of repository that contains the source code to be built. Valid
values are:

=over

=item *

C<BITBUCKET> - The source code is in a Bitbucket repository.

=item *

C<CODECOMMIT> - The source code is in an AWS CodeCommit repository.

=item *

C<CODEPIPELINE> - The source code settings are specified in the source
action of a pipeline in AWS CodePipeline.

=item *

C<GITHUB> - The source code is in a GitHub repository.

=item *

C<GITHUB_ENTERPRISE> - The source code is in a GitHub Enterprise
repository.

=item *

C<NO_SOURCE> - The project does not have input source code.

=item *

C<S3> - The source code is in an S3 input bucket.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
