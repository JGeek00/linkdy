import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import 'package:linkdy/constants/enums.dart';
import 'package:linkdy/models/data/check_bookmark.dart';

class AddLinkModel {
  final TextEditingController urlController;
  String? urlError;
  CheckBookmark? checkBookmark;
  LoadStatus? checkBookmarkLoadStatus;
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  bool markAsUnread;
  final TextEditingController notesController;
  final ExpandableController expandableController;

  AddLinkModel({
    required this.urlController,
    this.urlError,
    this.checkBookmark,
    this.checkBookmarkLoadStatus,
    required this.titleController,
    required this.descriptionController,
    this.markAsUnread = false,
    required this.notesController,
    required this.expandableController,
  });
}
