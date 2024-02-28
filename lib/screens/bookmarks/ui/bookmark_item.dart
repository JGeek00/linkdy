import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:linkdy/screens/bookmarks/ui/share_options_modal.dart';
import 'package:linkdy/screens/bookmarks/provider/favicon_loader.provider.dart';

import 'package:linkdy/config/options.dart';
import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/models/data/bookmarks.dart';
import 'package:linkdy/providers/app_status.provider.dart';
import 'package:linkdy/providers/router.provider.dart';
import 'package:linkdy/router/paths.dart';
import 'package:linkdy/utils/date_to_string.dart';
import 'package:linkdy/utils/open_url.dart';

class BookmarkItem extends ConsumerWidget {
  final Bookmark bookmark;
  final void Function(Bookmark bookmark) onDelete;
  final void Function(Bookmark bookmark) onReadUnread;
  final void Function(Bookmark bookmark) onArchiveUnarchive;
  final void Function(Bookmark bookmark) onEdit;
  final void Function(Bookmark bookmark) onShareInternally;

  const BookmarkItem({
    super.key,
    required this.bookmark,
    required this.onDelete,
    required this.onReadUnread,
    required this.onArchiveUnarchive,
    required this.onEdit,
    required this.onShareInternally,
  });

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

    return Slidable(
      key: ValueKey(bookmark.id!),
      groupTag: ConfigOptions.slidableGroupTag,
      startActionPane: ActionPane(
        motion: const DrawerMotion(),
        extentRatio: 0.75,
        children: [
          SlidableAction(
            onPressed: (_) => onReadUnread(bookmark),
            backgroundColor: Colors.blue,
            label: bookmark.unread == true ? t.bookmarks.bookmarkOptions.read : t.bookmarks.bookmarkOptions.unread,
            icon: bookmark.unread == true ? Icons.mark_email_read_rounded : Icons.mark_as_unread_rounded,
            padding: const EdgeInsets.all(4),
          ),
          SlidableAction(
            onPressed: (ctx) => onArchiveUnarchive(bookmark),
            backgroundColor: Colors.grey,
            label: bookmark.isArchived == true
                ? t.bookmarks.bookmarkOptions.unarchive
                : t.bookmarks.bookmarkOptions.archive,
            icon: bookmark.isArchived == true ? Icons.unarchive_rounded : Icons.archive_rounded,
            padding: const EdgeInsets.all(4),
          ),
          SlidableAction(
            onPressed: (ctx) => showDialog(
              context: context,
              builder: (ctx) => ShareOptionsModal(bookmark: bookmark, onShareInternally: onShareInternally),
            ),
            backgroundColor: Colors.orange,
            label: t.bookmarks.bookmarkOptions.shareOptions,
            icon: Icons.share_rounded,
            padding: const EdgeInsets.all(4),
          ),
        ],
      ),
      endActionPane: ActionPane(
        motion: const DrawerMotion(),
        extentRatio: 0.5,
        children: [
          SlidableAction(
            onPressed: (ctx) => onEdit(bookmark),
            backgroundColor: Colors.green,
            label: t.bookmarks.bookmarkOptions.edit,
            icon: Icons.edit_rounded,
            padding: const EdgeInsets.all(4),
          ),
          SlidableAction(
            onPressed: (_) => onDelete(bookmark),
            backgroundColor: Colors.red,
            label: t.bookmarks.bookmarkOptions.delete,
            icon: Icons.delete_rounded,
            padding: const EdgeInsets.all(4),
          ),
        ],
      ),
      child: InkWell(
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
                          ? ClipRRect(
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
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                  ),
                  if (bookmark.shared == true) ...[
                    if (bookmark.tagNames?.isNotEmpty == true)
                      Container(
                        width: 1,
                        height: 12,
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        color: Theme.of(context).colorScheme.tertiary.withOpacity(0.3),
                      ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).colorScheme.primaryContainer,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.share_rounded,
                            size: 12,
                            color: Theme.of(context).colorScheme.onPrimaryContainer,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            t.bookmarks.bookmarkOptions.shared,
                            style: TextStyle(
                              fontSize: 10,
                              color: Theme.of(context).colorScheme.onPrimaryContainer,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                  if (bookmark.unread == true) ...[
                    if (bookmark.tagNames?.isNotEmpty == true || bookmark.shared == true)
                      Container(
                        width: 1,
                        height: 12,
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        color: Theme.of(context).colorScheme.tertiary.withOpacity(0.3),
                      ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).colorScheme.primaryContainer,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.mark_as_unread_rounded,
                            size: 12,
                            color: Theme.of(context).colorScheme.onPrimaryContainer,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            t.bookmarks.bookmarkOptions.unread,
                            style: TextStyle(
                              fontSize: 10,
                              color: Theme.of(context).colorScheme.onPrimaryContainer,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                  if (bookmark.dateModified != null) ...[
                    if (bookmark.unread == true || bookmark.shared == true || bookmark.tagNames?.isNotEmpty == true)
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
      ),
    );
  }
}
