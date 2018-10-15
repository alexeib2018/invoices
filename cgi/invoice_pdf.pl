#!/usr/bin/env perl
use strict;
use warnings;
use PDF::Report;

my %invoice = ("Number" => "SO345372",
               "Date" => "2018-10-09",
               "billToName" => "Chevron #5212 McLane Southern California #812131",
               "billToAddress" => "220 Sycamore Rd",
               "billToCity" => "San Ysidro CA 92173",
               "shipToName" => "Chevron #5212 McLane Southern California #812131",
               "shipToAddress" => "220 Sycamore Rd",
               "shipToCity" => "San Ysidro CA 92173",
               "terms" => "30D",
               "shipVia" => "HOUSE",
               "shipDate" => "2018-10-09",
               "dueDate" => "2018-10-27",
               "account" => "C0002931",
               "poNumber" => "111",
               "poDate" => "2018-10-09",
               "salesPerson" => "HOUSE"
              );

my $pdf = new PDF::Report(PageSize => "letter",
                          PageOrientation => "portrait");

reset_font();
my ($width, $height) = $pdf->getPageDimensions();
my $margin = 15;
my $lh = 13;
my $yPos = $height - $margin - $lh;

for (1 .. 1) {
  $pdf->newpage();
}


$yPos -= $lh;

$pdf->setAddTextPos($margin, $yPos);
$pdf->addText("Fresh Grill/Brown Bag");
$pdf->setAddTextPos($margin, $yPos - $lh);
$pdf->addText("111 E. Garry Ave");
$pdf->setAddTextPos($margin, $yPos - $lh*2);
$pdf->addText("Santa Ana, CA 92707");
$pdf->setAddTextPos($margin, $yPos - $lh*3);
$pdf->addText("Phone: 714-444-2126");
$pdf->setAddTextPos($margin, $yPos - $lh*4);
$pdf->addText("Fax: 714-444-2667");

$pdf->setSize(20);
$pdf->setAlign("Center");
$pdf->setAddTextPos($width/2, $yPos - 9);
$pdf->addText("INVOICE /");
$pdf->setAddTextPos($width/2, $yPos - 25 - 9);
$pdf->addText("BILL OF LADING");
reset_font();

$pdf->addImgScaled("../img/logo.png", $width - 165 - $margin, $yPos - $lh*2.5, 0.4);

$yPos -= $lh * 5;

$pdf->setAlign("Right");
$pdf->setAddTextPos($width-$margin, $yPos);
$pdf->addText("Invoice Number: $invoice{'Number'}");
$pdf->setAddTextPos($width-$margin, $yPos - $lh);
$pdf->addText("Invoice Date: $invoice{'Date'}");
reset_font();

$yPos -= $lh * 2;

$pdf->setAddTextPos($margin, $yPos);
$pdf->addText("Bill");
$pdf->setAddTextPos($margin, $yPos - $lh);
$pdf->addText("To:");
$pdf->setAddTextPos($margin + 20, $yPos - $lh);
$pdf->addText($invoice{'billToName'});
$pdf->setAddTextPos($margin + 20, $yPos - $lh*2);
$pdf->addText($invoice{'billToAddress'});
$pdf->setAddTextPos($margin + 20, $yPos - $lh*3);
$pdf->addText($invoice{'billToCity'});

$pdf->setAddTextPos($width/2 + $margin, $yPos);
$pdf->addText("Ship");
$pdf->setAddTextPos($width/2 + $margin, $yPos - $lh);
$pdf->addText("To:");
$pdf->setAddTextPos($width/2 + $margin + 20, $yPos - $lh);
$pdf->addText($invoice{'shipToName'});
$pdf->setAddTextPos($width/2 + $margin + 20, $yPos - $lh*2);
$pdf->addText($invoice{'shipToAddress'});
$pdf->setAddTextPos($width/2 + $margin + 20, $yPos - $lh*3);
$pdf->addText($invoice{'shipToCity'});

$yPos -= $lh * 5;

$pdf->setGfxLineWidth(2);
$pdf->drawLine($margin, $yPos, $width-$margin, $yPos);
$pdf->setGfxLineWidth(1);

