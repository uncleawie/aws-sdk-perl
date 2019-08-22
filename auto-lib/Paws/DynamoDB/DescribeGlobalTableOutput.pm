
package Paws::DynamoDB::DescribeGlobalTableOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DynamoDB::Types qw/DynamoDB_GlobalTableDescription/;
  has GlobalTableDescription => (is => 'ro', isa => DynamoDB_GlobalTableDescription);

  has _request_id => (is => 'ro', isa => Str);
  sub params_map {
    my $params1 = {
             'types' => {
                          'GlobalTableDescription' => {
                                                        'class' => 'Paws::DynamoDB::GlobalTableDescription',
                                                        'type' => 'DynamoDB_GlobalTableDescription'
                                                      }
                        }
           };

    return $params1;
  }

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DescribeGlobalTableOutput

=head1 ATTRIBUTES


=head2 GlobalTableDescription => DynamoDB_GlobalTableDescription

Contains the details of the global table.


=head2 _request_id => Str


=cut

1;