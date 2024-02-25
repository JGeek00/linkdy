import 'package:flutter/material.dart';

import 'package:linkdy/constants/enums.dart';
import 'package:linkdy/models/data/bookmarks.dart';

class SearchBookmarksModel {
  final TextEditingController searchController;
  String? searchTerm;
  int currentPage;
  int limit;
  List<Bookmark> bookmarks;
  LoadStatus inialLoadStatus;
  bool loadingMore;
  int maxNumber;

  SearchBookmarksModel({
    required this.searchController,
    this.searchTerm = "",
    this.currentPage = 0,
    this.limit = 30,
    required this.bookmarks,
    this.inialLoadStatus = LoadStatus.loaded,
    this.loadingMore = false,
    this.maxNumber = 0,
  });
}
