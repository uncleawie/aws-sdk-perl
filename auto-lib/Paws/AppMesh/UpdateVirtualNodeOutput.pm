
package Paws::AppMesh::UpdateVirtualNodeOutput;
  use Moose;
  has VirtualNode => (is => 'ro', isa => 'Paws::AppMesh::VirtualNodeData', traits => ['NameInRequest'], request_name => 'virtualNode', required => 1);
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'VirtualNode');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::UpdateVirtualNodeOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> VirtualNode => L<Paws::AppMesh::VirtualNodeData>

A full description of the virtual node that was updated.


=head2 _request_id => Str


=cut

