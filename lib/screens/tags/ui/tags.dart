import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linkdy/providers/router.provider.dart';
import 'package:linkdy/router/names.dart';

import 'package:linkdy/screens/tags/provider/tags.provider.dart';
import 'package:linkdy/screens/tags/ui/add_tag_modal.dart';
import 'package:linkdy/widgets/error_screen.dart';
import 'package:linkdy/widgets/no_data_screen.dart';
import 'package:linkdy/widgets/snackbar_fab.dart';

import 'package:linkdy/utils/date_to_string.dart';
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
      body: Stack(
        children: [
          NestedScrollView(
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
                      if (tags.value != null &&
                          tags.value!.successful == true &&
                          tags.value!.content!.results!.isNotEmpty)
                        SliverList.builder(
                          itemCount: tags.value!.content!.results!.length + 1,
                          itemBuilder: (context, index) {
                            // index == bookmarks.value!.content!.results!.length -> itemCount + 1
                            if (index == tags.value!.content!.results!.length) {
                              // Bottom gap for FAB
                              return const SizedBox(height: 80);
                            }
                            final tag = tags.value?.content?.results?[index];
                            return InkWell(
                              onTap: () => ref.watch(routerProvider).pushNamed(
                                RoutesNames.tagBookmarks,
                                extra: tag,
                                pathParameters: {'id': tag.id!.toString()},
                              ),
                              child: Container(
                                width: double.maxFinite,
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.label_rounded,
                                          size: 16,
                                          color: Theme.of(context).colorScheme.onSurfaceVariant.withOpacity(0.7),
                                        ),
                                        const SizedBox(width: 8),
                                        Flexible(
                                          child: Text(
                                            tag!.name!,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Theme.of(context).colorScheme.onSurface,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      t.tags.created(created: dateToString(tag.dateAdded!)),
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SnackbarFloatingActionButton(
            onPressed: openAddModal,
            child: const Icon(Icons.add_rounded),
          ),
        ],
      ),
    );
  }
}
