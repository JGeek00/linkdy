import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:linkdy/screens/bookmarks/provider/favicon_loader.provider.dart';

import 'package:linkdy/models/data/bookmarks.dart';
import 'package:linkdy/providers/app_status.provider.dart';
import 'package:linkdy/providers/router.provider.dart';
import 'package:linkdy/router/paths.dart';
import 'package:linkdy/utils/date_to_string.dart';
import 'package:linkdy/utils/open_url.dart';

class BookmarkItem extends ConsumerWidget {
  final Bookmark bookmark;

  const BookmarkItem({
    Key? key,
    required this.bookmark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String validateStrings(String? string1, String? string2) {
      if (string1 != null && string1.isNotEmpty) {
        return string1;
      } else if (string2 != null && string2.isNotEmpty) {
        return string2;
      } else {
        return "";
      }
    }

    return InkWell(
      onTap: ref.watch(appStatusProvider).useInAppBrowser == true
          ? () => ref.watch(routerProvider).push(RoutesPaths.webview, extra: bookmark)
          : () => openUrl(bookmark.url!),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                if (ref.watch(appStatusProvider).showFavicon == true)
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ref.watch(faviconStoreProvider).loadingFavicons == true
                        ? Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Skeletonizer(
                                enabled: true,
                                ignoreContainers: true,
                                child: Container(
                                  width: 16,
                                  height: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )
                        : Builder(
                            builder: (context) {
                              final faviconItem = ref
                                  .watch(faviconStoreProvider)
                                  .favicons
                                  .where((f) => f.url == bookmark.url!)
                                  .toList();
                              if (faviconItem.isEmpty) return const SizedBox();
                              if (faviconItem[0].isSvg == true) {
                                return SvgPicture.network(
                                  faviconItem[0].favicon,
                                  width: 16,
                                  height: 16,
                                  placeholderBuilder: (context) => ClipRRect(
                                    borderRadius: BorderRadius.circular(4),
                                    child: Skeletonizer(
                                      enabled: true,
                                      ignoreContainers: true,
                                      child: Container(
                                        width: 16,
                                        height: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                return Image.network(
                                  faviconItem[0].favicon,
                                  width: 16,
                                  height: 16,
                                  loadingBuilder: (context, child, loadingProgress) {
                                    if (loadingProgress != null) {
                                      return ClipRRect(
                                        borderRadius: BorderRadius.circular(4),
                                        child: Skeletonizer(
                                          enabled: true,
                                          ignoreContainers: true,
                                          child: Container(
                                            width: 16,
                                            height: 16,
                                            color: Colors.black,
                                          ),
                                        ),
                                      );
                                    }
                                    return child;
                                  },
                                );
                              }
                            },
                          ),
                  ),
                Expanded(
                  child: Text(
                    validateStrings(bookmark.title, bookmark.websiteTitle),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              validateStrings(bookmark.description, bookmark.websiteDescription),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Expanded(
                  child: Text(
                    bookmark.tagNames?.map((tag) => "#$tag").join(" ") ?? '',
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                if (bookmark.dateModified != null) ...[
                  if (bookmark.tagNames?.isNotEmpty == true)
                    Container(
                      width: 1,
                      height: 12,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      color: Theme.of(context).colorScheme.tertiary.withOpacity(0.3),
                    ),
                  Text(
                    dateToString(bookmark.dateModified!),
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
