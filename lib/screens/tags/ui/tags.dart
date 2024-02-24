import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:linkdy/screens/tags/provider/tags.provider.dart';
import 'package:linkdy/screens/tags/ui/add_tag_modal.dart';
import 'package:linkdy/utils/date_to_string.dart';
import 'package:linkdy/widgets/error_screen.dart';
import 'package:linkdy/widgets/no_data_screen.dart';

import 'package:linkdy/i18n/strings.g.dart';

class TagsScreen extends ConsumerWidget {
  const TagsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tags = ref.watch(tagsRequestProvider);

    void openAddModal() {
      showModalBottomSheet(
        context: context,
        useRootNavigator: true,
        isScrollControlled: true,
        builder: (context) => const AddTagModal(),
      );
    }

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            sliver: SliverAppBar.large(
              pinned: true,
              floating: true,
              centerTitle: false,
              forceElevated: innerBoxIsScrolled,
              title: Text(t.tags.tags),
            ),
          ),
        ],
        body: SafeArea(
          top: false,
          bottom: false,
          child: Builder(
            builder: (context) => RefreshIndicator(
              displacement: 120,
              onRefresh: () => ref.refresh(tagsRequestProvider.future),
              child: CustomScrollView(
                slivers: [
                  SliverOverlapInjector(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  ),
                  if (tags.isLoading && !tags.isRefreshing)
                    const SliverFillRemaining(
                      child: Center(child: CircularProgressIndicator()),
                    ),
                  if (tags.value != null && tags.value!.successful == false)
                    SliverFillRemaining(
                      child: ErrorScreen(
                        error: t.bookmarks.cannotLoadBookmarks,
                      ),
                    ),
                  if (tags.value != null && tags.value!.successful == true && tags.value!.content!.results!.isEmpty)
                    SliverFillRemaining(
                      child: NoDataScreen(
                        message: t.bookmarks.noBookmarksAdded,
                      ),
                    ),
                  if (tags.value != null && tags.value!.successful == true && tags.value!.content!.results!.isNotEmpty)
                    SliverList.builder(
                      itemCount: tags.value!.content!.results!.length + 1,
                      itemBuilder: (context, index) {
                        // index == bookmarks.value!.content!.results!.length -> itemCount + 1
                        if (index == tags.value!.content!.results!.length) {
                          // Bottom gap for FAB
                          return const SizedBox(height: 80);
                        }
                        final tag = tags.value?.content?.results?[index];
                        return Column(
                          children: [
                            ListTile(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                              dense: true,
                              title: Text(
                                tag!.name!,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context).colorScheme.onSurface,
                                ),
                              ),
                              subtitle: Text(
                                t.tags.created(created: dateToString(tag.dateAdded!)),
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                                ),
                              ),
                            ),
                            if (index < tags.value!.content!.results!.length - 1)
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: Divider(
                                  color: Theme.of(context).colorScheme.tertiary.withOpacity(0.3),
                                ),
                              ),
                          ],
                        );
                      },
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: openAddModal,
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
