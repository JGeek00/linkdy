import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:linkdy/screens/tags/ui/add_tag_error_modal.dart';
import 'package:linkdy/screens/tags/provider/tags.provider.dart';
import 'package:linkdy/screens/tags/models/add_tag.modal.dart';

import 'package:linkdy/router/routes.dart';
import 'package:linkdy/providers/api_client_provider.dart';
import 'package:linkdy/providers/router_provider.dart';
import 'package:linkdy/utils/process_modal.dart';
import 'package:linkdy/i18n/strings.g.dart';

part 'add_tag.provider.g.dart';

@riverpod
class AddTag extends _$AddTag {
  @override
  AddTagModel build() {
    return AddTagModel(
      nameController: TextEditingController(),
    );
  }

  void notifyOnWrite() {
    ref.notifyListeners();
  }

  void onAddTag() async {
    final processModal = ProcessModal();
    processModal.open(t.tags.createTag.creatingTag);

    final result = await ref.watch(apiClientProvider)!.postTag(state.nameController.text);

    processModal.close();
    if (result.successful == true) {
      ref.invalidate(tagsRequestProvider);
      ref.watch(routerProvider).pop();
    } else {
      if (rootNavigatorKey.currentContext == null) return;
      showDialog(
        context: rootNavigatorKey.currentContext!,
        builder: (context) => const AddTagErrorModal(),
      );
    }
  }
}
