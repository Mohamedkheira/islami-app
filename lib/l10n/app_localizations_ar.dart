// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'الأسلامي';

  @override
  String get suraTitle => 'أسم السورة ';

  @override
  String get numberVerses => 'عدد الأيات';

  @override
  String get alaHadeth => 'الأحاديث';

  @override
  String get quranTab => 'قرآن';

  @override
  String get hadethTab => 'حديث';

  @override
  String get sebhaTab => 'التسبيح';

  @override
  String get radioTab => 'راديو';

  @override
  String get settingsTab => 'الأعدادات';
}
