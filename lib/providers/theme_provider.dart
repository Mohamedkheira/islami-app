import 'package:flutter/material.dart';
import 'package:isalmi/providers/local_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier{
  late ThemeMode currentThemeMode;
  static const themeKey = 'theme';

  final SharedPreferences prefs;

  ThemeProvider(this.prefs){
    readSavedTheme();
  }




  void readSavedTheme() async{
    var isDark  = prefs.getBool(themeKey)?? false;
    currentThemeMode = isDark ? ThemeMode.dark: ThemeMode.light;
  }

  void savedTheme() async{
    prefs.setBool(themeKey, isDarkEnabled());
  }



  void getChangeTheme(ThemeMode newTheme){
    currentThemeMode = newTheme;
    notifyListeners(); // --> call to all clint
    savedTheme();
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