import 'package:linkdy/i18n/strings.g.dart';

String colorTranslation(int index) {
  // This indexes has to be in sync with colors array at constants/colors.dart
  List<String> translations = [
    "Linkding",
    t.colors.red,
    t.colors.green,
    t.colors.blue,
    t.colors.yellow,
    t.colors.orange,
    t.colors.brown,
    t.colors.cyan,
    t.colors.purple,
    t.colors.pink,
    t.colors.deepOrange,
    t.colors.indigo,
  ];
  return translations[index];
}
