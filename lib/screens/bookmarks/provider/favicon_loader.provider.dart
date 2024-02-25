import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:favicon/favicon.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/screens/bookmarks/model/favicon_loader.model.dart';

import 'package:linkdy/models/favicon_item.dart';

part 'favicon_loader.provider.g.dart';

@riverpod
FutureOr<FaviconItem?> fetchFavicon(FetchFaviconRef ref, String bookmarkUrl) async {
  final exists = ref.watch(faviconStoreProvider).favicons.where((favicon) => favicon.url == bookmarkUrl).toList();
  if (exists.isNotEmpty) {
    return exists[0];
  }

  final faviconResult = await FaviconFinder.getBest(bookmarkUrl);
  if (faviconResult == null) {
    return null;
  }

  final result = await http.get(Uri.parse(faviconResult.url));
  if (result.statusCode == 200) {
    final faviconItem = FaviconItem(
      url: bookmarkUrl,
      favicon: faviconResult.url.contains("svg") ? result.body : base64.encode(result.bodyBytes),
      isSvg: faviconResult.url.contains("svg"),
    );
    ref.read(faviconStoreProvider).favicons.add(faviconItem);
    return faviconItem;
  } else {
    return null;
  }
}

@Riverpod(keepAlive: true)
class FaviconStore extends _$FaviconStore {
  @override
  FaviconLoaderModel build() {
    return FaviconLoaderModel(
      favicons: [],
    );
  }
}
