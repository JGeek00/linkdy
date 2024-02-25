import 'package:flutter/material.dart';

import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/models/data/bookmarks.dart';
import 'package:linkdy/models/data/set_bookmark_data.dart';
import 'package:linkdy/services/api_client.dart';
import 'package:linkdy/utils/process_modal.dart';
import 'package:linkdy/utils/snackbar.dart';

class BookmarkCommonFunctions {
  static Future<bool> deleteBookmark({
    required Bookmark bookmark,
    required ApiClientService apiClient,
  }) async {
    final processModal = ProcessModal();
    processModal.open(t.bookmarks.bookmarkOptions.deletingBookmark);

    final result = await apiClient.postDeleteBookmark(bookmark.id!);

    processModal.close();
    if (result.successful == true) {
      showSnacbkar(label: t.bookmarks.bookmarkOptions.bookmarkDeleted, color: Colors.green);
    } else {
      showSnacbkar(label: t.bookmarks.bookmarkOptions.bookmarkNotDeleted, color: Colors.red);
    }
    return result.successful;
  }

  static Future<Bookmark?> markAsReadUnread({
    required Bookmark bookmark,
    required ApiClientService apiClient,
  }) async {
    final processModal = ProcessModal();
    processModal.open(
      bookmark.unread == true ? t.bookmarks.bookmarkOptions.markingAsRead : t.bookmarks.bookmarkOptions.markingAsUnead,
    );

    final result = await apiClient.putUpdateBookmark(
      bookmark.id!,
      SetBookmarkData(
        url: bookmark.url!,
        description: bookmark.description ?? '',
        isArchived: bookmark.isArchived ?? false,
        shared: bookmark.shared ?? false,
        unread: bookmark.unread == true ? false : true,
        tagNames: bookmark.tagNames?.join(",") ?? '',
        title: bookmark.title ?? '',
      ),
    );

    processModal.close();
    if (result.successful == true) {
      showSnacbkar(
        label: bookmark.unread == true
            ? t.bookmarks.bookmarkOptions.markedAsReadSuccessfully
            : t.bookmarks.bookmarkOptions.markedAsUnreadSuccessfully,
        color: Colors.green,
      );
      return result.content;
    } else {
      showSnacbkar(
        label: bookmark.unread == true
            ? t.bookmarks.bookmarkOptions.bookmarkNotMarkedAsRead
            : t.bookmarks.bookmarkOptions.bookmarkNotMarkedAsUnread,
        color: Colors.red,
      );
      return null;
    }
  }

  static Future<Bookmark?> archiveUnarchive({
    required Bookmark bookmark,
    required ApiClientService apiClient,
  }) async {
    final processModal = ProcessModal();
    processModal.open(
      bookmark.unread == true
          ? t.bookmarks.bookmarkOptions.archivingBookmark
          : t.bookmarks.bookmarkOptions.unarchivingBookmark,
    );

    final result = await apiClient.putUpdateBookmark(
      bookmark.id!,
      SetBookmarkData(
        url: bookmark.url!,
        description: bookmark.description ?? '',
        unread: bookmark.unread ?? false,
        shared: bookmark.shared ?? false,
        isArchived: bookmark.isArchived == true ? false : true,
        tagNames: bookmark.tagNames?.join(",") ?? '',
        title: bookmark.title ?? '',
      ),
    );

    processModal.close();
    if (result.successful == true) {
      showSnacbkar(
        label: bookmark.isArchived == true
            ? t.bookmarks.bookmarkOptions.bookmarkUnrchivedSuccessfully
            : t.bookmarks.bookmarkOptions.bookmarkArchivedSuccessfully,
        color: Colors.green,
      );
      return result.content;
    } else {
      showSnacbkar(
        label: bookmark.isArchived == true
            ? t.bookmarks.bookmarkOptions.bookmarkNotUnrchived
            : t.bookmarks.bookmarkOptions.bookmarkNotArchived,
        color: Colors.red,
      );
      return null;
    }
  }
}
