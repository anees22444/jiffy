import '../../enums/start_of_week.dart';
import '../../utils/replace.dart';
import '../locale.dart';
import '../relative_date_time.dart';

class UrLocale extends Locale {
  @override
  String code() => 'ur';

  @override
  List<String> ordinals() => List.from(['', '', '', ''], growable: false);

  @override
  StartOfWeek startOfWeek() => StartOfWeek.sunday;

  @override
  RelativeDateTime relativeDateTime() => UrRelativeTime();
}

class UrRelativeTime extends RelativeDateTime {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'پہلے';
  @override
  String suffixFromNow() => 'بعد';
  @override
  String lessThanOneMinute(int seconds) => 'ابھی ابھی';
  @override
  String aboutAMinute(int minutes) => 'ایک منٹ';
  @override
  String minutes(int minutes) => replaceToLocaleNum('$minutes منٹ', 'ur');
  @override
  String aboutAnHour(int minutes) => 'ایک گھنٹہ';
  @override
  String hours(int hours) => replaceToLocaleNum('$hours گھنٹے', 'ur');
  @override
  String aDay(int hours) => 'ایک دن';
  @override
  String days(int days) => replaceToLocaleNum('$days دن', 'ur');
  @override
  String aboutAMonth(int days) => 'ایک مہینہ';
  @override
  String months(int months) => replaceToLocaleNum('$months مہینے', 'ur');
  @override
  String aboutAYear(int year) => 'ایک سال';
  @override
  String years(int years) => replaceToLocaleNum('$years سال', 'ur');
  @override
  String wordSeparator() => ' ';
}