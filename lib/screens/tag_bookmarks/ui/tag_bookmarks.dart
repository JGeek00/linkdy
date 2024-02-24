import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:linkdy/screens/bookmarks/ui/bookmark_item.dart';
import 'package:linkdy/screens/tag_bookmarks/provider/tag_bookmarks.provider.dart';
import 'package:linkdy/widgets/error_screen.dart';
import 'package:linkdy/widgets/no_data_screen.dart';

import 'package:linkdy/models/api_response.dart';
import 'package:linkdy/models/data/bookmarks.dart';
import 'package:linkdy/models/data/tag_bookmarks.dart';
import 'package:linkdy/models/data/tags.dart';
import 'package:linkdy/providers/router_provider.dart';
import 'package:linkdy/router/paths.dart';
import 'package:linkdy/i18n/strings.g.dart';

class TagBookmarksScreen extends ConsumerWidget {
  final String? tagId;
  final Tag? tag;

  const TagBookmarksScreen({
    Key? key,
    required this.tagId,
    this.tag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Redirect to initial screen if no tagId or tag
    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (tag == null && tagId == null) {
        final router = ref.watch(routerProvider);
        while (router.canPop() == true) {
          router.pop();
        }
        router.pushReplacement(RoutesPaths.bookmarks);
      }
    });

    if (tag == null && tagId == null) return const Material();

    final bookmarksResponse =
        tag != null ? ref.watch(tagBookmarksRequestProvider(tag!)) : ref.watch(tagIdBookmarksRequestProvider(tagId!));

    final bookmarks = tag != null
        ? (bookmarksResponse.value as ApiResponse<BookmarksResponse>?)?.content
        : (bookmarksResponse.value as ApiResponse<TagBookmarksResponse?>?)?.content?.bookmarksResponse;

    final title = tag != null
        ? tag!.name!
        : ((bookmarksResponse.value as ApiResponse<TagBookmarksResponse?>?)?.content?.tag?.name ?? '');

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
              title: Text(title != "" ? "#$title" : ""),
            ),
          ),
        ],
        body: SafeArea(
          top: false,
          bottom: false,
          child: Builder(
            builder: (context) => RefreshIndicator(
              displacement: 120,
              onRefresh: () => tag != null
                  ? ref.watch(tagBookmarksRequestProvider(tag!).future)
                  : ref.watch(tagIdBookmarksRequestProvider(tagId!).future),
              child: CustomScrollView(
                slivers: [
                  SliverOverlapInjector(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  ),
                  if (bookmarksResponse.isLoading && !bookmarksResponse.isRefreshing)
                    const SliverFillRemaining(
                      child: Center(child: CircularProgressIndicator()),
                    ),
                  if (bookmarksResponse.value != null && bookmarksResponse.value!.successful == false)
                    SliverFillRemaining(
                      child: ErrorScreen(
                        error: t.bookmarks.cannotLoadBookmarks,
                      ),
                    ),
                  if (bookmarksResponse.value != null &&
                      bookmarksResponse.value!.successful == true &&
                      bookmarks!.results!.isEmpty)
                    SliverFillRemaining(
                      child: NoDataScreen(
                        message: t.tags.tagBookmarks.noBookmarksWithThisTag,
                      ),
                    ),
                  if (bookmarksResponse.value != null &&
                      bookmarksResponse.value!.successful == true &&
                      bookmarks!.results!.isNotEmpty)
                    SliverList.builder(
                      itemCount: bookmarks.results!.length,
                      itemBuilder: (context, index) => BookmarkItem(
                        bookmark: bookmarks.results![index],
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
