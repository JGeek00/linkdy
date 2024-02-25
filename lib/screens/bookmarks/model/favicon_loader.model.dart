import 'package:linkdy/models/favicon_item.dart';

class FaviconLoaderModel {
  List<FaviconItem> favicons;
  bool loadingFavicons;

  FaviconLoaderModel({
    required this.favicons,
    this.loadingFavicons = true,
  });
}
