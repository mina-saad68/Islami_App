import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier{
  String languageCode='en';
  ThemeMode myTheme = ThemeMode.light;

  changeLang(String code){
    languageCode=code;
    notifyListeners();
  }

  changeTheme (ThemeMode mode){
    myTheme = mode;
    notifyListeners();
  }
}