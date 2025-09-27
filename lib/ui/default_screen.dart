import 'package:flutter/material.dart';
import 'package:isalmi/providers/theme_provider.dart';
import 'package:isalmi/style/theme_data.dart';
import 'package:provider/provider.dart';

import '../ui_utiles.dart';

class DefaultScreen extends StatelessWidget {
  Widget body;

  DefaultScreen({required this.body, super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    bool isDark = themeProvider.isDarkEnabled();
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
