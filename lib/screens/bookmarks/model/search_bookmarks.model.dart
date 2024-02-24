import 'package:flutter/material.dart';

class SearchBookmarksModel {
  final TextEditingController searchController;
  String? searchTerm;

  SearchBookmarksModel({
    required this.searchController,
    this.searchTerm = "",
  });
}
