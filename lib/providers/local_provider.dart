import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LocaleProvider extends ChangeNotifier{
  String currentLanguage = 'en';

  void getChangeLanguage(String newLanguage){
    currentLanguage = newLanguage;
    notifyListeners();
  }

  String getLocaleChange(){
    return currentLanguage == 'en' ? "English" : "العربية";
  }

  static LocaleProvider get(BuildContext context){
    return Provider.of<LocaleProvider>(context);
  }

}