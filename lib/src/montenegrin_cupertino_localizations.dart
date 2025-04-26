import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_custom.dart'
as date_symbol_data_custom;
import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/intl.dart' as intl;
import 'package:montenegrin_localization/montenegrin_localization.dart';


/// LocalizationDelegate for Montenegrin Cupertino Localizations.
class _MontenegrinCupertinoLocalizationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const _MontenegrinCupertinoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'cnr';

  @override
  Future<CupertinoLocalizations> load(Locale locale) async {
    final String localeName =
    intl.Intl.canonicalizedLocale(locale.toString());

    // Initialize custom date formatting for Montenegrin Latin.
    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: montenegrinLocaleDatePatterns,
      symbols:
      intl.DateSymbols.deserializeFromMap(montenegrinDateSymbols),
    );

    return SynchronousFuture<CupertinoLocalizations>(
      MontenegrinCupertinoLocalizations(
        localeName: localeName,
        decimalFormat: intl.NumberFormat('#,##0.###', 'en_US'),
        fullYearFormat: intl.DateFormat('y', localeName),
        dayFormat: intl.DateFormat('yMd', localeName),
        doubleDigitMinuteFormat: intl.DateFormat('yMMMd', localeName),
        mediumDateFormat: intl.DateFormat('EEE, MMM d', localeName),
        singleDigitHourFormat:
        intl.DateFormat('EEEE, MMMM d, y', localeName),
        singleDigitMinuteFormat:
        intl.DateFormat('MMMM y', localeName),
        singleDigitSecondFormat: intl.DateFormat('MMM d', localeName),
      ),
    );
  }

  @override
  bool shouldReload(_MontenegrinCupertinoLocalizationsDelegate old) =>
      false;
}

/// A custom set of localizations for the 'cnr' locale.
/// Provides Montenegrin translations for Cupertino widgets.
class MontenegrinCupertinoLocalizations
    extends GlobalCupertinoLocalizations {
  const MontenegrinCupertinoLocalizations({
    String localeName = 'cnr',
    required intl.DateFormat fullYearFormat,
    required intl.DateFormat dayFormat,
    required intl.DateFormat mediumDateFormat,
    required intl.DateFormat singleDigitHourFormat,
    required intl.DateFormat singleDigitMinuteFormat,
    required intl.DateFormat doubleDigitMinuteFormat,
    required intl.DateFormat singleDigitSecondFormat,
    required intl.NumberFormat decimalFormat,
  }) : super(
          localeName: localeName,
          fullYearFormat: fullYearFormat,
          dayFormat: dayFormat,
          mediumDateFormat: mediumDateFormat,
          singleDigitHourFormat: singleDigitHourFormat,
          singleDigitMinuteFormat: singleDigitMinuteFormat,
          doubleDigitMinuteFormat: doubleDigitMinuteFormat,
          singleDigitSecondFormat: singleDigitSecondFormat,
          decimalFormat: decimalFormat,
        );

  // #docregion Getters

  @override
  String get alertDialogLabel => 'Upozorenje';

  @override
  String get anteMeridiemAbbreviation => 'prijepodne';

  @override
  String get copyButtonLabel => 'Kopiraj';

  @override
  String get cutButtonLabel => 'Iseci';

  @override
  String get modalBarrierDismissLabel => 'Odbaci';

  @override
  String get pasteButtonLabel => 'Zalijepi';

  @override
  String get postMeridiemAbbreviation => 'popodne';

  @override
  String get selectAllButtonLabel => 'Odaberi sve';

  @override
  String get todayLabel => 'Danas';

  @override
  String get noSpellCheckReplacementsLabel => 'Nema prijedloga';

  // #enddocregion Getters

  // Implement other required getters with Montenegrin translations as needed.

  static const LocalizationsDelegate<CupertinoLocalizations>
  delegate = _MontenegrinCupertinoLocalizationsDelegate();

  @override
  String get datePickerDateOrderString => 'dMy';

  @override
  String get datePickerDateTimeOrderString => 'dMy Hms';

  @override
  String? get datePickerHourSemanticsLabelOther => 'sat';

  @override
  String? get datePickerMinuteSemanticsLabelOther => 'minuta';

  @override
  String get searchTextFieldPlaceholderLabel => 'Pretraga';

  @override
  String get tabSemanticsLabelRaw => 'Kartica od';

  @override
  String? get timerPickerHourLabelOther => 'sat';

  @override
  String? get timerPickerMinuteLabelOther => 'minuta';

  @override
  String? get timerPickerSecondLabelOther => 'sekunda';

  @override
  String get lookUpButtonLabel => 'Potraži';

  @override
  String get menuDismissLabel => 'Odbaci meni';

  @override
  String get searchWebButtonLabel => 'Pretraži web';

  @override
  String get shareButtonLabel => 'Podijeli...';

  @override
  String get clearButtonLabel => 'Očisti';
}
