import 'package:flutter/foundation.dart';

class SliderProvider with ChangeNotifier{

  double _value = 1.0;
  double get value => _value;

  void setVal(double val){
    _value = val;
    notifyListeners();
  }
}