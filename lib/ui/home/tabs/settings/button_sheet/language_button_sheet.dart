import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../providers/local_provider.dart';
import '../../../../../ui_utiles.dart';

class LanguageButtonSheet extends StatelessWidget {
  const LanguageButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleProvider localeProvider = Provider.of<LocaleProvider>(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 15,
        children: [
          InkWell(
            onTap: () {
              localeProvider.getChangeLanguage('en');
            },
            child: localeProvider.currentLanguage == 'en'
                ? getSelectedItem(
                    context,
                    text: appTranslate(context).englishTitle,
                  )
                : getUnSelectedItem(
                    context,
                    text: appTranslate(context).englishTitle,
                  ),
          ),
          InkWell(
            onTap: () {
              localeProvider.getChangeLanguage('ar');
            },
            child: localeProvider.currentLanguage == 'ar'
                ? getSelectedItem(
                    context,
                    text: appTranslate(context).arabicTitle,
                  )
                : getUnSelectedItem(
                    context,
                    text: appTranslate(context).arabicTitle,
                  ),
          ),
        ],
      ),
    );
  }

  Widget getSelectedItem(BuildContext context, {required String text}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontSize: 25,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          Icon(Icons.check, color: Theme.of(context).colorScheme.secondary),
        ],
      ),
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
