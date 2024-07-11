import 'package:flutter/foundation.dart';

class FavProvider with ChangeNotifier {
  List<int> _selectedItem = [];

  List<int> get selectedItem => _selectedItem;

  void setVal(int index) {
    if (_selectedItem.contains(index)) {
      _selectedItem.remove(index);
    } else {
      _selectedItem.add(index);
    }
    notifyListeners();
  }
}
