import 'package:flutter/material.dart';

class MyThemeData {
  static final Color lightPrimary = Color(0XFFB7935F);
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    dividerColor: lightPrimary,
    dividerTheme: DividerThemeData(
      color: lightPrimary,
      thickness: 3,
      space: 0
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: lightPrimary,
      primary: lightPrimary,
      onPrimary: Colors.white,
      secondary: lightPrimary,
      onSecondary: Colors.black,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(
        size: 40,
      ),
      selectedLabelStyle: TextStyle(
        fontSize: 15
      ),
      unselectedIconTheme: IconThemeData(
        size: 35,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(

  );
}
