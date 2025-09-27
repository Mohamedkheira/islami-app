import 'package:flutter/material.dart';
import 'package:isalmi/providers/local_provider.dart';
import 'package:provider/provider.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode currentThemeMode = ThemeMode.light;

  void getChangeTheme(ThemeMode newTheme){
    currentThemeMode = newTheme;
    notifyListeners(); // --> call to all clint
  }

  bool isDarkEnabled(){
    return currentThemeMode == ThemeMode.dark;
  }

  String getLocaleChange(){
    return currentThemeMode == ThemeMode.light ? "Light" : "Dark";
  }

  static ThemeProvider get(BuildContext context){
    return Provider.of<ThemeProvider>(context);
  }

}