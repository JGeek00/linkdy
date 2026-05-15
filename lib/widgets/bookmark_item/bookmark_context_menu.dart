import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:share_plus/share_plus.dart';

import 'package:linkdy/models/data/bookmarks.dart';
import 'package:linkdy/i18n/strings.g.dart';

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

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      builder: (ctx) => SafeArea(
        bottom: true,
        top: true,
        child: Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                bookmark.unread == true ? Icons.mark_email_read_rounded : Icons.mark_as_unread_rounded,
              ),
              title: Text(
                bookmark.unread == true
                    ? t.bookmarks.bookmarkOptions.markAsRead
                    : t.bookmarks.bookmarkOptions.markAsUnread,
              ),
              onTap: () {
                Navigator.pop(ctx);
                onReadUnread(bookmark);
              },
            ),
            ListTile(
              leading: Icon(
                bookmark.isArchived == true ? Icons.unarchive_rounded : Icons.archive_rounded,
              ),
              title: Text(
                bookmark.isArchived == true
                    ? t.bookmarks.bookmarkOptions.unarchive
                    : t.bookmarks.bookmarkOptions.archive,
              ),
              onTap: () {
                Navigator.pop(ctx);
                onArchiveUnarchive(bookmark);
              },
            ),
            ExpansionTile(
              leading: const Icon(Icons.share_rounded),
              title: Text(t.bookmarks.bookmarkOptions.shareOptions),
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.only(left: 44),
                  leading: const Icon(Icons.input_rounded),
                  title: Text(
                    bookmark.shared == true
                        ? t.bookmarks.bookmarkOptions.unshareInternally
                        : t.bookmarks.bookmarkOptions.shareInternally,
                  ),
                  onTap: () {
                    Navigator.pop(ctx);
                    onShareInternally(bookmark);
                  },
                ),
                ListTile(
                  contentPadding: const EdgeInsets.only(left: 44),
                  leading: const Icon(Icons.output_rounded),
                  title: Text(t.bookmarks.bookmarkOptions.shareThirdPartyApp),
                  onTap: () {
                    Navigator.pop(ctx);
                    Share.share(bookmark.url!);
                  },
                ),
              ],
            ),
            ListTile(
              leading: const Icon(Icons.edit_rounded),
              title: Text(t.bookmarks.bookmarkOptions.edit),
              onTap: () {
                Navigator.pop(ctx);
                onEdit(bookmark);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.delete_rounded,
                color: Theme.of(ctx).colorScheme.error,
              ),
              title: Text(
                t.bookmarks.bookmarkOptions.delete,
                style: TextStyle(color: Theme.of(ctx).colorScheme.error),
              ),
              onTap: () {
                Navigator.pop(ctx);
                onDelete(bookmark);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onLongPress: () => _showBottomSheet(context),
      child: child,
    );
  }
}
