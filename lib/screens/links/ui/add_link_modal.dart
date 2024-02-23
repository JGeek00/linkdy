import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:linkdy/screens/links/provider/add_link.provider.dart';
import 'package:linkdy/widgets/autocomplete_text_field.dart';
import 'package:linkdy/widgets/section_label.dart';

import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/constants/enums.dart';

class AddLinkModal extends ConsumerWidget {
  final bool fullscreen;

  const AddLinkModal({
    Key? key,
    required this.fullscreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dialog.fullscreen(
      child: Scaffold(
        appBar: AppBar(
          leading: CloseButton(
            onPressed: () => Navigator.pop(context),
          ),
          title: Text(t.links.addLink.addLink),
          actions: [
            IconButton(
              onPressed: ref.watch(addLinkProvider).checkBookmark != null
                  ? () => ref.read(addLinkProvider.notifier).addBookmark()
                  : null,
              icon: const Icon(Icons.save_rounded),
              tooltip: t.generic.save,
            ),
            const SizedBox(width: 8),
          ],
        ),
        body: const _ModalContent(),
      ),
    );
  }
}

class _ModalContent extends ConsumerWidget {
  const _ModalContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(addLinkProvider);

    return ListView(
      children: [
        const SizedBox(height: 16),
        SectionLabel(
          label: t.links.addLink.bookmarkUrl,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 0,
          ),
        ),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextFormField(
            controller: provider.urlController,
            onChanged: ref.read(addLinkProvider.notifier).validateUrl,
            enabled: provider.checkBookmarkLoadStatus != LoadStatus.loading,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.link_rounded),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              errorText: provider.urlError,
              labelText: t.links.addLink.url,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: ElevatedButton(
              onPressed: provider.checkBookmarkLoadStatus == null &&
                      provider.urlError == null &&
                      provider.urlController.text != ""
                  ? () => ref.read(addLinkProvider.notifier).checkUrlDetails()
                  : null,
              style: ButtonStyle(
                foregroundColor: provider.checkBookmarkLoadStatus == LoadStatus.loaded
                    ? const MaterialStatePropertyAll(Colors.green)
                    : provider.checkBookmarkLoadStatus == LoadStatus.loaded
                        ? const MaterialStatePropertyAll(Colors.red)
                        : null,
                backgroundColor: provider.checkBookmarkLoadStatus == LoadStatus.loaded
                    ? MaterialStatePropertyAll(Colors.green.withOpacity(0.15))
                    : provider.checkBookmarkLoadStatus == LoadStatus.loaded
                        ? MaterialStatePropertyAll(Colors.red.withOpacity(0.15))
                        : null,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (provider.checkBookmarkLoadStatus == null) Text(t.links.addLink.validateUrl),
                  if (provider.checkBookmarkLoadStatus == LoadStatus.loading) ...[
                    const SizedBox(
                      width: 12,
                      height: 12,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(t.links.addLink.checkingUrl),
                  ],
                  if (provider.checkBookmarkLoadStatus == LoadStatus.loaded) ...[
                    const Icon(Icons.check_circle_rounded),
                    const SizedBox(width: 8),
                    Text(t.links.addLink.urlValid),
                  ],
                  if (provider.checkBookmarkLoadStatus == LoadStatus.error) ...[
                    const Icon(Icons.error_rounded),
                    const SizedBox(width: 8),
                    Text(t.links.addLink.cannotCheckUrl),
                  ],
                ],
              ),
            ),
          ),
        ),
        SectionLabel(
          label: t.links.addLink.bookmarkDetails,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 24,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextFormField(
            controller: provider.titleController,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.title_rounded),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              labelText: t.links.addLink.title,
              hintText: provider.checkBookmark?.metadata?.title,
              floatingLabelBehavior:
                  provider.checkBookmark != null ? FloatingLabelBehavior.always : FloatingLabelBehavior.auto,
              helperText: t.links.addLink.leaveEmptyUseWebsiteTitle,
              enabled: provider.checkBookmark != null,
            ),
          ),
        ),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextFormField(
            controller: provider.descriptionController,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.description_rounded),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              labelText: t.links.addLink.description,
              hintText: provider.checkBookmark?.metadata?.description,
              floatingLabelBehavior:
                  provider.checkBookmark != null ? FloatingLabelBehavior.always : FloatingLabelBehavior.auto,
              helperText: t.links.addLink.leaveEmptyUseWebsiteDescription,
              enabled: provider.checkBookmark != null,
            ),
          ),
        ),
        SectionLabel(
          label: t.links.addLink.tags,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 24,
          ),
        ),
        SectionLabel(
          label: t.links.addLink.others,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 24,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            height: 150,
            child: TextFormField(
              controller: provider.notesController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.note_rounded),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                labelText: t.links.addLink.notes,
                helperText: t.generic.optional,
              ),
              autocorrect: false,
              expands: true,
              minLines: null,
              maxLines: null,
              textAlignVertical: TextAlignVertical.top,
              enabled: provider.checkBookmark != null,
            ),
          ),
        ),
        const SizedBox(height: 12),
        SwitchListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          title: Text(t.links.addLink.markAsUnread),
          value: provider.markAsUnread,
          onChanged:
              provider.checkBookmark != null ? (v) => ref.read(addLinkProvider.notifier).updateMarkAsUnread(v) : null,
        ),
      ],
    );
  }
}
