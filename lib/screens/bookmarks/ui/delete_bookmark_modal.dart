import 'package:flutter/material.dart';

import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/models/data/bookmarks.dart';

class DeleteBookmarkModal extends StatelessWidget {
  final Bookmark bookmark;
  final void Function(Bookmark) onDelete;

  const DeleteBookmarkModal({
    super.key,
    required this.bookmark,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
        children: [
          Icon(
            Icons.delete_rounded,
            size: 24,
            color: Theme.of(context).colorScheme.secondary,
          ),
          const SizedBox(height: 16),
          Text(t.bookmarks.bookmarkOptions.deleteBookmark),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(t.bookmarks.bookmarkOptions.followingBookmarkDeleted),
          const SizedBox(height: 8),
          Center(
            child: Text(
              bookmark.url!,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(t.generic.cancel),
            ),
            const SizedBox(width: 8),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                onDelete(bookmark);
              },
              child: Text(t.generic.confirm),
            ),
          ],
        ),
      ],
    );
  }
}
