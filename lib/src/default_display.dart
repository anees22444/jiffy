import 'package:intl/intl.dart';
import 'utils/replace.dart';

class DefaultDisplay {
  String E(DateTime dateTime) => _format(DateFormat.E(), dateTime);

  // ignore: non_constant_identifier_names
  String EEEE(DateTime dateTime) => _format(DateFormat.EEEE(), dateTime);

  // ignore: non_constant_identifier_names
  String Md(DateTime dateTime) => _format(DateFormat.Md(), dateTime);

  // ignore: non_constant_identifier_names
  String MEd(DateTime dateTime) => _format(DateFormat.MEd(), dateTime);

  // ignore: non_constant_identifier_names
  String MMM(DateTime dateTime) => _format(DateFormat.MMM(), dateTime);

  // ignore: non_constant_identifier_names
  String MMMd(DateTime dateTime) => _format(DateFormat.MMMd(), dateTime);

  // ignore: non_constant_identifier_names
  String MMMEd(DateTime dateTime) => _format(DateFormat.MMMEd(), dateTime);

  // ignore: non_constant_identifier_names
  String MMMM(DateTime dateTime) => _format(DateFormat.MMMM(), dateTime);

  // ignore: non_constant_identifier_names
  String MMMMd(DateTime dateTime) => _format(DateFormat.MMMMd(), dateTime);

  // ignore: non_constant_identifier_names
  String MMMMEEEEd(DateTime dateTime) =>
      _format(DateFormat.MMMMEEEEd(), dateTime);

  // ignore: non_constant_identifier_names
  String QQQ(DateTime dateTime) => _format(DateFormat.QQQ(), dateTime);

  // ignore: non_constant_identifier_names
  String QQQQ(DateTime dateTime) => _format(DateFormat.QQQQ(), dateTime);

  String yM(DateTime dateTime) => _format(DateFormat.yM(), dateTime);

  String yMd(DateTime dateTime) => _format(DateFormat.yMd(), dateTime);

  String yMEd(DateTime dateTime) => _format(DateFormat.yMEd(), dateTime);

  String yMMM(DateTime dateTime) => _format(DateFormat.yMMM(), dateTime);

  String yMMMd(DateTime dateTime) => _format(DateFormat.yMMMd(), dateTime);

  String yMMMdjm(DateTime dateTime) => replaceToLocaleNum(
      DateFormat.yMMMd().add_jm().format(dateTime).replaceAll(' ', ' '),
      Intl.getCurrentLocale());

  String yMMMEd(DateTime dateTime) => _format(DateFormat.yMMMEd(), dateTime);

  String yMMMEdjm(DateTime dateTime) => replaceToLocaleNum(
      DateFormat.yMMMEd().add_jm().format(dateTime).replaceAll(' ', ' '),
      Intl.getCurrentLocale());

  String yMMMM(DateTime dateTime) => _format(DateFormat.yMMMM(), dateTime);

  String yMMMMd(DateTime dateTime) => _format(DateFormat.yMMMMd(), dateTime);

  String yMMMMdjm(DateTime dateTime) => replaceToLocaleNum(
      DateFormat.yMMMMd().add_jm().format(dateTime).replaceAll(' ', ' '),
      Intl.getCurrentLocale());

  String yMMMMEEEEd(DateTime dateTime) =>
      _format(DateFormat.yMMMMEEEEd(), dateTime);

  String yMMMMEEEEdjm(DateTime dateTime) => replaceToLocaleNum(
      DateFormat.yMMMMEEEEd().add_jm().format(dateTime).replaceAll(' ', ' '),
      Intl.getCurrentLocale());

  String yQQQ(DateTime dateTime) => _format(DateFormat.yQQQ(), dateTime);

  String yQQQQ(DateTime dateTime) => _format(DateFormat.yQQQQ(), dateTime);

  String H(DateTime dateTime) => _format(DateFormat.H(), dateTime);

  // ignore: non_constant_identifier_names
  String Hm(DateTime dateTime) => _format(DateFormat.Hm(), dateTime);

  // ignore: non_constant_identifier_names
  String Hms(DateTime dateTime) => _format(DateFormat.Hms(), dateTime);

  String j(DateTime dateTime) => replaceToLocaleNum(
      DateFormat.j().format(dateTime).replaceAll(' ', ' '),
      Intl.getCurrentLocale());

  String jm(DateTime dateTime) => replaceToLocaleNum(
      DateFormat.jm().format(dateTime).replaceAll(' ', ' '),
      Intl.getCurrentLocale());

  String jms(DateTime dateTime) => replaceToLocaleNum(
      DateFormat.jms().format(dateTime).replaceAll(' ', ' '),
      Intl.getCurrentLocale());

  String _format(DateFormat dateFormat, DateTime dateTime) {
    return replaceToLocaleNum(dateFormat.format(dateTime), Intl.getCurrentLocale());
  }
}
