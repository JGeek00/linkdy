import 'package:linkdy/constants/enums.dart';

class AppStatusModel {
  SelectedTheme selectedTheme;
  bool supportsDynamicTheme;
  bool useDynamicTheme;
  int selectedColor;
  OpenLinksBrowser openLinksBrowser;
  bool showFavicon;
  List<String> defaultTags;
  bool markAsUnreadDefault;

  AppStatusModel({
    this.selectedTheme = SelectedTheme.system,
    this.supportsDynamicTheme = false,
    this.useDynamicTheme = true,
    this.selectedColor = 0,
    this.openLinksBrowser = OpenLinksBrowser.integrated,
    this.showFavicon = true,
    required this.defaultTags,
    this.markAsUnreadDefault = false,
  });
}
