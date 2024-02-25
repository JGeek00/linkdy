import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:linkdy/screens/bookmarks/provider/bookmarks.provider.dart';

import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/models/data/bookmarks.dart';

class DeleteBookmarkModal extends ConsumerWidget {
  final Bookmark bookmark;

  const DeleteBookmarkModal({
    Key? key,
    required this.bookmark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                ref.read(bookmarksProvider.notifier).deleteBookmark(bookmark);
              },
              child: Text(t.generic.confirm),
            ),
          ],
        ),
      ],
    );
  }
}
