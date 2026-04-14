# Jiffy

Jiffy is a Flutter (Android, IOS and Web) date time package for parsing, manipulating, querying and formatting dates and time

# Usage

## Format Dates
```dart
Jiffy.parse('2021/01/19').format(pattern: 'MMMM do yyyy, h:mm:ss a'); // January 1st 2021, 12:00:00 AM
Jiffy.now().format(pattern: 'EEEE'); // Tuesday
Jiffy.now().format(pattern: 'MMM do yy'); // Mar 2nd 21
Jiffy.now().format(pattern: 'yyyy [escaped] yyyy'); // 2021 escaped 2021
Jiffy.now().format(); // 2021-03-02T15:18:29.922343

Jiffy.parseFromList([2020, 10, 19]).yMMMMd; // January 19, 2021

Jiffy.parseFromMap({
  Unit.year: 2020,
  Unit.month: 10,
  Unit.day: 19,
  Unit.hour: 19
}).yMMMMEEEEdjm; // Monday, October 19, 2020 7:14 PM

//  You can also use pre-set formats
Jiffy.parse('19, Jan 2021', pattern: 'dd, MMM yyyy').yMMMMd; // January 19, 2021
Jiffy.now().yMMMMEEEEdjm; // Tuesday, March 2, 2021 3:20 PM
```

## Relative Time
```dart
// From X
Jiffy.parse('1997/09/23').from(Jiffy.parse('2002/10/26')); // 5 years ago
// From Now
Jiffy.parse('1997/09/23').fromNow(); // 25 years ago

// To X
Jiffy.parse('1997/09/23').to(Jiffy.parse('2002/10/26')); // in 5 years
// To Now
Jiffy.parse('1997/09/23').toNow(); // in 25 years
```

## Manipulation

```dart
var jiffy = Jiffy.now().add(days: 1);
jiffy.yMMMMd; // March 3, 2021

Jiffy.now().subtract(days: 1).yMMMMd; // March 1, 2021

Jiffy.now()
  .add(hours: 3, days: 1)
  .subtract(minutes: 30, months: 1)
  .yMMMMEEEEdjm; // Wednesday, February 3, 2021 6:07 PM

Jiffy.parse('1997/09/23')
    .startOf(Unit.year)
    .yMMMMEEEEd; // Wednesday, January 1, 1997

Jiffy.parse('1997/09/23')
    .endOf(Unit.month)
    .yMMMMEEEEd; // Tuesday, September 30, 1997
```

## Querying

```dart
Jiffy.parse('1997/9/23').isBefore(Jiffy.parse('1997/9/24')); // true

Jiffy.parse('1997/9/23').isAfter(Jiffy.parse('1997/9/20')); // true

Jiffy.parse('1997/9/23').isSame(Jiffy.parse('1997/9/23')); // true

Jiffy.parse('1997/9/23')
  .isBetween(Jiffy.parse('1997/9/20'), Jiffy.parse('1997/9/24')); // true
```

## Locale Support
```dart
// Get current locale code, by default it is en_us
Jiffy.now().localeCode; // en_us

//  Setting your preferred locale
await Jiffy.setLocale('fr_ca');
Jiffy.now().yMMMMEEEEdjm; // dimanche 26 février 2023 12 h 03

await Jiffy.setLocale('ja');
Jiffy.now().yMMMMEEEEdjm; // 2023年2月26日日曜日 12:02

await Jiffy.setLocale('zh_cn');
Jiffy.now().yMMMMEEEEdjm; // 2023年2月26日星期日 下午12:03

await Jiffy.setLocale('ur');
Jiffy.now().yMMMMEEEEdjm; // اتوار، 26 فروری، 2023 12:03 PM
```

## Supported Locales
Jiffy supports a wide range of locales. Here's a list of supported locale codes:

| Language | Locale Codes |
| --- | --- |
| **English** | `en`, `en_us`, `en_sg`, `en_au`, `en_ca`, `en_gb`, `en_ie`, `en_il`, `en_nz` |
| **Spanish** | `es`, `es_do`, `es_us` |
| **French** | `fr`, `fr_ch`, `fr_ca` |
| **Chinese** | `zh`, `zh_cn`, `zh_hk`, `zh_tw` |
| **German** | `de`, `de_de`, `de_at`, `de_ch` |
| **Italian** | `it`, `it_ch` |
| **Arabic** | `ar`, `ar_ly`, `ar_dz`, `ar_kw`, `ar_sa`, `ar_ma`, `ar_tn` |
| **Urdu** | `ur`, `ur_pk` |
| **Azerbaijani** | `az` |
| **Indonesian** | `id` |
| **Japanese** | `ja` |
| **Korean** | `ko` |
| **Russian** | `ru` |
| **Ukrainian** | `uk` |
| **Hindi** | `hi` |
| **Hungarian** | `hu`, `hu_hu` |
| **Portuguese** | `pt`, `pt_br` |
| **Polish** | `pl` |
| **Turkish** | `tr` |
| **Swedish** | `sv` |
| **Norwegian Bokmål** | `nb` |
| **Persian** | `fa` |
| **Bengali** | `bn` |
| **Dutch** | `nl` |
| **Thai** | `th` |
| **Slovak** | `sk` |
| **Czech** | `cs` |

