sub load_pdf_data {
    my $dbh = shift;
    my $order_no = shift;

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

    return (\%invoice, \@items);
}


sub print_pdf {
  $invoice_ref = shift;
  $items_ref = shift;

  my %invoice = %{ $invoice_ref };
  my @items = @{ $items_ref };

  print "orderNo = ".$invoice{'orderNo'}."\n";
  print "itemNo[1] = ".$items[1]{'itemNo'}."\n";
}


my ($invoice, $items) = load_pdf_data();
print_pdf($invoice, $items);
