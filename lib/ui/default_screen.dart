import 'package:flutter/material.dart';
import 'package:isalmi/style/theme_data.dart';

import '../ui_utiles.dart';

class DefaultScreen extends StatelessWidget {
  Widget body;

  DefaultScreen({required this.body, super.key});

  @override
  Widget build(BuildContext context) {
    bool isDark = MyThemeData.isDark;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            getImage(isDark ? 'darkbackground.jpg' : 'lightbackground.jpg'),
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: Text(appTranslate(context).appTitle,)),
        body: body,
      ),
    );
  }
}
