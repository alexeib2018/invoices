#!/usr/bin/env perl
use strict;
use warnings;
use PDF::Report;

my $pdf = new PDF::Report(
                          PageSize => "letter",
                          PageOrientation => "portrait"
                         );

$pdf->setFont('Helvetica');
#$pdf->setFont('Times New Roman');
$pdf->setSize(13);
my ($width, $height) = $pdf->getPageDimensions();
my $y1 = $height - 30;
my $x1 = 30;
my $margin = 10;

for (1 .. 2) {
  $pdf->newpage();
}

my $notice1 = "The Brown Bag Sandwich Company liability shall be limited exclusively to replacing the purchased product (only) in question without
 charge. The buyer by accepting the merchandise will assume all liability for any damages which may result from its use or misuse by
 the buyer, its employees, or by others. The laws of California supersede this.";

my $notice2 = "PACA Notice: The perishable agricultural commodities listed on this invoice are sold subject to the statutory trust authorized by Section
 5(c) of the Perishable Agricultural Commodities Act, 1930 (7 USC 499(e)(c)). The seller of these commodities retains a trust claim over
 these commodities, all inventories  of  food  or  other  products  derived from these commodities, and any receivables or proceeds from
 the sale of these commodities until full payment is received.";

my $notice3 = "NOTICE: Past due invoices as well as any judgments arising from the collection of such invoices shall accrue annual interest at the
 rate of 18% or at the maximum legal rate, whichever is lower. Seller shall be entitled to collect reasonable attorney`s fees and
 expenses as part of an action to collect on this invoice. Actual attorney`s fees incurred in bringing any action to collect on this invoice
 and/or enforcing any judgment granted and interest shall be considered as additional sums owed in connection with this transaction.";

$pdf->addParagraph($notice1, 30, $height-70, $width-60, 80, 25, 16);
$pdf->addParagraph($notice2, 30, $height-150, $width-60, 80, 25, 16);
$pdf->addParagraph($notice3, 30, $height-245, $width-60, 100, 25, 16);


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
