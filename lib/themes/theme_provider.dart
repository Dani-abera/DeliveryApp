import 'package:flutter/material.dart';
import 'light_mode.dart';
import 'dark_mode.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeDate => _themeData;

  bool get isDarkMode => _themeData == darkMode;
  set themeDate(ThemeData themeDate) {
    _themeData = themeDate;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeDate = darkMode;
    } else {
      themeDate = lightMode;
    }
  }
}
