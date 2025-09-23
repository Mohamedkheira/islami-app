import 'package:flutter/material.dart';
import 'package:isalmi/style/theme_data.dart';
import 'package:isalmi/ui/home/home_screen.dart';
import 'package:isalmi/ui_utiles.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'Splash-Screen';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = MyThemeData.isDark;
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Image.asset(getImage(
          isDark ? 'splashdark.jpg' : 'splash.jpg'),
      width: double.infinity,
      height: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
