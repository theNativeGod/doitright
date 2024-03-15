import 'package:flutter/material.dart';

class ProfileProvider with ChangeNotifier {
  int _bottomSheetIndex = 0;

  get bottomSheetIndex => _bottomSheetIndex;

  set bottomSheetIndex(value) {
    _bottomSheetIndex = value;
    notifyListeners();
  }
}
