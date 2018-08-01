package Paws::DeviceFarm::ScheduleRunTest;
  use Moose;
  has Filter => (is => 'ro', isa => 'Str', request_name => 'filter', traits => ['NameInRequest']);
  has Parameters => (is => 'ro', isa => 'Paws::DeviceFarm::TestParameters', request_name => 'parameters', traits => ['NameInRequest']);
  has TestPackageArn => (is => 'ro', isa => 'Str', request_name => 'testPackageArn', traits => ['NameInRequest']);
  has TestSpecArn => (is => 'ro', isa => 'Str', request_name => 'testSpecArn', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ScheduleRunTest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::ScheduleRunTest object:

  $service_obj->Method(Att1 => { Filter => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::ScheduleRunTest object:

  $result = $service_obj->Method(...);
  $result->Att1->Filter

=head1 DESCRIPTION

Represents test settings. This data structure is passed in as the test
parameter to ScheduleRun. For an example of the JSON request syntax,
see ScheduleRun.

=head1 ATTRIBUTES


=head2 Filter => Str

  The test's filter.


=head2 Parameters => L<Paws::DeviceFarm::TestParameters>

  The test's parameters, such as test framework parameters and fixture
settings. Parameters are represented by name-value pairs of strings.

For all tests:

=over

=item *

C<app_performance_monitoring>: Performance monitoring is enabled by
default. Set this parameter to false to disable it.

=back

For Calabash tests:

=over

=item *

profile: A cucumber profile (for example, C<my_profile_name>).

=item *

tags: You can limit execution to features or scenarios that have (or
don't have) certain tags (for example, @smoke or @smoke,~@wip).

=back

For Appium tests (all types):

=over

=item *

appium_version: The Appium version. Currently supported values are
1.6.5 (and later), latest, and default.

=over

=item *

latest runs the latest Appium version supported by Device Farm (1.9.1).

=item *

For default, Device Farm selects a compatible version of Appium for the
device. The current behavior is to run 1.7.2 on Android devices and iOS
9 and earlier and 1.7.2 for iOS 10 and later.

=item *

This behavior is subject to change.

=back

=back

For fuzz tests (Android only):

=over

=item *

event_count: The number of events, between 1 and 10000, that the UI
fuzz test should perform.

=item *

throttle: The time, in ms, between 0 and 1000, that the UI fuzz test
should wait between events.

=item *

seed: A seed to use for randomizing the UI fuzz test. Using the same
seed value between tests ensures identical event sequences.

=back

For Explorer tests:

=over

=item *

username: A user name to use if the Explorer encounters a login form.
If not supplied, no user name is inserted.

=item *

password: A password to use if the Explorer encounters a login form. If
not supplied, no password is inserted.

=back

For Instrumentation:

=over

=item *

filter: A test filter string. Examples:

=over

=item *

Running a single test case: C<com.android.abc.Test1>

=item *

Running a single test: C<com.android.abc.Test1#smoke>

=item *

Running multiple tests: C<com.android.abc.Test1,com.android.abc.Test2>

=back

=back

For XCTest and XCTestUI:

=over

=item *

filter: A test filter string. Examples:

=over

=item *

Running a single test class: C<LoginTests>

=item *

Running a multiple test classes: C<LoginTests,SmokeTests>

=item *

Running a single test: C<LoginTests/testValid>

=item *

Running multiple tests: C<LoginTests/testValid,LoginTests/testInvalid>

=back

=back

For UIAutomator:

=over

=item *

filter: A test filter string. Examples:

=over

=item *

Running a single test case: C<com.android.abc.Test1>

=item *

Running a single test: C<com.android.abc.Test1#smoke>

=item *

Running multiple tests: C<com.android.abc.Test1,com.android.abc.Test2>

=back

=back



=head2 TestPackageArn => Str

  The ARN of the uploaded test to be run.


=head2 TestSpecArn => Str

  The ARN of the YAML-formatted test specification.


=head2 B<REQUIRED> Type => Str

  The test's type.

Must be one of the following values:

=over

=item *

BUILTIN_FUZZ

=item *

BUILTIN_EXPLORER. For Android, an app explorer that traverses an
Android app, interacting with it and capturing screenshots at the same
time.

=item *

APPIUM_JAVA_JUNIT

=item *

APPIUM_JAVA_TESTNG

=item *

APPIUM_PYTHON

=item *

APPIUM_NODE

=item *

APPIUM_RUBY

=item *

APPIUM_WEB_JAVA_JUNIT

=item *

APPIUM_WEB_JAVA_TESTNG

=item *

APPIUM_WEB_PYTHON

=item *

APPIUM_WEB_NODE

=item *

APPIUM_WEB_RUBY

=item *

CALABASH

=item *

INSTRUMENTATION

=item *

UIAUTOMATION

=item *

UIAUTOMATOR

=item *

XCTEST

=item *

XCTEST_UI

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

