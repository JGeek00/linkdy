import 'package:flutter/material.dart';

import 'package:linkdy/constants/enums.dart';

class BookmarkFormModel {
  final TextEditingController urlController;
  String? urlError;
  bool? bookmarkValid;
  LoadStatus? checkBookmarkLoadStatus;
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  bool markAsUnread;
  final TextEditingController tagsController;
  String? tagsError;
  List<String> tags;
  final TextEditingController notesController;
  int? editBookmarkId;
  bool share;
  bool bookmarkExists = false;

  BookmarkFormModel({
    required this.urlController,
    this.urlError,
    this.bookmarkValid,
    this.checkBookmarkLoadStatus,
    required this.titleController,
    required this.descriptionController,
    this.markAsUnread = false,
    required this.tagsController,
    this.tagsError,
    required this.tags,
    required this.notesController,
    this.editBookmarkId,
    this.share = false,
  });
}
