import 'package:flutter/material.dart';
import 'package:isalmi/style/theme_data.dart';
import 'package:isalmi/ui/chapter_details/chapter_details_screen.dart';
import 'package:isalmi/ui/hadeth_details/hadeth_details_screen.dart';
import 'package:isalmi/ui/home/home_screen.dart';
import 'package:isalmi/ui/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.dark,
      routes: {
        SplashScreen.routeName : (_) => SplashScreen(),
        HomeScreen.routeName : (_) => HomeScreen(),
        ChapterDetailsScreen.routeName : (_) => ChapterDetailsScreen(),
        HadethDetailsScreen.routeName : (_) => HadethDetailsScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}


