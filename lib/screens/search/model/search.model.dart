import 'package:flutter/material.dart';

class SearchModel {
  final TextEditingController searchController;
  String? searchTerm;

  SearchModel({
    required this.searchController,
    this.searchTerm = "",
  });
}
