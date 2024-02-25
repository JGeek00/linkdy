import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:linkdy/screens/bookmarks/provider/favicon_loader.provider.dart';

import 'package:linkdy/models/data/bookmarks.dart';
import 'package:linkdy/providers/app_status_provider.dart';
import 'package:linkdy/providers/router_provider.dart';
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
                  FutureBuilder(
                    future: ref.read(fetchFaviconProvider(bookmark.url!).future),
                    builder: (context, snapshot) {
                      if (snapshot.hasData == false) {
                        return Padding(
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
                        );
                      }
                      return Row(
                        children: [
                          if (snapshot.data!.isSvg == true)
                            SvgPicture.string(
                              snapshot.data!.favicon,
                              width: 16,
                              height: 16,
                            ),
                          if (snapshot.data!.isSvg == false)
                            Image.memory(
                              base64Decode(snapshot.data!.favicon),
                              width: 16,
                              height: 16,
                            ),
                          const SizedBox(width: 8),
                        ],
                      );
                    },
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
