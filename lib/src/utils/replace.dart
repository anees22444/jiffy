String replaceToLocaleNum(String input, String locale) {
  var localeNumbers = {
    'en': ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'],
    'en_gb': ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'],
    'ar': ['۰', '۱', '۲', '۳', '٤', '۵', '٦', '۷', '۸', '۹'],
    'fa': ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'],
    'bn': ['০', '১', '২', '৩', '৪', '৫', '৬', '৭', '৮', '৯'],
    'ur': ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'],
    'hi': ['०', '१', '२', '३', '४', '५', '६', '७', '८', '९'],
    'de': ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'],
    'es': ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'],
    'fr': ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'],
    'ja': ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'],
    'ru': ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'],
    'tr': ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
  };

  if (localeNumbers.containsKey(locale.toLowerCase())) {
    return _replace(input, localeNumbers['en']!,
        localeNumbers[locale.toLowerCase()]!);
  }

  var baseLocale = locale.split(RegExp(r'[_-]')).first.toLowerCase();
  if (localeNumbers.containsKey(baseLocale)) {
    return _replace(input, localeNumbers['en']!, localeNumbers[baseLocale]!);
  }

  return input;
}

String _replace(
    String input, List<String> enNumbers, List<String> localeNumbers) {
  for (var i = 0; i < enNumbers.length; i++) {
    input = input.replaceAll(enNumbers[i], localeNumbers[i]);
  }
  return input;
}
