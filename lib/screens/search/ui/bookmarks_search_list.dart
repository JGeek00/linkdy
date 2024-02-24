import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:linkdy/screens/search/ui/error_search_list.dart';
import 'package:linkdy/screens/search/ui/input_search_term.dart';
import 'package:linkdy/screens/links/ui/link_item.dart';
import 'package:linkdy/screens/search/provider/search.provider.dart';
import 'package:linkdy/screens/search/ui/search_no_data.dart';
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
          return const SliverTabBody(
            child: SliverFillRemaining(
              child: Center(
                child: Icon(Icons.error_rounded),
              ),
            ),
          );
        } else if (data.content!.results!.isEmpty) {
          return const SliverTabBody(
            child: SliverFillRemaining(
              child: SearchNoData(),
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
      error: (error, stackTrace) => const SliverTabBody(
        child: SliverFillRemaining(
          child: Center(
            child: ErrorSearchList(),
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
