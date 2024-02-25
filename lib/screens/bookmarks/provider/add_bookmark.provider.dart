import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/screens/bookmarks/provider/bookmarks.provider.dart';
import 'package:linkdy/screens/bookmarks/model/add_link.model.dart';

import 'package:linkdy/models/data/tags.dart';
import 'package:linkdy/utils/snackbar.dart';
import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/utils/process_modal.dart';
import 'package:linkdy/models/data/post_bookmark.dart';
import 'package:linkdy/providers/router_provider.dart';
import 'package:linkdy/constants/enums.dart';
import 'package:linkdy/constants/regexp.dart';
import 'package:linkdy/models/api_response.dart';
import 'package:linkdy/models/data/check_bookmark.dart';
import 'package:linkdy/providers/api_client_provider.dart';

part 'add_bookmark.provider.g.dart';

@riverpod
Future<ApiResponse<CheckBookmark>> checkBookmark(CheckBookmarkRef ref, String url) async {
  final result = await ref.watch(apiClientProvider)!.fetchCheckAddBookmark(url: url);
  return result;
}

@riverpod
FutureOr<ApiResponse<TagsResponse>> getTags(GetTagsRef ref) async {
  final result = await ref.watch(apiClientProvider)!.fetchTags();
  return result;
}

@riverpod
class AddBookmark extends _$AddBookmark {
  @override
  AddBookmarkModel build() {
    return AddBookmarkModel(
      urlController: TextEditingController(),
      titleController: TextEditingController(),
      descriptionController: TextEditingController(),
      tagsController: TextEditingController(),
      tags: [],
      notesController: TextEditingController(),
    );
  }

  void validateUrl(String value) {
    state.checkBookmark = null;
    state.checkBookmarkLoadStatus = null;
    if (Regexps.urlWithoutProtocol.hasMatch(value)) {
      state.urlError = null;
      ref.notifyListeners();
    } else {
      state.urlError = t.bookmarks.addBookmark.invalidUrl;
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

  void addBookmark() async {
    final newBookmark = PostBookmark(
      url: state.urlController.text,
      title: state.titleController.text != "" ? state.titleController.text : state.checkBookmark?.metadata?.title ?? '',
      description: state.descriptionController.text != ""
          ? state.descriptionController.text
          : state.checkBookmark?.metadata?.description ?? '',
      isArchived: false,
      unread: state.markAsUnread,
      shared: false,
      tagNames: state.tags.join(","),
    );

    final processModal = ProcessModal();
    processModal.open(t.bookmarks.addBookmark.savingBookmark);

    final result = await ref.watch(apiClientProvider)!.postBookmark(newBookmark);

    processModal.close();

    if (result.successful == true) {
      ref.read(bookmarksProvider.notifier).refresh();
      ref.watch(routerProvider).pop();
    } else {
      showSnacbkar(
        label: t.bookmarks.addBookmark.errorSavingBookmark,
        color: Colors.red,
      );
    }
  }

  void validateTagInput(String value) {
    if (value.contains(" ")) {
      state.tagsError = t.bookmarks.addBookmark.tagNoWhitespaces;
    } else {
      state.tagsError = null;
    }
    ref.notifyListeners();
  }

  void setTags(List<String> tags) {
    state.tags = tags;
    ref.notifyListeners();
  }

  void clearTagsController() {
    state.tagsController.clear();
    ref.notifyListeners();
  }
}
