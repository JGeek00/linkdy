import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_autocomplete/easy_autocomplete.dart';

import 'package:linkdy/screens/bookmarks/provider/add_bookmark.provider.dart';
import 'package:linkdy/widgets/section_label.dart';

import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/constants/enums.dart';

class AddBookmarkModal extends ConsumerWidget {
  final bool fullscreen;

  const AddBookmarkModal({
    Key? key,
    required this.fullscreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dialog.fullscreen(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverAppBar.large(
                pinned: true,
                floating: true,
                centerTitle: false,
                forceElevated: innerBoxIsScrolled,
                leading: CloseButton(
                  onPressed: () => Navigator.pop(context),
                ),
                title: Text(t.bookmarks.addBookmark.addBookmark),
                actions: [
                  IconButton(
                    onPressed: ref.watch(addBookmarkProvider).checkBookmark != null
                        ? () => ref.read(addBookmarkProvider.notifier).addBookmark()
                        : null,
                    icon: const Icon(Icons.save_rounded),
                    tooltip: t.generic.save,
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ),
          ],
          body: SafeArea(
            top: false,
            bottom: true,
            child: Builder(
              builder: (context) => CustomScrollView(
                slivers: [
                  SliverOverlapInjector(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  ),
                  SliverList.list(
                    children: const [
                      _ModalContent(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ModalContent extends ConsumerWidget {
  const _ModalContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(addBookmarkProvider);

    final tags = ref.watch(getTagsProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        SectionLabel(
          label: t.bookmarks.addBookmark.bookmarkUrl,
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
            onChanged: ref.read(addBookmarkProvider.notifier).validateUrl,
            enabled: provider.checkBookmarkLoadStatus != LoadStatus.loading,
            autocorrect: false,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.link_rounded),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              errorText: provider.urlError,
              labelText: t.bookmarks.addBookmark.url,
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
                  ? () => ref.read(addBookmarkProvider.notifier).checkUrlDetails()
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
                  if (provider.checkBookmarkLoadStatus == null) Text(t.bookmarks.addBookmark.validateUrl),
                  if (provider.checkBookmarkLoadStatus == LoadStatus.loading) ...[
                    const SizedBox(
                      width: 12,
                      height: 12,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(t.bookmarks.addBookmark.checkingUrl),
                  ],
                  if (provider.checkBookmarkLoadStatus == LoadStatus.loaded) ...[
                    const Icon(Icons.check_circle_rounded),
                    const SizedBox(width: 8),
                    Text(t.bookmarks.addBookmark.urlValid),
                  ],
                  if (provider.checkBookmarkLoadStatus == LoadStatus.error) ...[
                    const Icon(Icons.error_rounded),
                    const SizedBox(width: 8),
                    Text(t.bookmarks.addBookmark.cannotCheckUrl),
                  ],
                ],
              ),
            ),
          ),
        ),
        SectionLabel(
          label: t.bookmarks.addBookmark.bookmarkDetails,
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
              labelText: t.bookmarks.addBookmark.title,
              hintText: provider.checkBookmark?.metadata?.title,
              floatingLabelBehavior:
                  provider.checkBookmark != null ? FloatingLabelBehavior.always : FloatingLabelBehavior.auto,
              helperText: t.bookmarks.addBookmark.leaveEmptyUseWebsiteTitle,
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
              labelText: t.bookmarks.addBookmark.description,
              hintText: provider.checkBookmark?.metadata?.description,
              floatingLabelBehavior:
                  provider.checkBookmark != null ? FloatingLabelBehavior.always : FloatingLabelBehavior.auto,
              helperText: t.bookmarks.addBookmark.leaveEmptyUseWebsiteDescription,
              enabled: provider.checkBookmark != null,
            ),
          ),
        ),
        SectionLabel(
          label: t.bookmarks.addBookmark.tags,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 24,
          ),
        ),
        if (tags.isLoading == false)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                if (provider.checkBookmark != null)
                  Row(
                    children: [
                      Expanded(
                        child: EasyAutocomplete(
                          controller: provider.tagsController,
                          onChanged: ref.read(addBookmarkProvider.notifier).validateTagInput,
                          suggestions: tags.value?.content?.results?.map((t) => t.name!).toList() ?? [],
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            labelText: t.bookmarks.addBookmark.tags,
                            errorText: provider.tagsError,
                          ),
                          suggestionBuilder: (data) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            child: Text(
                              data,
                              style: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.onSurfaceVariant),
                            ),
                          ),
                          onSubmitted: provider.tagsController.text != "" && provider.tagsError == null
                              ? (v) {
                                  ref.read(addBookmarkProvider.notifier).setTags([...provider.tags, v]);
                                  ref.read(addBookmarkProvider.notifier).clearTagsController();
                                }
                              : null,
                        ),
                      ),
                      const SizedBox(width: 16),
                      IconButton(
                        onPressed: provider.tagsController.text != "" && provider.tagsError == null
                            ? () {
                                ref
                                    .read(addBookmarkProvider.notifier)
                                    .setTags([...provider.tags, provider.tagsController.text]);
                                ref.read(addBookmarkProvider.notifier).clearTagsController();
                              }
                            : null,
                        icon: const Icon(Icons.check_rounded),
                        tooltip: t.bookmarks.addBookmark.addTag,
                      ),
                    ],
                  ),
                if (provider.checkBookmark != null) const SizedBox(height: 16),
                SizedBox(
                  height: 40,
                  child: provider.tags.isNotEmpty
                      ? ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: provider.tags.length,
                          separatorBuilder: (context, index) => const SizedBox(width: 8),
                          itemBuilder: (context, index) => InputChip(
                            label: Text(provider.tags[index]),
                            onDeleted: () => ref
                                .read(addBookmarkProvider.notifier)
                                .setTags(provider.tags.where((tag) => tag != provider.tags[index]).toList()),
                          ),
                        )
                      : Center(
                          child: Text(
                            t.bookmarks.addBookmark.noTagsAdded,
                            style: TextStyle(
                              fontSize: 16,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ),
                ),
              ],
            ),
          ),
        SectionLabel(
          label: t.bookmarks.addBookmark.others,
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
                labelText: t.bookmarks.addBookmark.notes,
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
          title: Text(t.bookmarks.addBookmark.markAsUnread),
          value: provider.markAsUnread,
          onChanged: provider.checkBookmark != null
              ? (v) => ref.read(addBookmarkProvider.notifier).updateMarkAsUnread(v)
              : null,
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
