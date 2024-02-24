import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:linkdy/screens/search/provider/search.provider.dart';
import 'package:linkdy/screens/search/ui/error_search_list.dart';
import 'package:linkdy/screens/search/ui/input_search_term.dart';
import 'package:linkdy/screens/search/ui/search_no_data.dart';
import 'package:linkdy/widgets/sliver_tab_body.dart';

import 'package:linkdy/i18n/strings.g.dart';
import 'package:linkdy/utils/date_to_string.dart';

class TagsSearchList extends ConsumerWidget {
  const TagsSearchList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookmarksSearch = ref.watch(searchTagsProvider);

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
            onRefresh: () => ref.refresh(searchTagsProvider.future),
            child: SliverList.builder(
              itemCount: data.content!.results!.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(
                  data.content!.results![index].name!,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                subtitle: Text(
                  t.search.created(
                    created: dateToString(data.content!.results![index].dateAdded!),
                  ),
                ),
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
