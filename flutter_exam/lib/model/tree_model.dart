class TreeModel {
  //const paltosPrice 1.2;
  static const double paltosPrice = 1.2;
  static const double limonPrice = 1;
  static const double chirimoyosPrice = 0.98;



  String computeDiscountedPrice(int paltosNumber, int limonNumber, int chirimoyosNumber) {
    double paltoDiscount = 0;
    double limonDiscount = 0;
    double chirimoyoDiscount = 0;

    String result = '';
    if (paltosNumber > 100 && paltosNumber <= 300) {
      paltoDiscount = 10;
    } else if (paltosNumber > 300) {
      paltoDiscount = 18;
    }

    if (limonNumber > 100 && limonNumber <= 300) {
      limonDiscount = 12.5;
    } else if (limonNumber > 300) {
      limonDiscount = 20;
    }

    if (chirimoyosNumber > 100 && chirimoyosNumber <= 300) {
      chirimoyoDiscount = 14.5;
    } else if (chirimoyosNumber > 300) {
      chirimoyoDiscount = 19;
    }


    double totalPrice = paltosNumber * paltosPrice * (1 - paltoDiscount / 100) +
        limonNumber * limonPrice * (1 - limonDiscount / 100) +
        chirimoyosNumber * chirimoyosPrice * (1 - chirimoyoDiscount / 100);


   result = '''
    Paltos:
      Quantity: $paltosNumber
      Unit Price: \$$paltosPrice
      Discount: ${paltoDiscount.toStringAsFixed(2)}%
    Limon:
      Quantity: $limonNumber
      Unit Price: \$$limonPrice
      Discount: ${limonDiscount.toStringAsFixed(2)}%
    Chirimoyos:
      Quantity: $chirimoyosNumber
      Unit Price: \$$chirimoyosPrice
      Discount: ${chirimoyoDiscount.toStringAsFixed(2)}%
    ------------------------------
    ''';

    if (paltosNumber + limonNumber + chirimoyosNumber > 1000) {
      totalPrice = totalPrice * 0.85;

      result += 'Additional 15% discount applied for bulk purchase over 1000 units.\n';
    }

    result += 'Total Price: \$${totalPrice.toStringAsFixed(2)}';
    return result;
  }


}