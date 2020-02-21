package Paws::Textract::Block;
  use Moose;
  has BlockType => (is => 'ro', isa => 'Str');
  has ColumnIndex => (is => 'ro', isa => 'Int');
  has ColumnSpan => (is => 'ro', isa => 'Int');
  has Confidence => (is => 'ro', isa => 'Num');
  has EntityTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Geometry => (is => 'ro', isa => 'Paws::Textract::Geometry');
  has Id => (is => 'ro', isa => 'Str');
  has Page => (is => 'ro', isa => 'Int');
  has Relationships => (is => 'ro', isa => 'ArrayRef[Paws::Textract::Relationship]');
  has RowIndex => (is => 'ro', isa => 'Int');
  has RowSpan => (is => 'ro', isa => 'Int');
  has SelectionStatus => (is => 'ro', isa => 'Str');
  has Text => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::Block

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Textract::Block object:

  $service_obj->Method(Att1 => { BlockType => $value, ..., Text => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Textract::Block object:

  $result = $service_obj->Method(...);
  $result->Att1->BlockType

=head1 DESCRIPTION

A C<Block> represents items that are recognized in a document within a
group of pixels close to each other. The information returned in a
C<Block> object depends on the type of operation. In text detection for
documents (for example DetectDocumentText), you get information about
the detected words and lines of text. In text analysis (for example
AnalyzeDocument), you can also get information about the fields,
tables, and selection elements that are detected in the document.

An array of C<Block> objects is returned by both synchronous and
asynchronous operations. In synchronous operations, such as
DetectDocumentText, the array of C<Block> objects is the entire set of
results. In asynchronous operations, such as GetDocumentAnalysis, the
array is returned over one or more responses.

For more information, see How Amazon Textract Works
(https://docs.aws.amazon.com/textract/latest/dg/how-it-works.html).

=head1 ATTRIBUTES


=head2 BlockType => Str

  The type of text item that's recognized. In operations for text
detection, the following types are returned:

=over

=item *

I<PAGE> - Contains a list of the LINE C<Block> objects that are
detected on a document page.

=item *

I<WORD> - A word detected on a document page. A word is one or more ISO
basic Latin script characters that aren't separated by spaces.

=item *

I<LINE> - A string of tab-delimited, contiguous words that are detected
on a document page.

=back

In text analysis operations, the following types are returned:

=over

=item *

I<PAGE> - Contains a list of child C<Block> objects that are detected
on a document page.

=item *

I<KEY_VALUE_SET> - Stores the KEY and VALUE C<Block> objects for linked
text that's detected on a document page. Use the C<EntityType> field to
determine if a KEY_VALUE_SET object is a KEY C<Block> object or a VALUE
C<Block> object.

=item *

I<WORD> - A word that's detected on a document page. A word is one or
more ISO basic Latin script characters that aren't separated by spaces.

=item *

I<LINE> - A string of tab-delimited, contiguous words that are detected
on a document page.

=item *

I<TABLE> - A table that's detected on a document page. A table is
grid-based information with two or more rows or columns, with a cell
span of one row and one column each.

=item *

I<CELL> - A cell within a detected table. The cell is the parent of the
block that contains the text in the cell.

=item *

I<SELECTION_ELEMENT> - A selection element such as an option button
(radio button) or a check box that's detected on a document page. Use
the value of C<SelectionStatus> to determine the status of the
selection element.

=back



=head2 ColumnIndex => Int

  The column in which a table cell appears. The first column position is
1. C<ColumnIndex> isn't returned by C<DetectDocumentText> and
C<GetDocumentTextDetection>.


=head2 ColumnSpan => Int

  The number of columns that a table cell spans. Currently this value is
always 1, even if the number of columns spanned is greater than 1.
C<ColumnSpan> isn't returned by C<DetectDocumentText> and
C<GetDocumentTextDetection>.


=head2 Confidence => Num

  The confidence score that Amazon Textract has in the accuracy of the
recognized text and the accuracy of the geometry points around the
recognized text.


=head2 EntityTypes => ArrayRef[Str|Undef]

  The type of entity. The following can be returned:

=over

=item *

I<KEY> - An identifier for a field on the document.

=item *

I<VALUE> - The field text.

=back

C<EntityTypes> isn't returned by C<DetectDocumentText> and
C<GetDocumentTextDetection>.


=head2 Geometry => L<Paws::Textract::Geometry>

  The location of the recognized text on the image. It includes an
axis-aligned, coarse bounding box that surrounds the text, and a
finer-grain polygon for more accurate spatial information.


=head2 Id => Str

  The identifier for the recognized text. The identifier is only unique
for a single operation.


=head2 Page => Int

  The page on which a block was detected. C<Page> is returned by
asynchronous operations. Page values greater than 1 are only returned
for multipage documents that are in PDF format. A scanned image
(JPEG/PNG), even if it contains multiple document pages, is considered
to be a single-page document. The value of C<Page> is always 1.
Synchronous operations don't return C<Page> because every input
document is considered to be a single-page document.


=head2 Relationships => ArrayRef[L<Paws::Textract::Relationship>]

  A list of child blocks of the current block. For example, a LINE object
has child blocks for each WORD block that's part of the line of text.
There aren't Relationship objects in the list for relationships that
don't exist, such as when the current block has no child blocks. The
list size can be the following:

=over

=item *

0 - The block has no child blocks.

=item *

1 - The block has child blocks.

=back



=head2 RowIndex => Int

  The row in which a table cell is located. The first row position is 1.
C<RowIndex> isn't returned by C<DetectDocumentText> and
C<GetDocumentTextDetection>.


=head2 RowSpan => Int

  The number of rows that a table cell spans. Currently this value is
always 1, even if the number of rows spanned is greater than 1.
C<RowSpan> isn't returned by C<DetectDocumentText> and
C<GetDocumentTextDetection>.


=head2 SelectionStatus => Str

  The selection status of a selection element, such as an option button
or check box.


=head2 Text => Str

  The word or line of text that's recognized by Amazon Textract.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
