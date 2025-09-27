import 'package:flutter/material.dart';

class MyThemeData {
  static final Color lightPrimary = Color(0XFFB7935F);
  static final Color darkPrimary = Color(0XFF141A2E);
  static final Color darkSecondary = Color(0XFFFACC1D);
  static final Color whiteColor = Colors.white;
  static bool isDark = false;

  static final ThemeData lightTheme = ThemeData(
    cardTheme: CardThemeData(
      color: Colors.white,
      surfaceTintColor: null
    ),
    useMaterial3: true,
    dividerColor: lightPrimary,
    dividerTheme: DividerThemeData(
      color: lightPrimary,
      thickness: 3,
      space: 0
    ),
    colorScheme: ColorScheme.fromSeed(
      onPrimaryContainer: lightPrimary,
      seedColor: lightPrimary,
      primary: lightPrimary,
      onPrimary: Colors.white,
      secondary: lightPrimary,
      inversePrimary: lightPrimary,
      onSurface:Colors.white,
      onSecondary: Colors.black,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black
      ),
      color: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontFamily: 'Massiri',
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: lightPrimary,
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

    textTheme: TextTheme(

      headlineLarge: TextStyle(
        fontFamily: 'Massiri',
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
        fontFamily: 'Massiri',
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),

      bodyLarge: TextStyle(
        color: lightPrimary,
        fontFamily: 'Massiri',
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        color: Colors.black,
        fontFamily: 'Inter',
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),

      titleMedium: TextStyle(
        color: Colors.black,
        fontFamily: 'Massiri',
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),

  );


  // dark
  static final ThemeData darkTheme = ThemeData(
    iconTheme: IconThemeData(
      color: darkSecondary,
    ),
    cardTheme: CardThemeData(
        color: darkPrimary,
        surfaceTintColor: null,
    ),

    useMaterial3: true,
    dividerColor: lightPrimary,
    dividerTheme: DividerThemeData(
      color: darkSecondary,
      thickness: 3,
      space: 0
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: darkPrimary,
    ),
    colorScheme: ColorScheme.fromSeed(
      onPrimaryContainer: darkSecondary,
      seedColor: darkPrimary,
      primary: darkPrimary,
      onPrimary: whiteColor,
      inversePrimary: darkSecondary,
      onSecondary: darkSecondary,
      onSurface: darkPrimary
    ),
    scaffoldBackgroundColor: Colors.transparent,

    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white
      ),
      color: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: whiteColor,
        fontFamily: 'Massiri',
        fontSize: 30,
        fontWeight: FontWeight.w700,

      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: darkPrimary,
      selectedItemColor: darkSecondary,
      unselectedItemColor: whiteColor,
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

    textTheme: TextTheme(
      headlineLarge: TextStyle(
        color: whiteColor,
        fontFamily: 'Massiri',
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
      bodyMedium: TextStyle(
        color: whiteColor,
        fontFamily: 'Massiri',
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
      bodySmall: TextStyle(
        color: Colors.white,
        fontFamily: 'Inter',
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
      bodyLarge: TextStyle(
        color: darkSecondary,
        fontFamily: 'Massiri',
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      titleMedium: TextStyle(
        color: Colors.white,
        fontFamily: 'Massiri',
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
