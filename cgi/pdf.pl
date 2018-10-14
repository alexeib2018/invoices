#!/usr/bin/env perl
use strict;
use warnings;
use PDF::Report;

my $pdf = new PDF::Report(
                          PageSize => "letter", # Custom page size 
                          PageOrientation => "portrait"
                         );

$pdf->setFont('Helvetica');
$pdf->setSize(12);
my ($width, $height) = $pdf->getPageDimensions();
my $y1 = $height - 30;
my $x1 = 30;
my $margin = 10;

for (1 .. 3) {
  $pdf->newpage();
}

# my $outpdf = $0;
# $outpdf =~ s/pl$/pdf/;
# open(PDF, "> $outpdf") or die "Error opening $outpdf: $!\n";
# print PDF $pdf->Finish(\&footer);
#close(PDF);

print "Content-Type: application/pdf\n\n";
print $pdf->Finish(\&footer);

exit;

sub footer {
  my $pages = $pdf->pages;

  $pdf->setFont("Helvetica");
  $pdf->setSize(10);
  for (1 .. $pages) {
    $pdf->openpage($_);
    $pdf->setAlign('Right');
    $pdf->setAddTextPos($width-$margin, $margin);
    $pdf->addText("Page $_ of $pages");
  }
}
