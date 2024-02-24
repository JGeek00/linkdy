import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linkdy/i18n/strings.g.dart';

import 'package:linkdy/screens/search/ui/input_search_term.dart';
import 'package:linkdy/screens/bookmarks/ui/bookmark_item.dart';
import 'package:linkdy/screens/search/provider/search.provider.dart';
import 'package:linkdy/widgets/error_screen.dart';
import 'package:linkdy/widgets/no_data_screen.dart';
import 'package:linkdy/widgets/sliver_tab_body.dart';

class BookmarksSearchList extends ConsumerWidget {
  const BookmarksSearchList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookmarksSearch = ref.watch(searchBookmarksProvider);

    if (ref.watch(searchProvider).searchTerm == "") {
      return const SliverTabBody(
        child: SliverFillRemaining(
          child: InputSearchTerm(),
        ),
      );
    }

    return bookmarksSearch.when(
      data: (data) {
        if (data!.successful == false) {
          return SliverTabBody(
            child: SliverFillRemaining(
              child: ErrorScreen(
                error: t.search.cannotSearchError,
              ),
            ),
          );
        } else if (data.content!.results!.isEmpty) {
          return SliverTabBody(
            child: SliverFillRemaining(
              child: NoDataScreen(
                message: t.search.inputtedSearchTermNoResults,
              ),
            ),
          );
        } else {
          return SliverTabBodyRefresh(
            onRefresh: () => ref.refresh(searchBookmarksProvider.future),
            child: SliverList.builder(
              itemCount: data.content!.results!.length,
              itemBuilder: (context, index) => LinkItem(
                bookmark: data.content!.results![index],
              ),
            ),
          );
        }
      },
      error: (error, stackTrace) => SliverTabBody(
        child: SliverFillRemaining(
          child: ErrorScreen(
            error: t.search.cannotSearchError,
          ),
        ),
      ),
      loading: () => const SliverTabBody(
        child: SliverFillRemaining(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
