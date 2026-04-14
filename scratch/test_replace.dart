import '../lib/src/utils/replace.dart';

void main() {
  var testData = {
    'ar': '123',
    'bn': '123',
    'ur': '123',
    'hi': '123',
    'de': '123',
    'en_gb': '123',
    'ja': '123',
    'es': '123',
    'fr': '123',
    'ru': '123',
    'tr': '123',
    'ur_PK': '123',
    'unknown': '123'
  };

  print('Testing replaceToLocaleNum:');
  testData.forEach((locale, input) {
    try {
      var output = replaceToLocaleNum(input, locale);
      print('$locale: $input -> $output');
    } catch (e) {
      print('$locale: FAILED with error: $e');
    }
  });

  // Specifically check Bengali 2
  var bnOutput = replaceToLocaleNum('2', 'bn');
  if (bnOutput == '২') {
    print('Bengali 2 check: PASSED (২)');
  } else {
    print('Bengali 2 check: FAILED ($bnOutput)');
  }

  // Specifically check Hindi 2
  var hiOutput = replaceToLocaleNum('2', 'hi');
  if (hiOutput == '२') {
    print('Hindi 2 check: PASSED (२)');
  } else {
    print('Hindi 2 check: FAILED ($hiOutput)');
  }
}
