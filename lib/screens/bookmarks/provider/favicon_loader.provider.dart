import 'package:flutter/foundation.dart';
import 'package:favicon/favicon.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/screens/bookmarks/model/favicon_loader.model.dart';

import 'package:linkdy/models/favicon_item.dart';
import 'package:linkdy/models/data/bookmarks.dart';

part 'favicon_loader.provider.g.dart';

// @riverpod
// FutureOr<FaviconItem?> fetchFavicon(FetchFaviconRef ref, String bookmarkUrl) async {
//   final exists = ref.watch(faviconStoreProvider).favicons.where((favicon) => favicon.url == bookmarkUrl).toList();
//   if (exists.isNotEmpty) {
//     return exists[0];
//   }

//   final faviconResult = await FaviconFinder.getBest(bookmarkUrl);
//   if (faviconResult == null) {
//     return null;
//   }

//   final result = await http.get(Uri.parse(faviconResult.url));
//   if (result.statusCode == 200) {
//     final faviconItem = FaviconItem(
//       url: bookmarkUrl,
//       favicon: faviconResult.url.contains("svg") ? result.body : base64.encode(result.bodyBytes),
//       isSvg: faviconResult.url.contains("svg"),
//     );
//     ref.read(faviconStoreProvider).favicons.add(faviconItem);
//     return faviconItem;
//   } else {
//     return null;
//   }
// }

@Riverpod(keepAlive: true)
class FaviconStore extends _$FaviconStore {
  @override
  FaviconLoaderModel build() {
    return FaviconLoaderModel(
      favicons: [],
    );
  }

  void clearFavicons() {
    state.favicons = [];
  }

  void loadFavicons(List<Bookmark> bookmarks) async {
    if (state.loadingFavicons == true) return;

    state.loadingFavicons = true;
    ref.notifyListeners();

    final mappedSaved = state.favicons.map((e) => e.url);
    final notExist = bookmarks.map((b) => b.url!).where((b) => !mappedSaved.contains(b)).toList();

    final favicons = await compute(
      (message) => Future.wait(message.map((e) => FaviconFinder.getBest(e))),
      notExist,
    );

    final faviconUrls = favicons
        .asMap()
        .entries
        .map(
          (e) => e.value != null
              ? FaviconItem(
                  url: notExist[e.key],
                  favicon: e.value!.url,
                  isSvg: e.value!.url.contains('svg'),
                )
              : null,
        )
        .where((e) => e != null)
        .toList() as List<FaviconItem>;

    state.favicons = [...state.favicons, ...faviconUrls];
    state.loadingFavicons = false;
    ref.notifyListeners();
  }
}
