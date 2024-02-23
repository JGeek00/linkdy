import 'package:linkdy/constants/enums.dart';

class AppStatusModel {
  SelectedTheme selectedTheme;
  bool supportsDynamicTheme;
  bool useDynamicTheme;
  int selectedColor;

  AppStatusModel({
    this.selectedTheme = SelectedTheme.system,
    this.supportsDynamicTheme = false,
    this.useDynamicTheme = true,
    this.selectedColor = 0,
  });
}
