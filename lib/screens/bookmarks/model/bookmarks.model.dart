import 'package:linkdy/config/options.dart';
import 'package:linkdy/constants/enums.dart';
import 'package:linkdy/models/data/bookmarks.dart';

class BookmarksModel {
  int currentPage;
  int limit;
  List<Bookmark> bookmarks;
  LoadStatus inialLoadStatus;
  bool loadingMore;
  int maxNumber;
  ReadStatus readStatus;

  BookmarksModel({
    this.currentPage = 0,
    this.limit = ConfigOptions.listLimit,
    required this.bookmarks,
    this.inialLoadStatus = LoadStatus.loading,
    this.loadingMore = false,
    this.maxNumber = 0,
    this.readStatus = ReadStatus.all,
  });
}
