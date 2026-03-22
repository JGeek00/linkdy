import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:share_plus/share_plus.dart';
import 'package:super_context_menu/super_context_menu.dart';

import 'package:linkdy/models/data/bookmarks.dart';
import 'package:linkdy/i18n/strings.g.dart';

// Wait until the context menu close animation animation finishes
Duration _durationTime = const Duration(milliseconds: 150);

class BookmarkContextMenu extends ConsumerWidget {
  final Widget child;
  final Bookmark bookmark;
  final void Function(Bookmark bookmark) onSelect;
  final void Function(Bookmark bookmark) onDelete;
  final void Function(Bookmark bookmark) onReadUnread;
  final void Function(Bookmark bookmark) onArchiveUnarchive;
  final void Function(Bookmark bookmark) onEdit;
  final void Function(Bookmark bookmark) onShareInternally;

  const BookmarkContextMenu({
    super.key,
    required this.bookmark,
    required this.child,
    required this.onSelect,
    required this.onDelete,
    required this.onReadUnread,
    required this.onArchiveUnarchive,
    required this.onEdit,
    required this.onShareInternally,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ContextMenuWidget(
      menuProvider: (request) => Menu(
        children: [
          MenuAction(
            callback: () => Future.delayed(_durationTime).then((value) => onReadUnread(bookmark)),
            title: bookmark.unread == true
                ? t.bookmarks.bookmarkOptions.markAsRead
                : t.bookmarks.bookmarkOptions.markAsUnread,
            image: MenuImage.icon(
              bookmark.unread == true ? Icons.mark_email_read_rounded : Icons.mark_as_unread_rounded,
            ),
          ),
          MenuAction(
            callback: () => Future.delayed(_durationTime).then((value) => onArchiveUnarchive(bookmark)),
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
                callback: () => Future.delayed(_durationTime).then((value) => onShareInternally(bookmark)),
                title: bookmark.shared == true
                    ? t.bookmarks.bookmarkOptions.unshareInternally
                    : t.bookmarks.bookmarkOptions.shareInternally,
                image: MenuImage.icon(Icons.input_rounded),
              ),
              MenuAction(
                callback: () {
                  final box = context.findRenderObject() as RenderBox?;
                  Future.delayed(_durationTime).then(
                    (value) => Share.share(
                      bookmark.url!,
                      sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
                    ),
                  );
                },
                title: t.bookmarks.bookmarkOptions.shareThirdPartyApp,
                image: MenuImage.icon(Icons.output_rounded),
              ),
            ],
          ),
          MenuSeparator(),
          MenuAction(
            callback: () => Future.delayed(_durationTime).then((value) => onEdit(bookmark)),
            title: t.bookmarks.bookmarkOptions.edit,
            image: MenuImage.icon(Icons.edit_rounded),
          ),
          MenuAction(
            callback: () => Future.delayed(_durationTime).then((value) => onDelete(bookmark)),
            title: t.bookmarks.bookmarkOptions.delete,
            image: MenuImage.icon(Icons.delete_rounded),
            attributes: const MenuActionAttributes(destructive: true),
          ),
        ],
      ),
      child: child,
    );
  }
}
