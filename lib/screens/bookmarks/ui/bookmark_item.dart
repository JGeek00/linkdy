import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:linkdy/screens/bookmarks/provider/favicon_loader.provider.dart';

import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/models/data/bookmarks.dart';
import 'package:linkdy/providers/app_status.provider.dart';
import 'package:linkdy/utils/date_to_string.dart';
import 'package:super_context_menu/super_context_menu.dart';

class BookmarkItem extends ConsumerWidget {
  final Bookmark bookmark;
  final void Function(Bookmark bookmark) onSelect;
  final void Function(Bookmark bookmark) onDelete;
  final void Function(Bookmark bookmark) onReadUnread;
  final void Function(Bookmark bookmark) onArchiveUnarchive;
  final void Function(Bookmark bookmark) onEdit;
  final void Function(Bookmark bookmark) onShareInternally;
  final bool selected;
  final bool tabletMode;

  const BookmarkItem({
    super.key,
    required this.bookmark,
    required this.onSelect,
    required this.onDelete,
    required this.onReadUnread,
    required this.onArchiveUnarchive,
    required this.onEdit,
    required this.onShareInternally,
    required this.selected,
    required this.tabletMode,
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

    return Padding(
      padding: tabletMode ? const EdgeInsets.symmetric(horizontal: 8) : const EdgeInsets.all(0),
      child: ClipRRect(
        borderRadius: tabletMode ? BorderRadius.circular(28) : BorderRadius.circular(0),
        child: ContextMenuWidget(
          menuProvider: (request) => Menu(
            children: [
              MenuAction(
                callback: () => onReadUnread(bookmark),
                title: bookmark.unread == true
                    ? t.bookmarks.bookmarkOptions.markAsRead
                    : t.bookmarks.bookmarkOptions.markAsUnread,
                image: MenuImage.icon(
                  bookmark.unread == true ? Icons.mark_email_read_rounded : Icons.mark_as_unread_rounded,
                ),
              ),
              MenuAction(
                callback: () => onArchiveUnarchive(bookmark),
                title: bookmark.isArchived == true
                    ? t.bookmarks.bookmarkOptions.unarchive
                    : t.bookmarks.bookmarkOptions.archive,
                image: MenuImage.icon(
                  bookmark.isArchived == true ? Icons.unarchive_rounded : Icons.archive_rounded,
                ),
              ),
              Menu(
                title: t.bookmarks.bookmarkOptions.shareOptions,
                image: MenuImage.icon(Icons.share_rounded),
                children: [
                  MenuAction(
                    callback: () => onShareInternally(bookmark),
                    title: bookmark.shared == true
                        ? t.bookmarks.bookmarkOptions.unshareInternally
                        : t.bookmarks.bookmarkOptions.shareInternally,
                    image: MenuImage.icon(Icons.input_rounded),
                  ),
                  MenuAction(
                    callback: () => Share.shareUri(Uri.parse(bookmark.url!)),
                    title: t.bookmarks.bookmarkOptions.shareThirdPartyApp,
                    image: MenuImage.icon(Icons.output_rounded),
                  ),
                ],
              ),
              MenuSeparator(),
              MenuAction(
                callback: () => onEdit(bookmark),
                title: t.bookmarks.bookmarkOptions.edit,
                image: MenuImage.icon(Icons.edit_rounded),
              ),
              MenuAction(
                callback: () => onDelete(bookmark),
                title: t.bookmarks.bookmarkOptions.delete,
                image: MenuImage.icon(Icons.delete_rounded),
                attributes: const MenuActionAttributes(destructive: true),
              ),
            ],
          ),
          child: Material(
            color: selected && tabletMode
                ? Theme.of(context).colorScheme.primaryContainer
                : Theme.of(context).colorScheme.surface,
            child: InkWell(
              onTap: () => onSelect(bookmark),
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
                          if (bookmark.unread == true ||
                              bookmark.shared == true ||
                              bookmark.tagNames?.isNotEmpty == true)
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
          ),
        ),
      ),
    );
  }
}
