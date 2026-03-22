import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linkdy/providers/app_status.provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:slideable/slideable.dart';

import 'package:linkdy/models/data/bookmarks.dart';
import 'package:linkdy/i18n/strings.g.dart';

class BookmarkSlideMenu extends ConsumerWidget {
  final Widget child;
  final Bookmark bookmark;
  final void Function(Bookmark bookmark) onSelect;
  final void Function(Bookmark bookmark) onDelete;
  final void Function(Bookmark bookmark) onReadUnread;
  final void Function(Bookmark bookmark) onArchiveUnarchive;
  final void Function(Bookmark bookmark) onEdit;
  final void Function(Bookmark bookmark) onShareInternally;

  const BookmarkSlideMenu({
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
    if (ref.watch(appStatusProvider).enableSlideOptions == true) {
      return Slideable(
        resetSlide: false,
        items: [
          ActionItems(
            icon: _ActionItemContent(
              icon: Icon(
                bookmark.unread == true ? Icons.mark_email_read_rounded : Icons.mark_as_unread_rounded,
                color: Colors.white,
              ),
              text: bookmark.unread == true
                  ? t.bookmarks.bookmarkOptions.markAsRead
                  : t.bookmarks.bookmarkOptions.markAsUnread,
            ),
            onPress: () => onReadUnread(bookmark),
            backgroudColor: Colors.green,
          ),
          ActionItems(
            icon: _ActionItemContent(
              icon: Icon(
                bookmark.isArchived == true ? Icons.unarchive_rounded : Icons.archive_rounded,
                color: Colors.white,
              ),
              text: bookmark.isArchived == true
                  ? t.bookmarks.bookmarkOptions.unarchive
                  : t.bookmarks.bookmarkOptions.archive,
            ),
            onPress: () => onArchiveUnarchive(bookmark),
            backgroudColor: Colors.blueGrey,
          ),
          ActionItems(
            icon: _ActionItemContent(
              icon: Icon(
                bookmark.shared == true ? Icons.person_remove_rounded : Icons.person_add_rounded,
                color: Colors.white,
              ),
              text: bookmark.shared == true
                  ? t.bookmarks.bookmarkOptions.unshareInternally
                  : t.bookmarks.bookmarkOptions.shareInternally,
            ),
            onPress: () => onShareInternally(bookmark),
            backgroudColor: Colors.teal,
          ),
          ActionItems(
            icon: _ActionItemContent(
              icon: Icon(
                Icons.output_rounded,
                color: Colors.white,
              ),
              text: t.bookmarks.bookmarkOptions.shareThirdPartyApp,
            ),
            onPress: () {
              final box = context.findRenderObject() as RenderBox?;
              Share.share(
                bookmark.url!,
                sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
              );
            },
            backgroudColor: Colors.purple,
          ),
          ActionItems(
            icon: _ActionItemContent(
              icon: Icon(
                Icons.edit_rounded,
                color: Colors.white,
              ),
              text: t.bookmarks.bookmarkOptions.edit,
            ),
            onPress: () => onEdit(bookmark),
            backgroudColor: Colors.blue,
          ),
          ActionItems(
            icon: _ActionItemContent(
              icon: Icon(
                Icons.delete_rounded,
                color: Colors.white,
              ),
              text: t.bookmarks.bookmarkOptions.delete,
            ),
            onPress: () => onDelete(bookmark),
            backgroudColor: Colors.red,
          ),
        ],
        child: child,
      );
    } else {
      return child;
    }
  }
}

class _ActionItemContent extends StatelessWidget {
  final Icon icon;
  final String text;

  const _ActionItemContent({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        icon,
        SizedBox(height: 6),
        Text(
          text,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
