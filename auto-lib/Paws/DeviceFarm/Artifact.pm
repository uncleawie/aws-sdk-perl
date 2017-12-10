package Paws::DeviceFarm::Artifact;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has Extension => (is => 'ro', isa => 'Str', request_name => 'extension', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
  has Url => (is => 'ro', isa => 'Str', request_name => 'url', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::Artifact

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::Artifact object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Artifact object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Represents the output of a test. Examples of artifacts include logs and
screenshots.

=head1 ATTRIBUTES


=head2 Arn => Str

  The artifact's ARN.


=head2 Extension => Str

  The artifact's file extension.


=head2 Name => Str

  The artifact's name.


=head2 Type => Str

  The artifact's type.

Allowed values include the following:

=over

=item *

UNKNOWN: An unknown type.

=item *

SCREENSHOT: The screenshot type.

=item *

DEVICE_LOG: The device log type.

=item *

MESSAGE_LOG: The message log type.

=item *

RESULT_LOG: The result log type.

=item *

SERVICE_LOG: The service log type.

=item *

WEBKIT_LOG: The web kit log type.

=item *

INSTRUMENTATION_OUTPUT: The instrumentation type.

=item *

EXERCISER_MONKEY_OUTPUT: For Android, the artifact (log) generated by
an Android fuzz test.

=item *

CALABASH_JSON_OUTPUT: The Calabash JSON output type.

=item *

CALABASH_PRETTY_OUTPUT: The Calabash pretty output type.

=item *

CALABASH_STANDARD_OUTPUT: The Calabash standard output type.

=item *

CALABASH_JAVA_XML_OUTPUT: The Calabash Java XML output type.

=item *

AUTOMATION_OUTPUT: The automation output type.

=item *

APPIUM_SERVER_OUTPUT: The Appium server output type.

=item *

APPIUM_JAVA_OUTPUT: The Appium Java output type.

=item *

APPIUM_JAVA_XML_OUTPUT: The Appium Java XML output type.

=item *

APPIUM_PYTHON_OUTPUT: The Appium Python output type.

=item *

APPIUM_PYTHON_XML_OUTPUT: The Appium Python XML output type.

=item *

EXPLORER_EVENT_LOG: The Explorer event log output type.

=item *

EXPLORER_SUMMARY_LOG: The Explorer summary log output type.

=item *

APPLICATION_CRASH_REPORT: The application crash report output type.

=item *

XCTEST_LOG: The XCode test output type.

=back



=head2 Url => Str

  The pre-signed Amazon S3 URL that can be used with a corresponding GET
request to download the artifact's file.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

