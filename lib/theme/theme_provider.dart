import 'package:chocolate_app/theme/theme.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _currentTheme = lightMode;

  ThemeData get currentTheme => _currentTheme;

  set currentTheme(ThemeData themeData){
    _currentTheme = themeData;
    notifyListeners();
  }

  void toggleTheme(){
    if(_currentTheme == lightMode){
      currentTheme = darkMode;
    }else {
      currentTheme = lightMode;
    }
  }
}