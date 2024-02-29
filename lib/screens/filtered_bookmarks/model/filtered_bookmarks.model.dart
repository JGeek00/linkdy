import 'package:go_router/go_router.dart';

import 'package:linkdy/config/options.dart';
import 'package:linkdy/constants/enums.dart';
import 'package:linkdy/models/data/bookmarks.dart';
import 'package:linkdy/models/data/tags.dart';

class FilteredBookmarksModel {
  FilteredBookmarksMode filteredBookmarksMode;
  String? tagId;
  Tag? tag;
  int currentPage;
  int limit;
  LoadStatus initialLoadStatus;
  List<Bookmark> bookmarks;
  int maxNumber;
  bool loadingMore;
  Bookmark? selectedBookmark;
  final GoRouter webViewRouter;

  FilteredBookmarksModel({
    this.filteredBookmarksMode = FilteredBookmarksMode.shared,
    this.tagId,
    this.tag,
    this.currentPage = 0,
    this.limit = ConfigOptions.listLimit,
    this.initialLoadStatus = LoadStatus.loading,
    required this.bookmarks,
    this.maxNumber = 0,
    this.loadingMore = false,
    this.selectedBookmark,
    required this.webViewRouter,
  });
}
