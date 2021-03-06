package Paws::SageMaker::MonitoringScheduleConfig;
  use Moose;
  has MonitoringJobDefinition => (is => 'ro', isa => 'Paws::SageMaker::MonitoringJobDefinition', required => 1);
  has ScheduleConfig => (is => 'ro', isa => 'Paws::SageMaker::ScheduleConfig');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::MonitoringScheduleConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::MonitoringScheduleConfig object:

  $service_obj->Method(Att1 => { MonitoringJobDefinition => $value, ..., ScheduleConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::MonitoringScheduleConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->MonitoringJobDefinition

=head1 DESCRIPTION

Configures the monitoring schedule and defines the monitoring job.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MonitoringJobDefinition => L<Paws::SageMaker::MonitoringJobDefinition>

  Defines the monitoring job.


=head2 ScheduleConfig => L<Paws::SageMaker::ScheduleConfig>

  Configures the monitoring schedule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

