#!/usr/bin/env perl
use strict;
use warnings;
use PDF::Report;

my $item1 = {"itemNo" => "10237",
             "description" => "FG Diced Onions, tub",
             "unit" => "Each",
             "orderQty" => "3",
             "shippedQty" => "3",
             "unitPrice" => "2.53",
             "price" => "7.59",
             "spoilageAllowance" =>"-0.38",
             "totalAllowance" => "-1.14",
             "totalPrice" => "6.45"
             };

my $item2 = {"itemNo" => "11047",
             "description" => "FG Grilled Chicken Caesar Wrap",
             "unit" => "Each",
             "orderQty" => "1",
             "shippedQty" => "1",
             "unitPrice" => "2.85",
             "price" => "2.85",
             "spoilageAllowance" =>"-0.43",
             "totalAllowance" => "-0.43",
             "totalPrice" => "2.42"
             };

my $item3 = {"itemNo" => "11048",
             "description" => "FG Zesty Turkey Wrap",
             "unit" => "Each",
             "orderQty" => "1",
             "shippedQty" => "1",
             "unitPrice" => "2.85",
             "price" => "2.85",
             "spoilageAllowance" =>"-0.43",
             "totalAllowance" => "-0.43",
             "totalPrice" => "2.42"
             };

my @items = ($item1, $item2, $item3);

