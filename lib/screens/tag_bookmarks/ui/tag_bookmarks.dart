import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:linkdy/screens/bookmarks/ui/bookmark_item.dart';
import 'package:linkdy/screens/tag_bookmarks/provider/tag_bookmarks.provider.dart';
import 'package:linkdy/widgets/error_screen.dart';
import 'package:linkdy/widgets/no_data_screen.dart';

import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/models/data/tags.dart';

class TagBookmarksScreen extends ConsumerWidget {
  final Tag tag;

  const TagBookmarksScreen({
    Key? key,
    required this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookmarks = ref.watch(tagBookmarksRequestProvider(tag.name!));

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
              title: Text(tag.name!),
            ),
          ),
        ],
        body: SafeArea(
          top: false,
          bottom: false,
          child: Builder(
            builder: (context) => RefreshIndicator(
              displacement: 120,
              onRefresh: () => ref.refresh(tagBookmarksRequestProvider(tag.name!).future),
              child: CustomScrollView(
                slivers: [
                  SliverOverlapInjector(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  ),
                  if (bookmarks.isLoading && !bookmarks.isRefreshing)
                    const SliverFillRemaining(
                      child: Center(child: CircularProgressIndicator()),
                    ),
                  if (bookmarks.value != null && bookmarks.value!.successful == false)
                    SliverFillRemaining(
                      child: ErrorScreen(
                        error: t.bookmarks.cannotLoadBookmarks,
                      ),
                    ),
                  if (bookmarks.value != null &&
                      bookmarks.value!.successful == true &&
                      bookmarks.value!.content!.results!.isEmpty)
                    SliverFillRemaining(
                      child: NoDataScreen(
                        message: t.tags.tagBookmarks.noBookmarksWithThisTag,
                      ),
                    ),
                  if (bookmarks.value != null &&
                      bookmarks.value!.successful == true &&
                      bookmarks.value!.content!.results!.isNotEmpty)
                    SliverList.builder(
                      itemCount: bookmarks.value!.content!.results!.length,
                      itemBuilder: (context, index) => BookmarkItem(
                        bookmark: bookmarks.value!.content!.results![index],
                      ),
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
