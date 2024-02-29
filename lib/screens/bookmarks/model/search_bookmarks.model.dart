import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:linkdy/config/options.dart';
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
  Bookmark? selectedBookmark;
  final GoRouter webViewRouter;

  SearchBookmarksModel({
    required this.searchController,
    this.searchTerm = "",
    this.currentPage = 0,
    this.limit = ConfigOptions.listLimit,
    required this.bookmarks,
    this.inialLoadStatus = LoadStatus.loaded,
    this.loadingMore = false,
    this.maxNumber = 0,
    this.selectedBookmark,
    required this.webViewRouter,
  });
}
