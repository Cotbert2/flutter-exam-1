import './../model/tree_model.dart';

class TreeController {
  String getDetailedPrice(String paltosInput, String limonInput, String chirimoyosInput) {

    if (paltosInput.isEmpty && limonInput.isEmpty && chirimoyosInput.isEmpty) {
      return 'Please enter at least one quantity.';
    }



    int paltosNumber = int.tryParse(paltosInput) ?? 0;
    int limonNumber = int.tryParse(limonInput) ?? 0;
    int chirimoyosNumber = int.tryParse(chirimoyosInput) ?? 0;

    if (paltosNumber < 0 || limonNumber < 0 || chirimoyosNumber < 0) {
      return 'Quantities must be non-negative integers.';
    }

    return TreeModel().computeDiscountedPrice(paltosNumber, limonNumber, chirimoyosNumber);
  }
}