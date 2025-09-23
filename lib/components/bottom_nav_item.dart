import 'package:flutter/material.dart';
import 'package:isalmi/ui_utiles.dart';

class BottomNavItem extends BottomNavigationBarItem {
  BottomNavItem({
    required String iconPath,
    required String title,
    required Color backgroundColor,
  })
    : super(
        icon: ImageIcon(AssetImage(getImage(iconPath))),
        label: title,
        backgroundColor: backgroundColor,
      );
}
