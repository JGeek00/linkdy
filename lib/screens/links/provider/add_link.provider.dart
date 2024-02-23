import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/screens/links/model/add_link.model.dart';

import 'package:linkdy/constants/enums.dart';
import 'package:linkdy/constants/regexp.dart';
import 'package:linkdy/models/api_response.dart';
import 'package:linkdy/models/data/check_bookmark.dart';
import 'package:linkdy/providers/api_client_provider.dart';

part 'add_link.provider.g.dart';

@riverpod
Future<ApiResponse<CheckBookmark>> checkBookmark(CheckBookmarkRef ref, String url) async {
  final result = await ref.watch(apiClientProviderProvider)!.fetchCheckAddBookmark(url: url);
  return result;
}

@riverpod
class AddLink extends _$AddLink {
  @override
  AddLinkModel build() {
    return AddLinkModel(
      urlController: TextEditingController(),
      titleController: TextEditingController(),
      descriptionController: TextEditingController(),
      notesController: TextEditingController(),
      expandableController: ExpandableController(),
    );
  }

  void validateUrl(String value) {
    state.checkBookmark = null;
    state.checkBookmarkLoadStatus = null;
    if (Regexps.urlWithoutProtocol.hasMatch(value)) {
      state.urlError = null;
      ref.notifyListeners();
    } else {
      state.urlError = "Invalid URL";
      ref.notifyListeners();
    }
  }

  void checkUrlDetails() async {
    if (state.urlError == null && state.urlController.text != "") {
      state.checkBookmarkLoadStatus = LoadStatus.loading;
      state.checkBookmark = null;
      ref.notifyListeners();
      final result = await ref.read(checkBookmarkProvider(state.urlController.text).future);
      if (result.successful == true) {
        state.checkBookmark = result.content;
        state.checkBookmarkLoadStatus = LoadStatus.loaded;
      } else {
        state.checkBookmarkLoadStatus = LoadStatus.error;
      }
      ref.notifyListeners();
    }
  }

  void updateMarkAsUnread(bool value) {
    state.markAsUnread = value;
    ref.notifyListeners();
  }
}
