import 'package:flutter/material.dart';
import 'package:isalmi/providers/theme_provider.dart';
import 'package:isalmi/ui_utiles.dart';
import 'package:isalmi/ui_utiles.dart';
import 'package:provider/provider.dart';

class ThemeButtonSheet extends StatelessWidget {
  const ThemeButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [
          InkWell(
            onTap: () {
              themeProvider.getChangeTheme(ThemeMode.light);
            },
            child: themeProvider.isDarkEnabled()
                ? getUnSelectedItem(context, text: appTranslate(context).light)
                : getSelectedItem(context, text: appTranslate(context).light),
          ),
          InkWell(
            onTap: () {
              themeProvider.getChangeTheme(ThemeMode.dark);
            },
            child: themeProvider.isDarkEnabled()
                ? getSelectedItem(context, text: appTranslate(context).dark)
                : getUnSelectedItem(context, text: appTranslate(context).dark),
          ),
        ],
      ),
    );
  }

  Widget getSelectedItem(BuildContext context, {required String text}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontSize: 25,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
        Icon(Icons.check, color: Theme.of(context).colorScheme.inversePrimary),
      ],
    );
  }

  Widget getUnSelectedItem(BuildContext context, {required String text}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [Text(text, style: Theme.of(context).textTheme.titleMedium)],
      ),
    );
  }
}
