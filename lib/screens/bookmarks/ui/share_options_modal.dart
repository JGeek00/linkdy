import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import 'package:linkdy/widgets/custom_list_tile.dart';

import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/models/data/bookmarks.dart';

class ShareOptionsModal extends StatelessWidget {
  final Bookmark bookmark;
  final void Function(Bookmark bookmark) onShareInternally;

  const ShareOptionsModal({
    super.key,
    required this.bookmark,
    required this.onShareInternally,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      scrollable: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 24),
      title: Column(
        children: [
          Icon(
            Icons.share_rounded,
            size: 24,
            color: Theme.of(context).colorScheme.secondary,
          ),
          const SizedBox(height: 16),
          Text(t.bookmarks.shareOptions.shareOptions),
        ],
      ),
      content: Column(
        children: [
          CustomListTile(
            icon: Icons.input_rounded,
            title: bookmark.shared == true
                ? t.bookmarks.shareOptions.unshareInternally
                : t.bookmarks.shareOptions.shareInternally,
            subtitle: bookmark.shared == true
                ? t.bookmarks.shareOptions.unshareInternallyDescription
                : t.bookmarks.shareOptions.shareInternallyDescription,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            onTap: () {
              Navigator.pop(context);
              onShareInternally(bookmark);
            },
          ),
          CustomListTile(
            icon: Icons.output_rounded,
            title: t.bookmarks.shareOptions.shareExternally,
            subtitle: t.bookmarks.shareOptions.shareExternallyDescription,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            onTap: () {
              Navigator.pop(context);
              Share.shareUri(Uri.parse(bookmark.url!));
            },
          ),
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(t.generic.close),
            ),
          ],
        ),
      ],
    );
  }
}
