import '../../enums/start_of_week.dart';
import '../../utils/replace.dart';
import '../locale.dart';
import '../relative_date_time.dart';

class HiLocale extends Locale {
  @override
  String code() => 'hi';

  @override
  List<String> ordinals() => List.from(['', '', '', ''], growable: false);

  @override
  StartOfWeek startOfWeek() => StartOfWeek.sunday;

  @override
  RelativeDateTime relativeDateTime() => HiRelativeTime();
}

class HiRelativeTime extends RelativeDateTime {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'पहले';
  @override
  String suffixFromNow() => 'में';
  @override
  String lessThanOneMinute(int seconds) => 'कुछ ही क्षण';
  @override
  String aboutAMinute(int minutes) => 'एक मिनट';
  @override
  String minutes(int minutes) => replaceToLocaleNum('$minutes मिनट', 'hi');
  @override
  String aboutAnHour(int minutes) => 'एक घंटा';
  @override
  String hours(int hours) => replaceToLocaleNum('$hours घंटे', 'hi');
  @override
  String aDay(int hours) => 'एक दिन';
  @override
  String days(int days) => replaceToLocaleNum('$days दिन', 'hi');
  @override
  String aboutAMonth(int days) => 'एक महीने';
  @override
  String months(int months) => replaceToLocaleNum('$months महीने', 'hi');
  @override
  String aboutAYear(int year) => 'एक वर्ष';
  @override
  String years(int years) => replaceToLocaleNum('$years वर्ष', 'hi');

  @override
  String wordSeparator() => ' ';
}
