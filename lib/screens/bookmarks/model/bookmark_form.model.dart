import 'package:flutter/material.dart';

import 'package:linkdy/constants/enums.dart';
import 'package:linkdy/models/data/check_bookmark.dart';

class BookmarkFormModel {
  final TextEditingController urlController;
  String? urlError;
  CheckBookmark? checkBookmark;
  LoadStatus? checkBookmarkLoadStatus;
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  bool markAsUnread;
  final TextEditingController tagsController;
  String? tagsError;
  List<String> tags;
  final TextEditingController notesController;
  int? editBookmarkId;

  BookmarkFormModel({
    required this.urlController,
    this.urlError,
    this.checkBookmark,
    this.checkBookmarkLoadStatus,
    required this.titleController,
    required this.descriptionController,
    this.markAsUnread = false,
    required this.tagsController,
    this.tagsError,
    required this.tags,
    required this.notesController,
    this.editBookmarkId,
  });
}