$pdf->setAddTextPos($margin, $yPos - $lh);
$pdf->addText("Terms");
$pdf->setAddTextPos($margin, $yPos - $lh*2);
$pdf->addText("Ship via");
$pdf->setAddTextPos($margin, $yPos - $lh*3);
$pdf->addText("Ship Date");
$pdf->setAddTextPos($margin, $yPos - $lh*4);
$pdf->addText("Due Date");

$pdf->setAddTextPos($margin + 70, $yPos - $lh);
$pdf->addText($invoice{'terms'});
$pdf->setAddTextPos($margin + 70, $yPos - $lh*2);
$pdf->addText($invoice{'shipVia'});
$pdf->setAddTextPos($margin + 70, $yPos - $lh*3);
$pdf->addText($invoice{'shipDate'});
$pdf->setAddTextPos($margin + 70, $yPos - $lh*4);
$pdf->addText($invoice{'dueDate'});

$pdf->setAddTextPos($width/2 + $margin, $yPos - $lh);
$pdf->addText("Account No.");
$pdf->setAddTextPos($width/2 + $margin, $yPos - $lh*2);
$pdf->addText("P.O. Number");
$pdf->setAddTextPos($width/2 + $margin, $yPos - $lh*3);
$pdf->addText("P.O. Date");
$pdf->setAddTextPos($width/2 + $margin, $yPos - $lh*4);
$pdf->addText("Sales Person");

$pdf->setAddTextPos($width/2 + $margin + 70, $yPos - $lh);
$pdf->addText($invoice{'account'});
$pdf->setAddTextPos($width/2 + $margin + 70, $yPos - $lh*2);
$pdf->addText($invoice{'poNumber'});
$pdf->setAddTextPos($width/2 + $margin + 70, $yPos - $lh*3);
$pdf->addText($invoice{'poDate'});
$pdf->setAddTextPos($width/2 + $margin + 70, $yPos - $lh*4);
$pdf->addText($invoice{'salesPerson'});



# my @lines = split_text('The Brown Bag Sandwich', 100);
# for (my $i = 0; $i <= $#lines; $i++) {
#   $pdf->setAddTextPos($margin, $yPos - $lh*$i);
#   $pdf->addText( $lines[$i] );
# }
#
# $yPos -= 50;
#
# $pdf->setAddTextPos($margin, $yPos);
# $pdf->addText( $lines[0] );



$yPos -= 200;

my $notice1 = "The Brown Bag Sandwich Company liability shall be limited exclusively to replacing the purchased product (only) in question without
 charge. The buyer by accepting the merchandise will assume all liability for any damages which may result from its use or misuse by
 the buyer, its employees, or by others. The laws of California supersede this.";

my $notice2 = "PACA Notice: The perishable agricultural commodities listed on this invoice are sold subject to the statutory trust authorized by Section
 5(c) of the Perishable Agricultural Commodities Act, 1930 (7 USC 499(e)(c)). The seller of these commodities retains a trust claim over
 these commodities, all inventories of food or other products derived from these commodities, and any receivables or proceeds from
 the sale of these commodities until full payment is received.";

my $notice3 = "NOTICE: Past due invoices as well as any judgments arising from the collection of such invoices shall accrue annual interest at the
 rate of 18% or at the maximum legal rate, whichever is lower. Seller shall be entitled to collect reasonable attorney`s fees and
 expenses as part of an action to collect on this invoice. Actual attorney`s fees incurred in bringing any action to collect on this invoice
 and/or enforcing any judgment granted and interest shall be considered as additional sums owed in connection with this transaction.";

$pdf->addParagraph($notice1, $margin, $yPos, $width-$margin*2, $lh*4, 25, $lh);
$yPos -= $lh*4;
$pdf->addParagraph($notice2, $margin, $yPos, $width-$margin*2, $lh*5, 25, $lh);
$yPos -= $lh*5;
$pdf->addParagraph($notice3, $margin, $yPos, $width-$margin*2, $lh*5, 25, $lh);
$yPos -= $lh*5;

print "Content-Type: application/pdf\n\n";
print $pdf->Finish(\&footer);

exit;


sub split_text {
  my $text = shift;
  my $width = shift;

  my $w = $pdf->getStringWidth($text);

  my @lines = ();
  push @lines, $text;
  push @lines, "$w";

  return @lines;
}

sub reset_font {
  $pdf->setAlign('Left');
  $pdf->setFont('Helvetica');
  $pdf->setSize(10);  
}

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
