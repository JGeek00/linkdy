import 'package:linkdy/constants/enums.dart';
import 'package:linkdy/models/data/bookmarks.dart';
import 'package:linkdy/models/data/tags.dart';

class TagBookmarksModel {
  String? tagId;
  Tag? tag;
  int currentPage;
  int limit;
  LoadStatus initialLoadStatus;
  List<Bookmark> bookmarks;
  int maxNumber;
  bool loadingMore;

  TagBookmarksModel({
    this.tagId,
    this.tag,
    this.currentPage = 0,
    this.limit = 30,
    this.initialLoadStatus = LoadStatus.loading,
    required this.bookmarks,
    this.maxNumber = 0,
    this.loadingMore = false,
  });
}
