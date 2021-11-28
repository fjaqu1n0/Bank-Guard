import 'package:flutter/cupertino.dart';

class AmountProvider extends ChangeNotifier {
  int kSavings = 100000;

  int get getSavings => kSavings;

  void subtractSavings(int amount) {
    kSavings = kSavings - amount;
    notifyListeners();
  }
}
