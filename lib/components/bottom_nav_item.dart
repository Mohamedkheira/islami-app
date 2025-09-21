import 'package:flutter/material.dart';
import 'package:isalmi/style/theme_data.dart';
import 'package:isalmi/ui_utiles.dart';

class BottomNavItem extends BottomNavigationBarItem {
  BottomNavItem({required String iconPath, required String title})
    : super(
        icon: ImageIcon(AssetImage(getImage(iconPath))),
        label: title,
        backgroundColor: MyThemeData.lightPrimary,
      );
}