my %invoice = ("orderNo" => "SO345372",
               "orderDate" => "2018-10-09",
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
               "salesPerson" => "HOUSE",
               "subtotal" => "13.29",
               "totalAllowance" => "-2.00",
               "tax" => "0.00",
               "total" => "11.29"
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
$pdf->addText("Invoice Number: $invoice{'orderNo'}");
$pdf->setAddTextPos($width-$margin, $yPos - $lh);
$pdf->addText("Invoice Date: $invoice{'orderDate'}");
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

$pdf->setAddTextPos($margin + 60, $yPos - $lh);
$pdf->addText($invoice{'terms'});
$pdf->setAddTextPos($margin + 60, $yPos - $lh*2);
$pdf->addText($invoice{'shipVia'});
$pdf->setAddTextPos($margin + 60, $yPos - $lh*3);
$pdf->addText($invoice{'shipDate'});
$pdf->setAddTextPos($margin + 60, $yPos - $lh*4);
$pdf->addText($invoice{'dueDate'});

$pdf->setAddTextPos($width/2 + $margin, $yPos - $lh);
$pdf->addText("Account No.");
$pdf->setAddTextPos($width/2 + $margin, $yPos - $lh*2);
$pdf->addText("P.O. Number");
$pdf->setAddTextPos($width/2 + $margin, $yPos - $lh*3);
$pdf->addText("P.O. Date");
$pdf->setAddTextPos($width/2 + $margin, $yPos - $lh*4);
$pdf->addText("Sales Person");

$pdf->setAddTextPos($width/2 + $margin + 80, $yPos - $lh);
$pdf->addText($invoice{'account'});
$pdf->setAddTextPos($width/2 + $margin + 80, $yPos - $lh*2);
$pdf->addText($invoice{'poNumber'});
$pdf->setAddTextPos($width/2 + $margin + 80, $yPos - $lh*3);
$pdf->addText($invoice{'poDate'});
$pdf->setAddTextPos($width/2 + $margin + 80, $yPos - $lh*4);
$pdf->addText($invoice{'salesPerson'});

$yPos -= $lh * 6;

my %table = ("itemNo" =>             6,
             "description" =>       27,
             "orderNo" =>           10,
             "unit" =>               5,
             "orderQty" =>           6,
             "shippedQty" =>         8,
             "unitPrice" =>          6,
             "price" =>              6,
             "spoilageAllowance" => 10,
             "totalAllowance" =>    10,
             "totalPrice" =>         6
             );

$table{'description'}       += $table{'itemNo'};
$table{'orderNo'}           += $table{'description'};
$table{'unit'}              += $table{'orderNo'};
$table{'orderQty'}          += $table{'unit'};
$table{'shippedQty'}        += $table{'orderQty'};
$table{'unitPrice'}         += $table{'shippedQty'};
$table{'price'}             += $table{'unitPrice'};
$table{'spoilageAllowance'} += $table{'price'};
$table{'totalAllowance'}    += $table{'spoilageAllowance'};
$table{'totalPrice'}        += $table{'totalAllowance'};

$table{'itemNo'}            *= 0.01 * ($width-2*$margin);
$table{'description'}       *= 0.01 * ($width-2*$margin);
$table{'orderNo'}           *= 0.01 * ($width-2*$margin);
$table{'unit'}              *= 0.01 * ($width-2*$margin);
$table{'orderQty'}          *= 0.01 * ($width-2*$margin);
$table{'shippedQty'}        *= 0.01 * ($width-2*$margin);
$table{'unitPrice'}         *= 0.01 * ($width-2*$margin);
$table{'price'}             *= 0.01 * ($width-2*$margin);
$table{'spoilageAllowance'} *= 0.01 * ($width-2*$margin);
$table{'totalAllowance'}    *= 0.01 * ($width-2*$margin);
$table{'totalPrice'}        *= 0.01 * ($width-2*$margin);

$table{'totalPrice'}        = $table{'totalAllowance'};
$table{'totalAllowance'}    = $table{'spoilageAllowance'};
$table{'spoilageAllowance'} = $table{'price'};
$table{'price'}             = $table{'unitPrice'};
$table{'unitPrice'}         = $table{'shippedQty'};
$table{'shippedQty'}        = $table{'orderQty'};
$table{'orderQty'}          = $table{'unit'};
$table{'unit'}              = $table{'orderNo'};
$table{'orderNo'}           = $table{'description'};
$table{'description'}       = $table{'itemNo'};
$table{'itemNo'}            = 0;

my $hh = $lh*2;
$pdf->shadeRect($margin, $yPos, $width-$margin, $yPos - $hh, '#AAA');
$pdf->shadeRect($margin, $yPos, $margin, $yPos, '#000');    # Reset color
$pdf->drawLine($margin, $yPos, $width-$margin, $yPos);
$pdf->drawLine($margin, $yPos - $hh, $width-$margin, $yPos - $hh);
$pdf->drawLine($margin, $yPos, $margin, $yPos - $hh);
$pdf->drawLine($margin + $table{'description'},       $yPos, $margin + $table{'description'},       $yPos - $hh);
$pdf->drawLine($margin + $table{'orderNo'},           $yPos, $margin + $table{'orderNo'},           $yPos - $hh);
$pdf->drawLine($margin + $table{'unit'},              $yPos, $margin + $table{'unit'},              $yPos - $hh);
$pdf->drawLine($margin + $table{'orderQty'},          $yPos, $margin + $table{'orderQty'},          $yPos - $hh);
$pdf->drawLine($margin + $table{'shippedQty'},        $yPos, $margin + $table{'shippedQty'},        $yPos - $hh);
$pdf->drawLine($margin + $table{'unitPrice'},         $yPos, $margin + $table{'unitPrice'},         $yPos - $hh);
$pdf->drawLine($margin + $table{'price'},             $yPos, $margin + $table{'price'},             $yPos - $hh);
$pdf->drawLine($margin + $table{'spoilageAllowance'}, $yPos, $margin + $table{'spoilageAllowance'}, $yPos - $hh);
$pdf->drawLine($margin + $table{'totalAllowance'},    $yPos, $margin + $table{'totalAllowance'},    $yPos - $hh);
$pdf->drawLine($margin + $table{'totalPrice'},        $yPos, $margin + $table{'totalPrice'},        $yPos - $hh);
$pdf->drawLine($width-$margin,                        $yPos, $width - $margin,                      $yPos - $hh);

my $pp = 2;
$pdf->setFont('Helvetica Bold');

$pdf->setAddTextPos($margin + $pp, $yPos - $lh + 2);
$pdf->addText("Item");
$pdf->setAddTextPos($margin + $pp, $yPos - $lh*2 + 4);
$pdf->addText("No.");

$pdf->setAddTextPos($margin + $table{'description'} + $pp, $yPos - $lh - 3);
$pdf->addText("Description");

$pdf->setAddTextPos($margin + $table{'orderNo'} + $pp, $yPos - $lh - 3);
$pdf->addText("Order No.");

$pdf->setAddTextPos($margin + $table{'unit'} + $pp, $yPos - $lh - 3);
$pdf->addText("Unit");

$pdf->setAlign('Right');

$pdf->setAddTextPos($margin + $table{'shippedQty'} - $pp, $yPos - $lh + 2);
$pdf->addText("Order");
$pdf->setAddTextPos($margin + $table{'shippedQty'} - $pp, $yPos - $lh*2 + 4);
$pdf->addText("Qty");

$pdf->setAddTextPos($margin + $table{'unitPrice'} - $pp, $yPos - $lh + 2);
$pdf->addText("Shipped");
$pdf->setAddTextPos($margin + $table{'unitPrice'} - $pp, $yPos - $lh*2 + 4);
$pdf->addText("Qty");

$pdf->setAddTextPos($margin + $table{'price'} - $pp, $yPos - $lh + 2);
$pdf->addText("Unit");
$pdf->setAddTextPos($margin + $table{'price'} - $pp, $yPos - $lh*2 + 4);
$pdf->addText("Price");

$pdf->setAddTextPos($margin + $table{'spoilageAllowance'} - $pp, $yPos - $lh - 3);
$pdf->addText("Price");

$pdf->setAddTextPos($margin + $table{'totalAllowance'} - $pp, $yPos - $lh + 2);
$pdf->addText("Spoilage");
$pdf->setAddTextPos($margin + $table{'totalAllowance'} - $pp, $yPos - $lh*2 + 4);
$pdf->addText("Allowance");

$pdf->setAddTextPos($margin + $table{'totalPrice'} - $pp, $yPos - $lh + 2);
$pdf->addText("Total");
$pdf->setAddTextPos($margin + $table{'totalPrice'} - $pp, $yPos - $lh*2 + 4);
$pdf->addText("Allowance");

$pdf->setAddTextPos($width - $margin - $pp, $yPos - $lh + 2);
$pdf->addText("Total");
$pdf->setAddTextPos($width - $margin - $pp, $yPos - $lh*2 + 4);
$pdf->addText("Price");
reset_font();

$yPos -= $lh * 3 -1;

for (my $i = 0; $i <= $#items; $i++) {
  $pdf->setAddTextPos($margin + $pp, $yPos);
  $pdf->addText($items[$i]{'itemNo'});
  $pdf->setAddTextPos($margin + $table{'description'} + $pp, $yPos);
  $pdf->addText($items[$i]{'description'});
  $pdf->setAddTextPos($margin + $table{'orderNo'} + $pp, $yPos);
  $pdf->addText($invoice{'orderNo'});
  $pdf->setAddTextPos($margin + $table{'unit'} + $pp, $yPos);
  $pdf->addText($items[$i]{'unit'});
  $pdf->setAlign('Right');
  $pdf->setAddTextPos($margin + $table{'shippedQty'} - $pp, $yPos);
  $pdf->addText($items[$i]{'orderQty'});
  $pdf->setAddTextPos($margin + $table{'unitPrice'} - $pp, $yPos);
  $pdf->addText($items[$i]{'shippedQty'});
  $pdf->setAddTextPos($margin + $table{'price'} - $pp, $yPos);
  $pdf->addText($items[$i]{'unitPrice'});
  $pdf->setAddTextPos($margin + $table{'spoilageAllowance'} - $pp, $yPos);
  $pdf->addText($items[$i]{'price'});
  $pdf->setAddTextPos($margin + $table{'totalAllowance'} - $pp, $yPos);
  $pdf->addText($items[$i]{'spoilageAllowance'});
  $pdf->setAddTextPos($margin + $table{'totalPrice'} - $pp, $yPos);
  $pdf->addText($items[$i]{'totalAllowance'});
  $pdf->setAddTextPos($width - $margin - $pp, $yPos);
  $pdf->addText($items[$i]{'totalPrice'});
  $pdf->setAlign('Left');
  $pdf->drawLine($margin, $yPos -4, $width - $margin, $yPos -4);

  $yPos -= $lh + 2;
}

$yPos -= $lh;

$pdf->setAlign('Right');

$pdf->setAddTextPos($width - $margin - 50, $yPos);
$pdf->addText("Subtotal:");
$pdf->setAddTextPos($width - $margin - $pp, $yPos);
$pdf->addText($invoice{'subtotal'});

$yPos -= $lh;

$pdf->setAddTextPos($width - $margin - 50, $yPos);
$pdf->addText("Total Allowance:");
$pdf->setAddTextPos($width - $margin - $pp, $yPos);
$pdf->addText($invoice{'totalAllowance'});

$yPos -= $lh;

$pdf->setAddTextPos($width - $margin - 50, $yPos);
$pdf->addText("Tax:");
$pdf->setAddTextPos($width - $margin - $pp, $yPos);
$pdf->addText($invoice{'tax'});

$yPos -= $lh;

$pdf->setAddTextPos($width - $margin - 50, $yPos);
$pdf->addText("Total:");
$pdf->setAddTextPos($width - $margin - $pp, $yPos);
$pdf->addText($invoice{'total'});

$pdf->setAddTextPos($margin + 8, $yPos + 3);
$pdf->addText("X");

$pdf->setGfxLineWidth(2);
$pdf->drawLine($margin, $yPos, $width - $margin - 150, $yPos);
$pdf->setGfxLineWidth(1);

reset_font();

$yPos -= $lh*3;


# for (my $i = 0; $i <= $#lines; $i++) {
#   $pdf->setAddTextPos($margin, $yPos - $lh*$i);
#   $pdf->addText( $lines[$i] );
# }
#
# $yPos -= 50;
#
# $pdf->setAddTextPos($margin, $yPos);
# $pdf->addText( $lines[0] );


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
