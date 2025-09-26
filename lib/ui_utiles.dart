import 'package:flutter/cupertino.dart';
import 'package:isalmi/l10n/app_localizations.dart';

String getImage(String pathImage){
  return 'assets/images/$pathImage';
}

AppLocalizations appTranslate(BuildContext context){
  return AppLocalizations.of(context)!;
}

