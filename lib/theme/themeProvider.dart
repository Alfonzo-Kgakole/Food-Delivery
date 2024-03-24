import 'package:flutter/material.dart';
import 'package:fooddev/theme/lightMode.dart';
import 'package:fooddev/theme/dartMode.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  bool get isDartMode => _themeData == dartMode;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme(){
    if(_themeData == lightMode) {
      themeData = dartMode;
    } else {
      themeData = lightMode;
    }
  }
}
