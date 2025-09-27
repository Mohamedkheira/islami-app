import 'package:flutter/material.dart';

import 'button_sheet/language_button_sheet.dart';
import 'button_sheet/theme_button_sheet.dart';

/// ToDo: StateManagement --> with Provider
class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        top: 80,
        start: 12,
        end: 12
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Theme', style: Theme.of(context).textTheme.bodyMedium),

          Divider(height: 10),
          SizedBox(height: 10),
          InkWell(
            onTap: (){
              showThemeButtonSheet(context);
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              child: Text('Light', style: Theme.of(context).textTheme.bodyLarge),
            ),
          ),

          SizedBox(height: 40),
          Text('Language', style: Theme.of(context).textTheme.bodyMedium),
          Divider(height: 10),
          SizedBox(height: 10),
          InkWell(
            onTap: (){
              showLanguageButtonSheet(context);
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              child: Text(
                'English',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showThemeButtonSheet(BuildContext context) {
    showModalBottomSheet(
      context: context, builder: (context) => ThemeButtonSheet(),

    );
  }
  void showLanguageButtonSheet(BuildContext context) {

    showModalBottomSheet(context: context, builder: (context) => LanguageButtonSheet(),

    );
  }
}
