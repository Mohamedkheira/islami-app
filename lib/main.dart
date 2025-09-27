import 'package:flutter/material.dart';
import 'package:isalmi/l10n/app_localizations.dart';
import 'package:isalmi/providers/local_provider.dart';
import 'package:isalmi/providers/theme_provider.dart';

import 'package:isalmi/style/theme_data.dart';
import 'package:isalmi/ui/chapter_details/chapter_details_screen.dart';
import 'package:isalmi/ui/hadeth_details/hadeth_details_screen.dart';
import 'package:isalmi/ui/home/home_screen.dart';
import 'package:isalmi/ui/splash/splash_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> ThemeProvider(),),
        ChangeNotifierProvider(create: (_)=> LocaleProvider(),),
      ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = ThemeProvider.get(context);
    LocaleProvider localeProvider = LocaleProvider.get(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

      // to do change the language
      locale: Locale(localeProvider.currentLanguage),

      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: themeProvider.currentThemeMode,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        ChapterDetailsScreen.routeName: (_) => ChapterDetailsScreen(),
        HadethDetailsScreen.routeName: (_) => HadethDetailsScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
