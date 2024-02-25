import 'package:linkdy/constants/enums.dart';
import 'package:linkdy/models/data/bookmarks.dart';

class BookmarksModel {
  int currentPage;
  int limit;
  List<Bookmark> bookmarks;
  LoadStatus inialLoadStatus;
  bool loadingMore;
  int maxNumber;

  BookmarksModel({
    this.currentPage = 0,
    this.limit = 20,
    required this.bookmarks,
    this.inialLoadStatus = LoadStatus.loading,
    this.loadingMore = false,
    this.maxNumber = 0,
  });
}
