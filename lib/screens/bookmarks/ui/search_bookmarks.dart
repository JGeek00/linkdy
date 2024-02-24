import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:linkdy/screens/bookmarks/provider/search_bookmarks.provider.dart';
import 'package:linkdy/screens/bookmarks/ui/bookmark_item.dart';
import 'package:linkdy/widgets/error_screen.dart';
import 'package:linkdy/widgets/no_data_screen.dart';

import 'package:linkdy/providers/router_provider.dart';

import 'package:linkdy/i18n/strings.g.dart';

class SearchBookmarksScreen extends ConsumerWidget {
  const SearchBookmarksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 68,
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: BackButton(
            onPressed: () => ref.watch(routerProvider).pop(),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: TextFormField(
              controller: ref.watch(searchBookmarksProvider).searchController,
              onChanged: ref.read(searchBookmarksProvider.notifier).setSearchTerm,
              decoration: InputDecoration(
                hintText: t.search.search,
                prefixIcon: const Icon(Icons.search_rounded),
                border: InputBorder.none,
                filled: true,
                fillColor: Colors.grey.withOpacity(0.2),
                suffixIcon: ref.watch(searchBookmarksProvider).searchController.text != ""
                    ? IconButton(
                        onPressed: ref.read(searchBookmarksProvider.notifier).clearSearch,
                        icon: const Icon(
                          Icons.close_rounded,
                          size: 20,
                        ),
                        tooltip: t.search.clearSearch,
                      )
                    : null,
              ),
              textInputAction: TextInputAction.search,
            ),
          ),
        ),
      ),
      body: Builder(
        builder: (context) {
          if (ref.watch(searchBookmarksProvider).searchTerm == "") {
            return NoDataScreen(message: t.bookmarks.search.inputSearchTerm);
          }

          return ref.watch(fetchSearchBookmarksProvider).when(
                data: (data) {
                  if (data == null || data.successful == false) {
                    return ErrorScreen(
                      error: t.bookmarks.search.cannotSearchError,
                    );
                  } else {
                    return ListView.builder(
                      itemCount: data.content!.results!.length,
                      itemBuilder: (context, index) => BookmarkItem(
                        bookmark: data.content!.results![index],
                      ),
                    );
                  }
                },
                error: (error, stackTrace) => ErrorScreen(
                  error: t.bookmarks.search.cannotSearchError,
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
              );
        },
      ),
    );
  }
}
