import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:linkdy/screens/tags/provider/add_tag.provider.dart';

import 'package:linkdy/i18n/strings.g.dart';

class AddTagModal extends ConsumerWidget {
  const AddTagModal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(addTagProvider);

    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(28),
            topRight: Radius.circular(28),
          ),
          color: Theme.of(context).dialogBackgroundColor,
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.add_rounded,
                        color: Theme.of(context).colorScheme.secondary,
                        size: 24,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        t.tags.createTag.createTag,
                        style: const TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(height: 24),
                      TextFormField(
                        controller: provider.nameController,
                        onChanged: (_) => ref.read(addTagProvider.notifier).notifyOnWrite(),
                        autocorrect: false,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.label_rounded),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          labelText: t.tags.createTag.name,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(t.generic.cancel),
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        onPressed: provider.nameController.text != ""
                            ? () => ref.read(addTagProvider.notifier).onAddTag()
                            : null,
                        child: Text(t.generic.confirm),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
