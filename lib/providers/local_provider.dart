import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider extends ChangeNotifier{
  late String currentLanguage;
  static const String langKey = 'Language';
  final SharedPreferences prefs;
  LocaleProvider(this.prefs){
    readSavedLocal();
  }



  void readSavedLocal()async{
    currentLanguage = prefs.getString(langKey)??'en';
  }

  void savedLocal() async{
   prefs.setString(langKey, currentLanguage);
  }
  void getChangeLanguage(String newLanguage){
    currentLanguage = newLanguage;
    notifyListeners();

    savedLocal();
  }

  String getLocaleChange(){
    return currentLanguage == 'en' ? "English" : "العربية";
  }

  static LocaleProvider get(BuildContext context){
    return Provider.of<LocaleProvider>(context);
  }

}