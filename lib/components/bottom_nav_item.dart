import 'package:flutter/material.dart';
import 'package:isalmi/ui_utiles.dart';

class BottomNavItem extends BottomNavigationBarItem {
  BottomNavItem({
    required String title,
    required Color backgroundColor,
    String? iconPath,
    Icon? mainIcon,
  })
    : super(
        icon: mainIcon ?? ImageIcon(AssetImage(getImage(iconPath??"don't fined"))),
        label: title,
        backgroundColor: backgroundColor,
      );
}
