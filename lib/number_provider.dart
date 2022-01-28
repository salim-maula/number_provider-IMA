
import 'package:flutter/foundation.dart';

class NumberProfider with ChangeNotifier {
  int _number = 0;
  int angka = 0;


  int get number => _number;

  set number(int value){
    _number = value;
    notifyListeners();
  }
}
