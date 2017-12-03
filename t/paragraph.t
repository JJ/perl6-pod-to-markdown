use v6;
use lib <blib/lib lib>;

use Test;
use Pod::To::Markdown;

plan 1;

my $markdown = q{This is all a paragraph.

This is the next paragraph.

This is the third paragraph.

Abbreviated paragraph

Paragraph paragraph

Block paragraph};

is pod2markdown($=pod), $markdown,
    'Paragraphs convert correctly.';

=begin pod
This is all
a paragraph.

This is the
next paragraph.

This is the
third paragraph.
=end pod

=para Abbreviated paragraph

=for para
Paragraph
paragraph

=begin para
Block

paragraph
=end para
